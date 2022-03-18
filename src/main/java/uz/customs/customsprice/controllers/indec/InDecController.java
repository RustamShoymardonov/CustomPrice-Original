package uz.customs.customsprice.controllers.indec;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.controllers.api.helper.ResponseHandler;
import uz.customs.customsprice.entity.InitialDecision.*;
import uz.customs.customsprice.service.*;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

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
    public ResponseEntity<Object> saveValue(InDec inDec, @RequestBody String cmdtId, @RequestBody String appId, @RequestBody Integer status) {

        Apps apps = appsService.findById(appId);


//        inDec.setId();
//        inDec.setCommodity();
//        inDec.setCmdtId();
//        inDec.setInDecNum();
//        inDec.setInDecDate();
//        inDec.setInDecLocation();
//        inDec.setInDecLocationNm();
//        inDec.setPersonId();
//        inDec.setHsCode();
//        inDec.setHsName();
//        inDec.setMethod();
//        inDec.setMethodNm();
//        inDec.setOriginCountry();
//        inDec.setOrignCountrNm();
//        inDec.setInDecBasis();
//        inDec.setCommentMarks();
//        inDec.setCustomsPreference();
//        inDec.setCustomsPayments();
//        inDec.setStatus();
//        inDec.setStatusNm();
//
//        inDec.getOriginCountry();
//        inDec.getOrignCountrNm();
//
//
//        inDec.setInDecLocation();
//        inDec.setInDecLocationNm();
//        inDec.setStatus();



        Country country = conturyService.getByCodeAndLngaTpcd(inDec.getOriginCountry(), "UZ");
        inDec.setOrignCountrNm(country.getCdNm());

        Method method = methodService.getById(inDec.getMethod());
        inDec.setMethodNm(method.getName());

        Tnved2 tnved2 = tnved2Service.getByIdAndFinishdate(inDec.getHsCode());
        inDec.setHsName(tnved2.getName());

        Location location = locationService.getById(inDec.getInDecLocation());
        inDec.setInDecLocationNm(location.getName1());

        Status stus = statusService.getById(status);
        inDec.setStatusNm(stus.getName());

        inDecService.saveInDec(inDec);
        return ResponseHandler.generateResponse("Commodity ma`lumotlari saqlandi!", HttpStatus.OK, inDec);
    }
}