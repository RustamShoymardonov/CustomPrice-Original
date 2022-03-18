package uz.customs.customsprice.controllers.indec;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.service.InDecService;

@Controller
@RequestMapping("/saveInDec")
public class InDecController {
    private final InDecService inDecService;

    public InDecController(InDecService inDecService) {
        this.inDecService = inDecService;
    }

}
