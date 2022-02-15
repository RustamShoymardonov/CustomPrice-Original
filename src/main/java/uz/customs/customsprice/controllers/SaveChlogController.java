package uz.customs.customsprice.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.entity.InitialDecision.Chlog;
import uz.customs.customsprice.service.ChlogService;

@Controller
@RequestMapping("/saveChlog")
public class SaveChlogController {
    private final ChlogService chlogService;

    public SaveChlogController(ChlogService chlogService) {
        this.chlogService = chlogService;
    }

    @PostMapping
    public ResponseEntity saveChlog(@RequestBody Chlog chlog) {
        try {
            chlogService.saveChlog(chlog);
            return ResponseEntity.ok(" <<-- CHLOG -->> маълумотлари сақланди ! ");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(" Маълумотлар сақлашда хатолик ! ");
        }

    }
}
