package uz.customs.customsprice.controllers.api.apps;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.entity.InitialDecision.*;
import uz.customs.customsprice.service.*;

@Controller
@RequestMapping("/appsrestapi")
public class ApiAppsController {
    private final AppsService appsService;
    private final ConturyService conturyService;
    private final LocationService locationService;
    private final StatusService statusService;
    private final TermsService termsService;

    public ApiAppsController(AppsService appsService, ConturyService conturyService, LocationService locationService, StatusService statusService, TermsService termsService) {
        this.appsService = appsService;
        this.conturyService = conturyService;
        this.locationService = locationService;
        this.statusService = statusService;
        this.termsService = termsService;
    }


    /*---------------------------------------------------------------------------------------------------------start*/
    /* Apps маълумотларини API орқали сақлаш учун учун*/
    @PostMapping
    public ResponseEntity valuesave(@RequestBody Apps apps) {
        try {
            Country country = conturyService.getByCodeAndLngaTpcd(apps.getCustomerCountry(), "UZ");
            apps.setCustomerCountryNm(country.getCdNm());

            country = conturyService.getByCodeAndLngaTpcd(apps.getSenderCountry(), "UZ");
            apps.setSenderCountryNm(country.getCdNm());

            Location location = locationService.getById(apps.getLocationId());
            apps.setLocationNm(location.getName1());

            Status status = statusService.getById(apps.getStatus());
            apps.setStatusNm(status.getName());

            Terms terms = termsService.findByIdAndLngaTpcd(apps.getTerms(), "UZ");
            apps.setTermsNm(terms.getSign());

            appsService.saveApps(apps);
            return ResponseEntity.ok(" <<--- Apps (success) --->> - маълумотларини сақлаш муваффақиятли бажарилди ! \n" + apps);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(" <<--- Apps (error) --->> маълумотларини сақлашда хатолик юз берди ! ");
        }

    }
}
