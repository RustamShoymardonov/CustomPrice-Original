package uz.customs.customsprice.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.InitialDecision.*;
import uz.customs.customsprice.service.*;

import javax.servlet.http.HttpSession;
import java.security.Principal;
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
    private final TransportTypeService transportTypeService;
    private final String INITIALDECISION = "/resources/pages/InitialDecision/InitialDecision1";
    private final String INITIALDECISIONRASP = "/resources/pages/InitialDecision/InitialDecisionRasp";
    private final String INITIALDECISIONVIEW = "/resources/pages/InitialDecision/InitialDecisionView";

    public AppsController(AppsService appsService, ConturyService conturyService, LocationService locationService, StatusService statusService, TermsService termsService, AppsService appsservice, TransportTypeService transportTypeService) {
        this.appsService = appsService;
        this.conturyService = conturyService;
        this.locationService = locationService;
        this.statusService = statusService;
        this.termsService = termsService;
        this.appsservice = appsservice;
        this.transportTypeService = transportTypeService;
    }

    /*---------------------------------------------------------------------------------------------------------start*/
    /* Apps маълумотларини чиқариш учун*/

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
    /*-----------------------------------------------------------------------------------------------------------end*/


    /*---------------------------------------------------------------------------------------------------------start*/
    /* Apps маълумотларини сақлаш учун учун*/
    @PostMapping(value = INITIALDECISIONRASP)
    @ResponseBody
    public ModelAndView InitialDecisionRasp(HttpSession session, @RequestParam(name = "id") String status) {
        ModelAndView mav = new ModelAndView("/resources/pages/InitialDecision/InitialDecisionRasp");

        List<Apps> notSortedList = new ArrayList<>();
        notSortedList = appsservice.getListNotSorted();
        mav.addObject("notSortedList", notSortedList);

        List<Apps> sortedList = new ArrayList<>();
        sortedList = appsservice.getListSorted();
        mav.addObject("sortedList", sortedList);

        List<Apps> termsList = new ArrayList<>();
        termsList = appsservice.getListTerms();
        mav.addObject("termsList", termsList);

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
