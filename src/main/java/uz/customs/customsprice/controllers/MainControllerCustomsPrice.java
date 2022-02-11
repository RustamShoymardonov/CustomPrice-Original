package uz.customs.customsprice.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.repository.PersonsRepo;

@Controller
@RequestMapping("/person")
public class MainControllerCustomsPrice {

    @Autowired
    private PersonsRepo personrepo;

//    @PostMapping
//    public ResponseEntity registration(@RequestBody Persons persons) {
//        try {
//            personrepo.save(persons);
//            return ResponseEntity.ok("Malumotlar saqlandi");
//        } catch (Exception e) {
//            return ResponseEntity.badRequest().body("Saqlanmadi");
//        }
//
//    }

    @GetMapping(value = "/")
    public String home() {
        return "index";
    }

    //@GetMapping(value = "/LogicalControl")
    //public String LogicalControl() {
    //    return "LogicalControl";
    //}
}
