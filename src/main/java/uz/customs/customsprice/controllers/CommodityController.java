package uz.customs.customsprice.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.InitialDecision.Commodity;
import uz.customs.customsprice.entity.InitialDecision.Country;
import uz.customs.customsprice.entity.InitialDecision.Method;
import uz.customs.customsprice.entity.InitialDecision.Packaging;
import uz.customs.customsprice.service.*;
import uz.customs.customsprice.utils.Utils;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
    private final CommodityService commodityService;
    private final String INITIALDECISIONVIEWCMDT = "/resources/pages/InitialDecision/InitialDecisionSteps/Steps";

    @Autowired
    private AppsService appsservice;

    @Autowired
    private ConturyService conturyService;

    @Autowired
    private MethodService methodService;

    @Autowired
    private PackagingService packagingService;

    public CommodityController(CommodityService commodityService) {
        this.commodityService = commodityService;
    }

    @PostMapping
    public ResponseEntity valuesave(@RequestBody Commodity commodity) {
        try {
            Country country = conturyService.getByCodeAndLngaTpcd(commodity.getOriginCountry(), "UZ");
            commodity.setOrignCountrNm(country.getCdNm());

            Method method = methodService.getById(commodity.getMethod());
            commodity.setMethodNm(method.getName());

            Packaging packaging = packagingService.getByIdAndLngaTpcd(commodity.getPackType(), "UZ");
            commodity.setPackTypeNm(packaging.getCdNm());

            commodityService.saveCommodity(commodity);
//            return ResponseEntity.ok(apps);
            return ResponseEntity.ok(" <<--- Commodity (success) --->> - маълумотларини сақлаш муваффақиятли бажарилди ! ");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(" <<--- Commodity (error) --->> маълумотларини сақлашда хатолик юз берди ! ");
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
                mav1.addObject("commodityF", new Commodity());
                List<Commodity> commodityList = appsservice.getCommodityList(cmdt_id);
                if (commodityList.size() > 0)
                    mav1.addObject("commodity", commodityList);
                else
                    mav1.addObject("commodity", "0");
                session.setAttribute("COMMODITY_ID", commodityList.get(0).getId());
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
