package uz.customs.customsprice.controllers.api.persons;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.entity.InitialDecision.Persons;
import uz.customs.customsprice.service.PersonsService;


@Controller
@RequestMapping("/personsrestapi")
public class ApiPersonsController {
    private final PersonsService personsService;

    public ApiPersonsController(PersonsService personsService) {
        this.personsService = personsService;
    }


    @PostMapping
    public ResponseEntity valuesave(@RequestBody Persons persons) {
        try {
            personsService.savepersons(persons);
            return ResponseEntity.ok("Persons маълумотлари сақланди PersonId := " + persons.getId());
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(" <<--- Persons --->> хатолик юз берди ! ");
        }

    }
}