package launch;

import kdw.common.system.file.FileIO;
import kdw.common.thread.ThreadUtils;
import org.apache.catalina.LifecycleException;
import org.apache.catalina.connector.Connector;
import org.apache.catalina.startup.Tomcat;
import org.apache.tomcat.util.net.SSLHostConfig;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;

public class TomcatLauncher {

    public static final int CODE_OK = 200;
    public static final int CODE_REDIRECT = 302;
    public static final int CODE_BAD_REQUEST = 400;
    public static final int CODE_UNAUTHORIZED = 401;
    public static final int CODE_FORBIDDEN = 403;
    public static final int CODE_NOT_FOUND = 404;

    public static final String URL_BASE = "https://localhost:9191";
    public static final String URL_SERVICE = "https://localhost:9191/service";
    public static final String URL_MVC = "https://localhost:9191/service/supercharge";

    public static final String T_JSON = "application/json;charset=UTF-8";
    public static final String T_HTML = "text/html";
    public static final String T_HTML_UTF8 = "text/html;charset=utf-8";
    public static final String T_NONE = "";

    private static Tomcat tomcat;

    private static Thread countDownThread;

    public synchronized static void start() {
        if (countDownThread != null) {
            countDownThread.interrupt();
            countDownThread = null;
        }
        if (tomcat == null) {
            try {
                doStart();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public synchronized static void stop() {
        countDownThread = new Thread(() -> {
            ThreadUtils.sleep(1000);
            if (!Thread.currentThread().isInterrupted())
                realStop();
        });
    }

    public synchronized static void realStop() {
        try {
            tomcat.stop();
        } catch (LifecycleException e) {
            e.printStackTrace();
        }
    }

    private static void doStart() throws Exception {

        //
        // Find a WAR to run.
        //
        Optional<Path> warPath = Files.find(Paths.get("../service-war/target"), 4, (path, a) -> path.endsWith("web.xml")).findFirst();

        //
        // Create a place to unzip it.
        //
        Path catalinaBasePath = Files.createTempDirectory("catalinaBase");
        File catalinaBaseFile = catalinaBasePath.toFile();
        File webAppsDir = new File(catalinaBaseFile, "webapps");
        System.setProperty("catalina.base", catalinaBaseFile.getAbsolutePath());

        File explodedWarDir;
        if (warPath.isPresent() && webAppsDir.mkdirs()) {
            explodedWarDir = warPath.get().getParent().getParent().toFile();
            System.out.println("WAR DIR      : " + explodedWarDir);
            System.out.println("catalina.base: " + catalinaBasePath);
        } else {
            throw new IllegalStateException("could not find war or create tempt dir");
        }

        tomcat = new Tomcat();
        tomcat.setConnector(getSslConnector());
        tomcat.addWebapp("/service", explodedWarDir.getAbsolutePath());

        tomcat.start();

        new Thread(() -> {
            tomcat.getServer().await();
            System.out.println("STOP CALLED");
            FileIO.deleteDirectory(catalinaBaseFile);
        }).start();

    }

    private static Connector getSslConnector() {
        Connector connector = new Connector();
        connector.setPort(9191);
        connector.setSecure(true);
        connector.setScheme("https");
        connector.setProperty("clientAuth", "false");
        connector.setProperty("protocol", "HTTP/1.1");
        connector.setProperty("sslProtocol", "TLS");
        connector.setProperty("maxThreads", "20");
        connector.setProperty("protocol", "org.apache.coyote.http11.Http11AprProtocol");
        connector.setProperty("SSLEnabled", "true");

        SSLHostConfig config = connector.getProtocolHandler().findSslHostConfigs()[0];
        config.setCertificateFile(Paths.get("src/main/resources/certificate.pem").toFile().getAbsolutePath());
        config.setCertificateKeyFile(Paths.get("src/main/resources/key.pem").toFile().getAbsolutePath());
        return connector;
    }
}