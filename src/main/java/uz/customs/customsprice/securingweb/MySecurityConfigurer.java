package uz.customs.customsprice.securingweb;


import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.security.RolesAllowed;

@EnableWebSecurity
public class MySecurityConfigurer extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/admin/**")
                .hasRole("ADMIN")
                .antMatchers("/protected/**")
                .hasRole("USER");
    }

    @Override
    public void configure(WebSecurity web) {
        web.ignoring()
                .antMatchers("/hello/*");
    }

    @EnableGlobalMethodSecurity(jsr250Enabled = true)
    @Controller
    public class AnnotationSecuredController {
        @RolesAllowed("ADMIN")
        @RequestMapping("/admin")
        public String adminHello() {
            return "Hello Admin";
        }

        @RolesAllowed("USER")
        @RequestMapping("/protected")
        public String jsr250Hello() {
            return "Hello Jsr250";
        }
    }

}
