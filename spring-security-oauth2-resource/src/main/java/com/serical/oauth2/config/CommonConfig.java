package com.serical.oauth2.config;

import org.hashids.Hashids;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CommonConfig {

    @Bean
    Hashids hashids() {
        return new Hashids("zI2lznGU8xi8BuRXmU5fM5xgAC2c3oeiyTrwgLfaiZ8=");
    }
}
