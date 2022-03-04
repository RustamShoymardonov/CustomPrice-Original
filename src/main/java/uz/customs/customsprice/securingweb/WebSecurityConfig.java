package uz.customs.customsprice.securingweb;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.crypto.NoSuchPaddingException;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("user")
                .password("pass")
                .roles("ADMN")
                .and()
                .withUser("kar")
                .password("pass2")
                .roles("USER");
    }



    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .httpBasic().and().csrf().disable()
                .authorizeRequests()
                .antMatchers("/").hasRole("USER")
                .antMatchers("/resources/**").hasRole("USER")
                .antMatchers("/apps/**").hasRole("USER")
                .antMatchers("/main/**").hasRole("ADMIN")
                .and()
                .formLogin().permitAll();

    }

    @Bean
    public PasswordEncoder encoder(){
        return NoOpPasswordEncoder.getInstance();
    }

}
