package uz.customs.customsprice.controllers.indec;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.InitialDecision.*;
import uz.customs.customsprice.service.*;

import java.util.Optional;

@Controller
@RequestMapping("/saveInDec")
public class InDecController {
    private final InDecService inDecService;
    private final AppsService appsService;
    private final CommodityService commodityService;
    private final ConturyService conturyService;
    private final MethodService methodService;
    private final PackagingService packagingService;
    private final Tnved2Service tnved2Service;
    private final LocationService locationService;
    private final StatusService statusService;

    private final String INITIALDECISIONCONFIRMCMDT = "/resources/pages/InitialDecision/InitialDecisionConfirm";

    public InDecController(InDecService inDecService, AppsService appsService, CommodityService commodityService, ConturyService conturyService, MethodService methodService, PackagingService packagingService, Tnved2Service tnved2Service, LocationService locationService, StatusService statusService) {
        this.inDecService = inDecService;
        this.appsService = appsService;
        this.commodityService = commodityService;
        this.conturyService = conturyService;
        this.methodService = methodService;
        this.packagingService = packagingService;
        this.tnved2Service = tnved2Service;
        this.locationService = locationService;
        this.statusService = statusService;
    }

    @PostMapping(value = INITIALDECISIONCONFIRMCMDT)
    public ModelAndView saveValue(InDec inDec, @RequestParam String cmdtId, @RequestParam String appId, @RequestParam Integer status) {
        ModelAndView mav = new ModelAndView("resources/pages/InitialDecision/InitialDecisionRasp");

        Apps apps = appsService.findById(appId);
        Optional<Commodity> commodity = commodityService.getById(cmdtId);
        Status status1 = statusService.getById(status);

        inDec.setCmdtId(cmdtId);
//        inDec.setInDecNum();//?
//        inDec.setInDecDate();//?
//        inDec.setInsUser();//?
        inDec.setInDecLocation(apps.getLocationId());
        inDec.setInDecLocationNm(apps.getLocationNm());
        inDec.setPersonId(apps.getPersonId());
        inDec.setHsCode(commodity.get().getHsCode());
        inDec.setHsName(commodity.get().getHsName());
        inDec.setMethod(commodity.get().getMethod());
        inDec.setMethodNm(commodity.get().getMethodNm());
        inDec.setOriginCountry(commodity.get().getOriginCountry());
        inDec.setOrignCountrNm(commodity.get().getOrignCountrNm());
//        inDec.setInDecBasis(); //?
//        inDec.setCommentMarks(); //?
//        inDec.setCustomsPreference(); //?
//        inDec.setCustomsPayments(); //?
        inDec.setStatus(status1.getId());
        inDec.setStatusNm(status1.getName());
        inDecService.saveInDec(inDec);



//        Country country = conturyService.getByCodeAndLngaTpcd(inDec.getOriginCountry(), "UZ");
//        inDec.setOrignCountrNm(country.getCdNm());
//
//        Method method = methodService.getById(inDec.getMethod());
//        inDec.setMethodNm(method.getName());
//
//        Tnved2 tnved2 = tnved2Service.getByIdAndFinishdate(inDec.getHsCode());
//        inDec.setHsName(tnved2.getName());
//
//        Location location = locationService.getById(inDec.getInDecLocation());
//        inDec.setInDecLocationNm(location.getName1());
//
//        Status stus = statusService.getById(status);
//        inDec.setStatusNm(stus.getName());

        return mav;
    }
}