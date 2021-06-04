package com.redshiftsoft.tesla.web.mvc.userlogin;

import com.google.common.io.BaseEncoding;
import com.redshiftsoft.util.RandomUtils;
import org.junit.Test;

public class LoginCookie_UT {

    @Test
    public void test() {
        byte[] salt16 = RandomUtils.secure().getBytes(16);
        byte[] salt32 = RandomUtils.secure().getBytes(32);

        System.out.println(BaseEncoding.base16().encode(salt16));
        System.out.println(BaseEncoding.base64().encode(salt16));

        System.out.println(BaseEncoding.base16().encode(salt32));
        System.out.println(BaseEncoding.base64().encode(salt32));
    }

}