package uz.customs.customsprice.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.InitialDecision.Commodity;
import uz.customs.customsprice.service.AppsService;
import uz.customs.customsprice.service.CommodityService;
import uz.customs.customsprice.utils.Utils;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
    private final CommodityService commodityService;
    private final String INITIALDECISIONVIEWCMDT = "/resources/pages/InitialDecision/InitialDecisionSteps/Steps";

    @Autowired
    private AppsService appsservice;

    public CommodityController(CommodityService commodityService) {
        this.commodityService = commodityService;
    }

    @PostMapping
    public ResponseEntity valuesave(@RequestBody Commodity commodity) {
        try {
            commodityService.saveCommodity(commodity);
//            return ResponseEntity.ok(apps);
            return ResponseEntity.ok(" Commodity - да Ҳаммаси ок ! ");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(" <<--- Commodity --->> хатолик юз берди ! ");
        }

    }

    @PostMapping(value = INITIALDECISIONVIEWCMDT)
    @ResponseBody
    public ModelAndView InitialDecisionViewCmdt(HttpSession session, @RequestParam String cmdt_id, @RequestParam Integer x) {
        ModelAndView mav = new ModelAndView();
        ModelAndView mav1 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps1");
        ModelAndView mav2 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps2");
        ModelAndView mav3 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps3");
        ModelAndView mav4 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps4");
        String COMMODITY_ID = Utils.nullClear(String.valueOf(session.getAttribute("COMMODITY_ID")));
        switch (x) {
            case 1:
                List<Commodity> getInitialDecisionViewCommodityOne = new ArrayList<>();
                getInitialDecisionViewCommodityOne = appsservice.getInitialDecisionViewCommodityOne(cmdt_id);
                mav1.addObject("oneCommodityFor", getInitialDecisionViewCommodityOne);
                session.setAttribute("COMMODITY_ID", getInitialDecisionViewCommodityOne.get(0).getId());
                mav = mav1;
                break;
            case 2:
                mav2.addObject("COMMODITY_ID", COMMODITY_ID);
                mav = mav2;
                break;
            case 3:
                mav2.addObject("COMMODITY_ID", COMMODITY_ID);
                mav = mav3;
                break;
            case 4:
                mav2.addObject("COMMODITY_ID", COMMODITY_ID);
                mav = mav4;
                break;
            default:
        }
        return mav;
    }
}
