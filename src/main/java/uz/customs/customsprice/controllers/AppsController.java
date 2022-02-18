package uz.customs.customsprice.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.InitialDecision.Apps;
import uz.customs.customsprice.entity.InitialDecision.Persons;
import uz.customs.customsprice.repository.AppsRepo;
import uz.customs.customsprice.service.AppsService;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/apps")
public class AppsController {
    private final AppsService appsService;
    private final AppsRepo appsRepo;
    private final String INITIALDECISION = "/resources/pages/InitialDecision/InitialDecision";
    private final String INITIALDECISIONRASP = "/resources/pages/InitialDecision/InitialDecisionRasp";
    private final String INITIALDECISIONVIEW = "/resources/pages/InitialDecision/InitialDecisionView";

    @Autowired
    private AppsService appsservice;

    public AppsController(AppsService appsService, AppsRepo appsRepo) {
        this.appsService = appsService;
        this.appsRepo = appsRepo;
    }

    @PostMapping
    public ResponseEntity valuesave(@RequestBody Apps apps) {
        try {
            appsService.saveApps(apps);
            return ResponseEntity.ok(apps);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(" <<>--APPS-->> malumotlari saqlanmadi");
        }

    }

    @PostMapping(value = INITIALDECISIONRASP)
    @ResponseBody
    public ModelAndView InitialDecisionRasp(HttpSession session, @RequestParam(name = "id") String status) {
        ModelAndView mav = new ModelAndView("/resources/pages/InitialDecision/InitialDecisionRasp");

        List<Apps> termsList = new ArrayList<>();
        termsList= appsservice.getListTerms();
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

//    @PostMapping(value = INITIALDECISIONVIEW)
//    @ResponseBody
//    public ModelAndView InitialDecisionView(HttpSession session, @RequestParam(name = "id") String status) {
//        ModelAndView mav = new ModelAndView("/resources/pages/InitialDecision/InitialDecisionView");
//        Iterable<Apps> arizalar = appsservice.listAll();
//        mav.addObject("apps", arizalar);
//        return mav;
//    }

    @PostMapping(value = INITIALDECISIONVIEW)
    @ResponseBody
    public ModelAndView InitialDecisionView(HttpSession session, @RequestParam String id) {
        ModelAndView mav = new ModelAndView("/resources/pages/InitialDecision/InitialDecisionView");
        mav.addObject("appId", appsservice.getInitialDecisionView(id));
        return mav;
    }

}
