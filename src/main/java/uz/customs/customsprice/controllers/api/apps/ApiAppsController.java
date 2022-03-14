package uz.customs.customsprice.controllers.api.apps;

import org.json.JSONObject;
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
import java.util.Optional;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/appsrestapi")
public class ApiAppsController {
    private final AppsService appsService;
    private final ConturyService conturyService;
    private final LocationService locationService;
    private final StatusService statusService;
    private final TermsService termsService;
    private final PersonsService personsService;

    public ApiAppsController(AppsService appsService, ConturyService conturyService, LocationService locationService, StatusService statusService, TermsService termsService, PersonsService personsService) {
        this.appsService = appsService;
        this.conturyService = conturyService;
        this.locationService = locationService;
        this.statusService = statusService;
        this.termsService = termsService;
        this.personsService = personsService;
    }
    /*---------------------------------------------------------------------------------------------------------start*/
    /* Apps маълумотларини API орқали сақлаш учун учун*/
    @PostMapping
    public ResponseEntity<Object> valuesave(@RequestBody @Valid Apps apps, BindingResult br) {
        Map<String, String> errors = new HashMap<>();
        if (br.hasErrors()) {
            errors = br.getFieldErrors().stream().collect(Collectors.toMap(FieldError::getField, FieldError::getDefaultMessage));
            JSONObject obj = new JSONObject();
            obj.put("message", "Error");
            obj.put("errors", errors);
            obj.put("status", "400");
            return new ResponseEntity<>(obj.toMap(), HttpStatus.BAD_REQUEST);
        } else {
            Optional<Persons> personsIdGet = personsService.getById(apps.getPersonId());
            if (personsIdGet.isPresent()) {
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
                JSONObject obj = new JSONObject();
                obj.put("message", "Success");
                obj.put("data", apps);
                obj.put("status", "200");
                ResponseEntity.status(0);
                return new ResponseEntity<>(obj.toMap(), HttpStatus.OK);
            }else {
                JSONObject obj = new JSONObject();
                obj.put("message", "Error");
                obj.put("errors", "personId топилмади!");
                obj.put("status", "400");
                return new ResponseEntity<>(obj.toMap(), HttpStatus.BAD_REQUEST);
            }
        }
    }
}
