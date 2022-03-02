package uz.customs.customsprice.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.Digests.QiymatconsultEntity;
import uz.customs.customsprice.repository.QiymatconsultRepo;
import uz.customs.customsprice.service.QiymatconsultService;



import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/digests")
public class DigestsController {
    private final String DIGESTSPAGE = "/resources/pages/Digests/DigestsPage";
    private final String DIGESTSFIRST = "/resources/pages/Digests/DigestsFirst";
    private final QiymatconsultService qiymatconsultService;

    @Autowired
    private final QiymatconsultRepo qiymatconsultRepo;

    public DigestsController(QiymatconsultService qiymatconsultService, QiymatconsultRepo qiymatconsultRepo) {
        this.qiymatconsultService = qiymatconsultService;
        this.qiymatconsultRepo = qiymatconsultRepo;
    }

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

        List<QiymatconsultEntity> qiymatconsultEntityList = qiymatconsultService.getListQiymatconsulting();
        mav.addObject("qiymatconsult", qiymatconsultEntityList);
        return mav;
    }

}
