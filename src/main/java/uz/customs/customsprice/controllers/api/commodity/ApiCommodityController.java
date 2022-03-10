package uz.customs.customsprice.controllers.api.commodity;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.controllers.api.helper.ResponseHandler;
import uz.customs.customsprice.entity.InitialDecision.*;
import uz.customs.customsprice.service.*;

@Controller
@RequestMapping("/commodityrestapi")
public class ApiCommodityController {

    private final CommodityService commodityService;
    private final ConturyService conturyService;
    private final MethodService methodService;
    private final PackagingService packagingService;
    private final Tnved2Service tnved2Service;

    public ApiCommodityController(CommodityService commodityService, ConturyService conturyService, MethodService methodService, PackagingService packagingService, Tnved2Service tnved2Service) {
        this.commodityService = commodityService;
        this.conturyService = conturyService;
        this.methodService = methodService;
        this.packagingService = packagingService;
        this.tnved2Service = tnved2Service;
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

            Tnved2 tnved2 = tnved2Service.getByIdAndFinishdate(commodity.getHsCode());
            commodity.setHsName(tnved2.getName());

            commodityService.saveCommodity(commodity);
            return ResponseHandler.generateResponse("Commodity ma`lumotlari saqlandi!", HttpStatus.OK, commodity);
        } catch (Exception e) {
            return ResponseHandler.generateResponse("Commodity ma`lumotlari saqlashda xatolik yuz berdi!", HttpStatus.BAD_REQUEST, commodity.getId());
        }
    }
}
