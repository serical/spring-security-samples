package com.serical.oauth2;

import com.serical.oauth2.config.Oauth2ServerConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@EnableConfigurationProperties(Oauth2ServerConfig.class)
@MapperScan(basePackages = "com.serical.oauth2.mapper")
public class SpringSecurityOauth2ServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringSecurityOauth2ServerApplication.class, args);
    }

}
