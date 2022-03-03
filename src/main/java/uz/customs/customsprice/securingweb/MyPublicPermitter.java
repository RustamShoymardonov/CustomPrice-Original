package uz.customs.customsprice.securingweb;

import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;

public class MyPublicPermitter implements WebSecurityCustomizer {
    public void customize(WebSecurity webSecurity) {
        webSecurity.ignoring()
                .antMatchers("/hello/*");
    }
}