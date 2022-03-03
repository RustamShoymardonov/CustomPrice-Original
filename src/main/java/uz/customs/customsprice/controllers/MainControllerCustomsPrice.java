package uz.customs.customsprice.controllers;

import com.ibm.as400.access.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class MainControllerCustomsPrice {

    @GetMapping("/home")
    public String home(){
        return "This is Home Page";
    }

    @GetMapping("/admin")
    public String admin(){
        return "This is Admin Page";
    }


//    @GetMapping(value = "/")
//    public String home() {
//        return "index";
//    }
//
//
//    @GetMapping("/user/registration")
//    public String showRegistrationForm(WebRequest request, Model model) {
////        UserDto userDto = new UserDto();
////        model.addAttribute("user", userDto);
//        return "registr";
//    }


//    @RequestMapping(value = "/", method = RequestMethod.GET)
//    public String login() {
//        return "SignIn";
//    }

//    @RequestMapping(value = "/", method = RequestMethod.POST)
//    public String home(ModelMap modelMap, @RequestParam String userId, @RequestParam String password) {
//        if (userId.equals("admin") && password.equals("root")){
//            modelMap.put("userId", userId);
//            return "index";
//        }
//        modelMap.put("errorMsg", "Логин ёки парол нотўғри киритилди");
//        return "SignIn";
//    }
}
