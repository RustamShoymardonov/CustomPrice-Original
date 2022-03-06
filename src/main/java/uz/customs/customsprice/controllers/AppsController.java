package uz.customs.customsprice.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.InitialDecision.*;
import uz.customs.customsprice.entity.users.User;
import uz.customs.customsprice.repository.AppsRepo;
import uz.customs.customsprice.repository.users.LoginRepo;
import uz.customs.customsprice.repository.users.UsersRepo;
import uz.customs.customsprice.service.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/apps")
public class AppsController {
    private final AppsService appsService;
    private final ConturyService conturyService;
    private final LocationService locationService;
    private final StatusService statusService;
    private final TermsService termsService;
    private final AppsService appsservice;
    private final AppsRaspService appsRaspService;
    private final AppsRepo appsRepo;
    private final UsersRepo usersRepo;
    private final LoginRepo loginRepo;
    private final TransportTypeService transportTypeService;
    private final UsersService usersService;
    private final String INITIALDECISION = "/resources/pages/InitialDecision/InitialDecision1";
    private final String INITIALDECISIONRASP = "/resources/pages/InitialDecision/InitialDecisionRasp";
    private final String INITIALDECISIONVIEW = "/resources/pages/InitialDecision/InitialDecisionView";
    private final String INITIALDECISIONSAVERASP = "/resources/pages/InitialDecision/InitialDecisionRasp1";


    public AppsController(AppsService appsService, ConturyService conturyService, LocationService locationService, StatusService statusService, TermsService termsService, AppsService appsservice, AppsRaspService appsRaspService, AppsRepo appsRepo, UsersRepo usersRepo, LoginRepo loginRepo, TransportTypeService transportTypeService, UsersService usersService) {
        this.appsService = appsService;
        this.conturyService = conturyService;
        this.locationService = locationService;
        this.statusService = statusService;
        this.termsService = termsService;
        this.appsservice = appsservice;
        this.appsRaspService = appsRaspService;
        this.appsRepo = appsRepo;
        this.usersRepo = usersRepo;
        this.loginRepo = loginRepo;
        this.transportTypeService = transportTypeService;
        this.usersService = usersService;
    }

    /*---------------------------------------------------------------------------------------------------------start*/
    /* Apps маълумотларини API орқали сақлаш учун учун*/
    @PostMapping
    public ResponseEntity valuesave(@RequestBody Apps apps) {
        try {
            Country country = conturyService.getByCodeAndLngaTpcd(apps.getCustomerCountry(), "UZ");
            apps.setCustomerCountryNm(country.getCdNm());

            country = conturyService.getByCodeAndLngaTpcd(apps.getSenderCountry(), "UZ");
            apps.setSenderCountryNm(country.getCdNm());

            Location location = locationService.getById(apps.getLocationId());
            apps.setLocationNm(location.getName1());

            Status status = statusService.getById(apps.getStatus());
            apps.setStatusNm(status.getName());

            Terms terms = termsService.findByIdAndLngaTpcd(apps.getTerms(), "UZ");
            apps.setTermsNm(terms.getSign());

            appsService.saveApps(apps);
            return ResponseEntity.ok(" <<--- Apps (success) --->> - маълумотларини сақлаш муваффақиятли бажарилди ! \n" + apps);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(" <<--- Apps (error) --->> маълумотларини сақлашда хатолик юз берди ! ");
        }

    }


