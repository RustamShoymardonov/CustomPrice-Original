package uz.customs.customsprice.controllers;


import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;

@Controller
public class MainControllerCustomsPrice {

    @GetMapping(value = "/")
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView("index");
        return mav;
    }

//
//    @GetMapping(value = "/login")
//    public String login() {
//        return "resources/pages/LoginPages/login";
//    }
}
