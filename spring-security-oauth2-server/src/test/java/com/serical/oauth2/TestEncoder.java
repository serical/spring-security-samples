package com.serical.oauth2;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class TestEncoder {

    @Test
    public void testSecret() {
        String encode = new BCryptPasswordEncoder().encode("6XJKxWWHy9KU");
        System.out.println(encode);
    }

    @Test
    public void testPassword() {
        String encode = new BCryptPasswordEncoder().encode("123456");
        System.out.println(encode);
    }
}
