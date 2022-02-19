package uz.customs.customsprice.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.entity.InitialDecision.Commodity;
import uz.customs.customsprice.service.CommodityService;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
    private final CommodityService commodityService;

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
}
