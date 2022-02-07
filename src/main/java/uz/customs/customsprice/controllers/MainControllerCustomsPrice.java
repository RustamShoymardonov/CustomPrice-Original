package uz.customs.customsprice.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainControllerCustomsPrice {

    @GetMapping(value = "/")
    public String home() {

        return "index";
    }

    @GetMapping(value = "/LogicalControl")
    public String LogicalControl() {
        return "LogicalControl";
    }
}
