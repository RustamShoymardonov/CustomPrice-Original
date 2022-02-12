package uz.customs.customsprice.controllers;


import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.entity.InitialDecision.Apps;
import uz.customs.customsprice.service.AppsService;

@Controller
@RequestMapping("/savevalue")
public class SaveController {
    private final AppsService appsService;

    public SaveController(AppsService appsService) {
        this.appsService = appsService;
    }

    @PostMapping
    public ResponseEntity valuesave(@RequestBody Apps apps) {
        try {
            appsService.saveApps(apps);
            return ResponseEntity.ok("Apps smalumotlari saqlandi");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Apps malumotlari saqlanmadi");
        }

    }
}
