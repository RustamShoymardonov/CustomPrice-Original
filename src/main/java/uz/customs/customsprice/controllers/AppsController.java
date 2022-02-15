package uz.customs.customsprice.controllers;


import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.entity.InitialDecision.Apps;
import uz.customs.customsprice.entity.InitialDecision.Persons;
import uz.customs.customsprice.service.AppsService;
import uz.customs.customsprice.service.PersonsService;

@Controller
@RequestMapping("/appsrecord")
public class AppsController {
    private final AppsService appsService;
    private final PersonsService personsService;

    public AppsController(AppsService appsService, PersonsService personsService) {
        this.appsService = appsService;
        this.personsService = personsService;
    }

    @PostMapping
    public ResponseEntity valuesave(Apps apps, Persons persons) {
        try {
            //Apps apps1 = new Apps();
            // apps1.setPersonId("e6c9395a-9e9c-4350-8441-0f049c3fa18e");
            // apps1.setCustomer_country("country");
            // apps1.setCustomerCountryNm("country name");
            personsService.savepersons(persons);
            appsService.saveApps(apps);
            return ResponseEntity.ok(apps.getAppNum());
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(" <<>--APPS-->> malumotlari saqlanmadi");
        }

    }
}
