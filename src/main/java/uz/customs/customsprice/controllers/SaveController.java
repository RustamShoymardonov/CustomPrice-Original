package uz.customs.customsprice.controllers;


import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.entity.InitialDecision.Docs;
import uz.customs.customsprice.entity.InitialDecision.Persons;
import uz.customs.customsprice.service.DocsService;
import uz.customs.customsprice.service.PersonsService;

@Controller
@RequestMapping("/savevalue")
public class SaveController {
    private final PersonsService personsService;
    //private final DocsService docsService;

    public SaveController(PersonsService personsService) {
        this.personsService = personsService;
      //  this.docsService = docsService;
    }

    @PostMapping
    public ResponseEntity valuesave(@RequestBody Persons persons, Docs docs) {
        try {
            personsService.savepersons(persons);
            //docsService.savedocs(docs);
            return ResponseEntity.ok("Persons smalumotlari saqlandi");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Persons malumotlari saqlanmadi");
        }

    }
}
