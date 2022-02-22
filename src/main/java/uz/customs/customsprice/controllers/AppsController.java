package uz.customs.customsprice.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.InitialDecision.Apps;
import uz.customs.customsprice.entity.InitialDecision.Commodity;
import uz.customs.customsprice.repository.AppsRepo;
import uz.customs.customsprice.service.AppsService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/apps")
public class AppsController {
    private final AppsService appsService;
    private final AppsRepo appsRepo;
    private final String INITIALDECISION = "/resources/pages/InitialDecision/InitialDecision1";
    private final String INITIALDECISIONRASP = "/resources/pages/InitialDecision/InitialDecisionRasp";
    private final String INITIALDECISIONVIEW = "/resources/pages/InitialDecision/InitialDecisionView";


    /*---------------------------------------------------------------------------------------------------------start*/
    /* Apps маълумотларини чиқариш учун*/
    @Autowired
    private AppsService appsservice;

    @PostMapping
    public ResponseEntity valuesave(@RequestBody Apps apps) {
        try {
            appsService.saveApps(apps);
            return ResponseEntity.ok(apps);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(" <<>--APPS-->> malumotlari saqlanmadi");
        }

    }
    /*-----------------------------------------------------------------------------------------------------------end*/


    /*---------------------------------------------------------------------------------------------------------start*/
    /* Apps маълумотларини сақлаш учун учун*/
    public AppsController(AppsService appsService, AppsRepo appsRepo) {
        this.appsService = appsService;
        this.appsRepo = appsRepo;
    }

    @PostMapping(value = INITIALDECISIONRASP)
    @ResponseBody
    public ModelAndView InitialDecisionRasp(HttpSession session, @RequestParam(name = "id") String status) {
        ModelAndView mav = new ModelAndView("resources/pages/InitialDecision/InitialDecisionRasp");

        List<Apps> termsList = new ArrayList<>();
        termsList = appsservice.getListTerms();
        mav.addObject("termsList", termsList);

        List<Apps> notSortedList = new ArrayList<>();
        notSortedList = appsservice.getListNotSorted();
        mav.addObject("notSortedList", notSortedList);

        List<Apps> sortedList = new ArrayList<>();
        sortedList = appsservice.getListSorted();
        mav.addObject("sortedList", sortedList);
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

        List<Apps> InitialDecisionViewApp = new ArrayList<>();
        InitialDecisionViewApp = appsservice.getInitialDecisionView(app_id);
        mav.addObject("appInfo", InitialDecisionViewApp);

        List<Commodity> getInitialDecisionViewCommodity = new ArrayList<>();
        getInitialDecisionViewCommodity = appsservice.getInitialDecisionViewCommodity(app_id);
        mav.addObject("allCommodityFor", getInitialDecisionViewCommodity);

        return mav;
    }
    /*-----------------------------------------------------------------------------------------------------------end*/
}