    /*todo Тақсимланган аризалар рўйхатини сақлаш (инспекторлар кесимида)*/
    @PostMapping(value = INITIALDECISIONSAVERASP)
    @ResponseBody
    public ModelAndView InitialDecisionViewSave(HttpServletRequest request, @RequestParam String appId, @RequestParam String inspectorId)  {

        String userId = (String) request.getSession().getAttribute("userId");
        String userName = (String) request.getSession().getAttribute("userName");
        Integer userRole = (Integer) request.getSession().getAttribute("userRole");
        String userRoleName = (String) request.getSession().getAttribute("userRoleName");
        String userLocation = (String) request.getSession().getAttribute("userLocation");
        String userLocationName = (String) request.getSession().getAttribute("userLocationName");
        String userPost = (String) request.getSession().getAttribute("userPost");

        AppsRasp appsRasp = new AppsRasp();
        appsRasp.setAppId(appId);
        appsRasp.setInspectorId(inspectorId);
        appsRaspService.saveRasp(appsRasp);

        Apps app = appsservice.findById(appId);
        Status status = statusService.getById(110);
        app.setStatus(110);
        app.setStatusNm(status.getName());
        appsservice.saveAppsStatus(app);

        ModelAndView mav = new ModelAndView("/resources/pages/InitialDecision/InitialDecisionRasp");
        List<Apps> notSortedList = new ArrayList<>();
        notSortedList = appsservice.getListNotSorted();
        mav.addObject("notSortedList", notSortedList);

        List sortedList = new ArrayList<>();
        sortedList = appsservice.getListSorted();
        mav.addObject("sortedList", sortedList);

        List<Apps> termsList = new ArrayList<>();
        termsList = appsservice.getListTerms();
        mav.addObject("termsList", termsList);

        List<Users> usersList = new ArrayList<>();
        usersList = usersService.getByLocationAndPostAndRole(userLocation, userPost, 8);
        mav.addObject("userSelectList", usersList);

        return mav;
    }

    /*-----------------------------------------------------------------------------------------------------------end*/


    /*---------------------------------------------------------------------------------------------------------start*/
    /* Apps маълумотларини чиқариш учун*/
    @PostMapping(value = INITIALDECISIONRASP)
    @ResponseBody
    public ModelAndView InitialDecisionRasp(HttpServletRequest request, @RequestParam(name = "id") String status) {
        ModelAndView mav = new ModelAndView("/resources/pages/InitialDecision/InitialDecisionRasp");
        String userId = (String) request.getSession().getAttribute("userId");
        String userName = (String) request.getSession().getAttribute("userName");
        Integer userRole = (Integer) request.getSession().getAttribute("userRole");
        String userRoleName = (String) request.getSession().getAttribute("userRoleName");
        String userLocation = (String) request.getSession().getAttribute("userLocation");
        String userLocationName = (String) request.getSession().getAttribute("userLocationName");
        String userPost = (String) request.getSession().getAttribute("userPost");

        List<Apps> notSortedList = new ArrayList<>();
        notSortedList = appsservice.getListNotSorted();
        mav.addObject("notSortedList", notSortedList);

        List<Apps> sortedList = new ArrayList<>();
        sortedList = appsservice.getListSorted();
        mav.addObject("sortedList", sortedList);

        List<Apps> termsList = new ArrayList<>();
        termsList = appsservice.getListTerms();
        mav.addObject("termsList", termsList);

        List<Users> usersList = new ArrayList<>();
        usersList = usersService.getByLocationAndPostAndRole(userLocation, userPost, 8);
        mav.addObject("userSelectList", usersList);

        return mav;
    }

    @PostMapping(value = INITIALDECISION)
    @ResponseBody
    public ModelAndView InitialDecision(HttpSession session, @RequestParam(name = "id") String status) {
        ModelAndView mav = new ModelAndView("/resources/pages/InitialDecision/InitialDecision");
        Iterable<Apps> arizalar = appsservice.listAll();
        mav.addObject("apps", arizalar);
        return mav;
    }

    @PostMapping(value = INITIALDECISIONVIEW)
    @ResponseBody
    public ModelAndView InitialDecisionView(HttpSession session, @RequestParam String app_id) {
        ModelAndView mav = new ModelAndView("resources/pages/InitialDecision/InitialDecisionView");

        List<Apps> InitialDecisionViewApp = appsservice.getInitialDecisionView(app_id);
        mav.addObject("appInfo", InitialDecisionViewApp);

        List<Commodity> getInitialDecisionViewCommodity = appsservice.getInitialDecisionViewCommodity(app_id);
        mav.addObject("allCommodityFor", getInitialDecisionViewCommodity);

        List<TransportType> getInDecViewTrType = transportTypeService.getByAppId(app_id);
        mav.addObject("transports", getInDecViewTrType);

//        List<TransportType> getInDecViewTrTypePrice = transportTypeService.getByAppIdAllPrice(app_id);
//        mav.addObject("sumTransportsPrice", getInDecViewTrTypePrice);

        return mav;
    }
    /*-----------------------------------------------------------------------------------------------------------end*/
}
