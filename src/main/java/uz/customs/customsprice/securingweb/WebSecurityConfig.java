//package uz.customs.customsprice.securingweb;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.NoOpPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.web.session.HttpSessionEventPublisher;
//import uz.customs.customsprice.service.users.UserService;
//
//import javax.crypto.NoSuchPaddingException;
//
//@Configuration
//@EnableWebSecurity
//public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
//
//    private UserService userService;
//
//    @Autowired
//    public void setUserService(UserService userService) {
//        this.userService = userService;
//    }
//
////    @Override
////    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
////        auth.inMemoryAuthentication()
////                .withUser("user")
////                .password("pass")
////                .roles("ADMN")
////                .and()
////                .withUser("user2")
////                .password("123")
////                .roles("USER")
////                .and()
////                .withUser("user3")
////                .password("123")
////                .roles("USER");
////    }
//
//    @Bean
//    public HttpSessionEventPublisher httpSessionEventPublisher() {
//        return new HttpSessionEventPublisher();
//    }
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http
//                .httpBasic().and().csrf().disable()
//                .authorizeRequests()
//                .antMatchers("/").hasRole("USER")
//                .antMatchers("/resources/**").hasRole("USER")
//                .antMatchers("/apps/**").hasRole("USER")
//                .antMatchers("/main/**").hasRole("USER")
//                .and()
//                .formLogin().permitAll();
//        http.sessionManagement()
//                .invalidSessionUrl("/login");
//    }
//
//
//    @Bean
//    public PasswordEncoder encoder(){
//        return new BCryptPasswordEncoder();
//    }
//
//
//    @Bean
//    public DaoAuthenticationProvider daoAuthenticationProvider(){
//        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
//        authenticationProvider.setPasswordEncoder(encoder());
//        authenticationProvider.setUserDetailsService(userService);
//        return authenticationProvider;
//    }
//
//
//}
