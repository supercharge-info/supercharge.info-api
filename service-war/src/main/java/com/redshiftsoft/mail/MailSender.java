package com.redshiftsoft.mail;

import com.redshiftsoft.tesla.web.mvc.userconfig.UserConfigFromDTOFunction;

import javax.annotation.PreDestroy;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MailSender {

    private static final Logger LOG = Logger.getLogger(UserConfigFromDTOFunction.class.getName());

    private final LinkedBlockingQueue<Email> mailQueue;
    private final MailClient mailClient;
    private final ExecutorService mailExecutor;

    public MailSender(MailClientConfig mailConfig) {
        this.mailQueue = new LinkedBlockingQueue<>();
        this.mailClient = new MailClient(mailConfig);
        this.mailExecutor = Executors.newSingleThreadExecutor();

        this.mailExecutor.execute(new MailSenderRunnable());
    }

    /**
     * Asynchronous.
     */
    public void sendMail(Email email) {
        mailQueue.add(email);
    }

    @PreDestroy
    public void shutdown() {
        this.mailExecutor.shutdown();
    }

    private class MailSenderRunnable implements Runnable {

        @Override
        public void run() {
            //noinspection InfiniteLoopStatement
            while (true) {
                Email email = null;
                try {
                    email = mailQueue.take();
                    LOG.info("Sending mail, queue size=" + mailQueue.size());
                    mailClient.sendMail(email);
                } catch (MailException e) {
                    mailQueue.add(email);
                    try {
                        Thread.sleep(60 * 1000);
                    } catch (InterruptedException interruptedException) {
                        interruptedException.printStackTrace();
                    }
                } catch (InterruptedException e) {
                    LOG.log(Level.SEVERE, "did not expect to be interrupted", e);
                }
            }

        }

    }
}
