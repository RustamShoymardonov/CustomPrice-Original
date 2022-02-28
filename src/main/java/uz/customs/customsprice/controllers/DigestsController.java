package uz.customs.customsprice.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
//import uz.customs.customsprice.entity.Digests.QiymatconsultEntity;
//import uz.customs.customsprice.service.QiymatconsultService;


import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/digests")
public class DigestsController {
    private final String DIGESTSPAGE = "/resources/pages/Digests/DigestsPage";
    private final String DIGESTSFIRST = "/resources/pages/Digests/DigestsFirst";
//    private final QiymatconsultService qiymatconsultService;
//
//    public DigestsController(QiymatconsultService qiymatconsultService) {
//        this.qiymatconsultService = qiymatconsultService;
//    }

    @PostMapping(value = DIGESTSPAGE)
    @ResponseBody
    public ModelAndView DigestsPage(HttpSession session) {
        ModelAndView mav = new ModelAndView("/resources/pages/Digests/DigestsPage");
//        Iterable<Apps> arizalar = appsservice.listAll();
//        mav.addObject("apps", arizalar);
        return mav;
    }

    @PostMapping(value = DIGESTSFIRST)
    @ResponseBody
    public ModelAndView DigestsFirst(HttpSession session) {
        ModelAndView mav = new ModelAndView("/resources/pages/Digests/DigestsFirst");
//        List<QiymatconsultEntity> qiymatconsultEntityList =new ArrayList<>();
//        qiymatconsultEntityList = qiymatconsultService.getAllList();
//        mav.addObject("qiymatconsult", qiymatconsultEntityList);
        return mav;
    }

}
