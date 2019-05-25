package com.serical.oauth2;

import com.serical.oauth2.config.Oauth2ServerConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties(Oauth2ServerConfig.class)
public class SpringSecurityOauth2ServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringSecurityOauth2ServerApplication.class, args);
    }

}
