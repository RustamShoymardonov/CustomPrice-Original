package uz.customs.customsprice.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.entity.InitialDecision.Persons;
import uz.customs.customsprice.service.PersonsService;


@Controller
@RequestMapping("/personsrecord")
public class PersonsController {
    private final PersonsService personsService;

    public PersonsController(PersonsService personsService) {
        this.personsService = personsService;
    }

    @PostMapping
    public ResponseEntity valuesave(@RequestBody Persons persons) {
        try {
            personsService.savepersons(persons);
            return ResponseEntity.ok("Persons smalumotlari saqlandi");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Persons malumotlari saqlanmadi");
        }

    }
}