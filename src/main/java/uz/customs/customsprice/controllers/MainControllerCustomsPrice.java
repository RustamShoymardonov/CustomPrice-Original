package uz.customs.customsprice.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainControllerCustomsPrice {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "SignIn";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String home(ModelMap modelMap, @RequestParam String userId, @RequestParam String password) {
        if (userId.equals("admin") && password.equals("root")){
            modelMap.put("userId", userId);
            return "index";
        }
        modelMap.put("errorMsg", "Логин ёки парол нотўғри киритилди");
        return "SignIn";
    }
}
