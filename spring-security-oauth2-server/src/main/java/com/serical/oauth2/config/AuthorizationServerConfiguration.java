package com.serical.oauth2.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.core.AuthorizationGrantType;

@Configuration
@EnableAuthorizationServer
public class AuthorizationServerConfiguration extends AuthorizationServerConfigurerAdapter {

    @Autowired
    private Oauth2ServerConfig oauth2ServerConfig;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
        clients.inMemory()
                .withClient(oauth2ServerConfig.getClientId()).secret(encoder.encode(oauth2ServerConfig.getClientSecret()))
                .authorizedGrantTypes(AuthorizationGrantType.AUTHORIZATION_CODE.getValue())
                .scopes("aaa")
                .redirectUris("https://sonovel.cc");
    }
}
