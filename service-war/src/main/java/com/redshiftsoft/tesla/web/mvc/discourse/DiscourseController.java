package com.redshiftsoft.tesla.web.mvc.discourse;

import com.google.common.base.Joiner;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hashing;
import com.google.common.io.BaseEncoding;
import com.redshiftsoft.tesla.dao.user.User;
import com.redshiftsoft.tesla.web.filter.Security;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Optional;
import java.util.logging.Logger;

import static com.redshiftsoft.util.StringTools.toUTF8BytesFromString;

/**
 * https://meta.discourse.org/t/official-single-sign-on-for-discourse-sso/13045
 */
@SuppressWarnings("UnstableApiUsage")
@Controller
@RequestMapping("/discourse")
public class DiscourseController {


    private static final Logger LOG = Logger.getLogger(DiscourseController.class.getName());
    private static final BaseEncoding BASE_64 = BaseEncoding.base64();
    private static final Joiner COMMA_JOINER = Joiner.on(",");

    private final String DISCOURSE_SSO_URL;
    private final String SUPERCHARGE_SIGN_IN;
    private final String SUPERCHARGE_VERIFY;
    private final HashFunction HMAC_SHA_256;

    public DiscourseController(@Value("${discourse.sso.secret}") String ssoSecret,
                               @Value("${discourse.url}") String forumBaseUrl) {
        String S = "https://supercharge.info";
        HMAC_SHA_256 = Hashing.hmacSha256(toUTF8BytesFromString(ssoSecret));
        DISCOURSE_SSO_URL = forumBaseUrl + "/session/sso_login";
        SUPERCHARGE_SIGN_IN = S + "/changes?sign-in=true&sign-in-redirect=" + forumBaseUrl + "/session/sso?return_path=%2F";
        SUPERCHARGE_VERIFY = S + "/profile?email-verify-required=true";
    }

    @RequestMapping(value = "/sso", method = RequestMethod.GET)
    public String sso(@RequestParam("sso") String payloadInBase64,
                      @RequestParam("sig") String signatureInHex) {

        if (!verifySignatureIn(payloadInBase64, signatureInHex)) {
            LOG.warning("INVALID input-signature: ");
            return "";
        }

        LOG.info("***** input-signature OK");
        String payloadIn = new String(BASE_64.decode(payloadInBase64.trim()), StandardCharsets.UTF_8);

        LOG.info("***** payloadIn = " + payloadIn);
        Optional<User> userOption = Security.userOption();

        if (userOption.isEmpty()) {
            LOG.severe("***** no user logged in, redirecting");
            return "redirect:" + SUPERCHARGE_SIGN_IN;
        }

        User user = userOption.get();
        if (!user.isEmailVerified()) {
            LOG.severe("***** email not verified for user = " + user + ", redirecting.");
            return "redirect: " + SUPERCHARGE_VERIFY;
        }

        LOG.info("***** user = " + user.getUsername());
        StringBuilder payloadOut = generatePayload(payloadIn, user);
        LOG.info("***** payloadOut = " + payloadOut);
        String redirectURL = generateRedirectURL(payloadOut);
        LOG.info("***** redirectURL = " + redirectURL);
        return "redirect:" + redirectURL;
    }

    private String generateRedirectURL(StringBuilder payloadOut) {
        String payloadOutBase64 = BASE_64.encode(toUTF8BytesFromString(payloadOut.toString()));
        String payloadOutUrlEncoded = URLEncoder.encode(payloadOutBase64, StandardCharsets.UTF_8);
        String signatureOutHex = HMAC_SHA_256.hashBytes(payloadOutBase64.getBytes()).toString();
        return DISCOURSE_SSO_URL + "?sso=" + payloadOutUrlEncoded + "&" + "sig=" + signatureOutHex;
    }

    /**
     * On the *groups* parameters:
     * <p>
     * (1) groups
     * (2) add_groups
     * (3) remove_groups
     * <p>
     * It looks like (2) and (3) work regardless of settings, while (1) only works (setting groups to the exact set
     * specified) if the setting "sso overrides groups" is enabled.
     */
    @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
    private static StringBuilder generatePayload(String payloadIn, User user) {
        StringBuilder payloadOut = new StringBuilder(256);
        payloadOut.append(payloadIn);
        payloadOut.append('&');
        payloadOut.append("username=" + URLEncoder.encode(user.getUsername()));
        payloadOut.append('&');
        payloadOut.append("email=" + URLEncoder.encode(user.getEmail()));
        payloadOut.append('&');
        payloadOut.append("external_id=" + user.getId());
        payloadOut.append('&');
        payloadOut.append("suppress_welcome_message=true");
        payloadOut.append('&');
        payloadOut.append("admin=" + user.hasRole("admin"));
        payloadOut.append('&');
        // "editor" group is called "editors" on forum.
        payloadOut.append("groups=" + COMMA_JOINER.join(user.getRoles()).replace("editor", "editors"));
        payloadOut.append('&');
        payloadOut.append("bio=" + URLEncoder.encode(user.getDescription()));

        return payloadOut;
    }

    private boolean verifySignatureIn(String payLoadInBase64, String signatureInHex) {
        HashCode hcCalculated = HMAC_SHA_256.hashString(payLoadInBase64, StandardCharsets.UTF_8);
        HashCode hcPassed = HashCode.fromString(signatureInHex);
        /* this equals method uses a constant-time (not short-circuiting) implementation to protect against timing attacks */
        return hcCalculated.equals(hcPassed);
    }

}
