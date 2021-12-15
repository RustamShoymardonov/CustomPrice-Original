package uz.customs.customsprice.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainControllerCustomsPrice {

    @GetMapping("/")
    public String greeting(Model model) {
        model.addAttribute("name", "name");
        return "index";
    }

}