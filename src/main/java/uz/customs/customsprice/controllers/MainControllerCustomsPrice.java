package uz.customs.customsprice.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.InitialDecision.*;
import uz.customs.customsprice.repository.LogRepo;
import uz.customs.customsprice.repository.users.LoginRepo;
import uz.customs.customsprice.service.LocationService;
import uz.customs.customsprice.service.LogService;
import uz.customs.customsprice.service.RolesService;

import javax.servlet.http.HttpServletRequest;
import java.util.Random;

@Controller
public class MainControllerCustomsPrice {
    private final LoginRepo loginRepo;
    private final LogRepo logRepo;

    @Autowired
    private LocationService locationService;

    @Autowired
    private RolesService rolesService;

    @Autowired
    private LogService logService;

    private Integer userRole;
    private String userRoleName;
    private String userName;
    private String userId;
    private String userLocation;
    private String userLocationName;
    private String userPost;
    private String userPostName;
    private String SessionID;

    public MainControllerCustomsPrice(LoginRepo loginRepo, LogRepo logRepo) {
        this.loginRepo = loginRepo;
        this.logRepo = logRepo;
    }


    @GetMapping(value = "/login")
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView("SignIn");
        return mav;
    }


    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String homePage( HttpServletRequest request, ModelMap modelMap, @RequestParam String login, @RequestParam String password) {

        Random rn = new Random();
        int maximum = 9999, minimum = 1000, randomNum = 0;
        int n = Math.abs(maximum - minimum + 1);
        int i = rn.nextInt() % n;
        randomNum = Math.abs(minimum + i);
        SessionID = request.getSession().getId().trim() + randomNum;

        Users users = loginRepo.findByLogin(login);
        userId = users.getId();
        userName = users.getUserName();
        userLocation = users.getLocation();
        userPost = users.getPost();
        userRole = users.getRole();




        if (login.equals(users.getLogin())) {
            Roles roles = rolesService.getById(userRole);
            userRoleName = roles.getRoleName();

            Location location = locationService.getById(userLocation);
            userLocationName = location.getName1();

            request.getSession().setAttribute("userId", userId);
            request.getSession().setAttribute("userName", userName);
            request.getSession().setAttribute("userRole", userRole);
            request.getSession().setAttribute("userRoleName", userRoleName);
            request.getSession().setAttribute("userLocation", userLocation);
            request.getSession().setAttribute("userLocationName", userLocationName);
            request.getSession().setAttribute("userPost", userPost);
            request.getSession().setAttribute("SessionID", SessionID);

            String ip = request.getRemoteAddr();

            Log log = new Log();
            log.setId(SessionID);
            log.setUserId(userId);
            log.setUserName(userName);
            log.setIp(ip);

//            if (logRepo.findById(SessionID).isPresent())
            logService.saveLog(log);

            modelMap.put("login", login);
            return "index";
        } else {
            return "SignIn";
        }
    }

}
