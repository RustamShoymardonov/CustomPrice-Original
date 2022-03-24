package uz.customs.customsprice.controllers.indec;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.InitialDecision.*;
import uz.customs.customsprice.service.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/saveInDec")
public class InDecController {
    private final InDecService inDecService;
    private final AppsService appsService;
    private final AppsService appsservice;
    private final CommodityService commodityService;
    private final ConturyService conturyService;
    private final MethodService methodService;
    private final PackagingService packagingService;
    private final Tnved2Service tnved2Service;
    private final LocationService locationService;
    private final StatusService statusService;
    private final UsersService usersService;

    private final String INITIALDECISIONCONFIRMCMDT = "/resources/pages/InitialDecision/InitialDecisionConfirm";
    private final String INITIALDECISIONTOHTMl = "/resources/pages/InitialDecision/Qaror";
    private final String INITIALDECISIONCONFIRMTOXBB = "/resources/pages/InitialDecision/InitialDecisionConfirToXBB";
    private final String INITIALDECISIONCONFIRMXBBFINISH = "/resources/pages/InitialDecision/InitialDecisionConfirXBBFinish";


    public InDecController(InDecService inDecService, AppsService appsService, AppsService appsservice, CommodityService commodityService, ConturyService conturyService, MethodService methodService, PackagingService packagingService, Tnved2Service tnved2Service, LocationService locationService, StatusService statusService, UsersService usersService) {
        this.inDecService = inDecService;
        this.appsService = appsService;
        this.appsservice = appsservice;
        this.commodityService = commodityService;
        this.conturyService = conturyService;
        this.methodService = methodService;
        this.packagingService = packagingService;
        this.tnved2Service = tnved2Service;
        this.locationService = locationService;
        this.statusService = statusService;
        this.usersService = usersService;
    }

    @PostMapping(value = INITIALDECISIONCONFIRMCMDT)
    public ModelAndView saveValue(InDec inDec, HttpServletRequest request, @RequestParam String cmdtId, @RequestParam String appId, @RequestParam Integer status) {
        ModelAndView mav = new ModelAndView("resources/pages/InitialDecision/InitialDecisionRasp");

        String userId = (String) request.getSession().getAttribute("userId");
        String userName = (String) request.getSession().getAttribute("userName");
        Integer userRole = (Integer) request.getSession().getAttribute("userRole");
        String userRoleName = (String) request.getSession().getAttribute("userRoleName");
        String userLocation = (String) request.getSession().getAttribute("userLocation");
        String userLocationName = (String) request.getSession().getAttribute("userLocationName");
        String userPost = (String) request.getSession().getAttribute("userPost");

        Apps apps = appsService.findById(appId);
        Optional<Commodity> commodity = commodityService.getById(cmdtId);
        Status status1 = statusService.getById(status);

        /** Қарор қабул қилинган Ариза маълумотлари**/
        inDec.setCmdtId(cmdtId);
//        inDec.setInDecNum();//?
//        inDec.setInDecDate();//?
        inDec.setInsUser(userId);
        inDec.setInDecLocation(apps.getLocationId());
        inDec.setInDecLocationNm(apps.getLocationNm());
        inDec.setPersonId(apps.getPersonId());
        inDec.setHsCode(commodity.get().getHsCode());
        inDec.setHsName(commodity.get().getHsName());
        inDec.setMethod(commodity.get().getMethod());
        inDec.setMethodNm(commodity.get().getMethodNm());
        inDec.setOriginCountry(commodity.get().getOriginCountry());
        inDec.setOrignCountrNm(commodity.get().getOrignCountrNm());
//        inDec.setInDecBasis(); //?
//        inDec.setCommentMarks(); //?
//        inDec.setCustomsPreference(); //?
//        inDec.setCustomsPayments(); //?
        inDec.setStatus(status1.getId());
        inDec.setStatusNm(status1.getName());
        inDecService.saveInDec(inDec);

        /** Хбб тўл.ходимидан хбб тўл.бош га жўнатилган Ариза мақоми ўзгариши 145-(Тасдиқлашга тайёрланган (инспектор томонидан бошлиқга юборилган)) **/
        Status status2 = statusService.getById(145);
        apps.setStatus(145);
        apps.setStatusNm(status2.getName());
        appsService.saveAppsStatus(apps);

        /** mav object start **/
        List<Apps> notSortedList = new ArrayList<>();
        notSortedList = appsservice.getListNotSorted(request, userLocation, userPost, userId, userRole);
        mav.addObject("notSortedList", notSortedList);

        List<Apps> sortedList = new ArrayList<>();
        sortedList = appsservice.getListSorted();
        mav.addObject("sortedList", sortedList);

        List<Apps> termsList = new ArrayList<>();
        termsList = appsservice.getListTerms();
        mav.addObject("termsList", termsList);

        List<Users> usersList = new ArrayList<>();
        usersList = usersService.getByLocationAndPostAndRole(userLocation, userPost, 8);
        mav.addObject("userSelectList", usersList);
        /** mav object end **/

        return mav;
    }

    @PostMapping(value = INITIALDECISIONTOHTMl)
    public ModelAndView openHtmlInDec(InDec inDec, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("inDecHtml");
        return mav;
    }

    @PostMapping(value = INITIALDECISIONCONFIRMTOXBB)
    public ModelAndView saveToXBB(InDec inDec, HttpServletRequest request, @RequestParam String cmdtId, @RequestParam String appId) {
        ModelAndView mav = new ModelAndView("resources/pages/InitialDecision/InitialDecisionRasp");

        String userId = (String) request.getSession().getAttribute("userId");
        String userName = (String) request.getSession().getAttribute("userName");
        Integer userRole = (Integer) request.getSession().getAttribute("userRole");
        String userRoleName = (String) request.getSession().getAttribute("userRoleName");
        String userLocation = (String) request.getSession().getAttribute("userLocation");
        String userLocationName = (String) request.getSession().getAttribute("userLocationName");
        String userPost = (String) request.getSession().getAttribute("userPost");

        Apps apps = appsService.findById(appId);
        Status status2 = statusService.getById(160);

        apps.setStatus(160);
        apps.setStatusNm(status2.getName());
        appsService.saveAppsStatus(apps);

        /** mav object start **/
        List<Apps> notSortedList = new ArrayList<>();
        notSortedList = appsservice.getListNotSorted(request, userLocation, userPost, userId, userRole);
        mav.addObject("notSortedList", notSortedList);

        List<Apps> sortedList = new ArrayList<>();
        sortedList = appsservice.getListSorted();
        mav.addObject("sortedList", sortedList);

        List<Apps> termsList = new ArrayList<>();
        termsList = appsservice.getListTerms();
        mav.addObject("termsList", termsList);

        List<Users> usersList = new ArrayList<>();
        usersList = usersService.getByLocationAndPostAndRole(userLocation, userPost, 8);
        mav.addObject("userSelectList", usersList);
        /** mav object end **/

        return mav;
    }

    @PostMapping(value = INITIALDECISIONCONFIRMXBBFINISH)
    public ModelAndView saveFromXBB(InDec inDec, HttpServletRequest request, @RequestParam String cmdtId, @RequestParam String appId) {
        ModelAndView mav = new ModelAndView("resources/pages/InitialDecision/InitialDecisionRasp");

        String userId = (String) request.getSession().getAttribute("userId");
        String userName = (String) request.getSession().getAttribute("userName");
        Integer userRole = (Integer) request.getSession().getAttribute("userRole");
        String userRoleName = (String) request.getSession().getAttribute("userRoleName");
        String userLocation = (String) request.getSession().getAttribute("userLocation");
        String userLocationName = (String) request.getSession().getAttribute("userLocationName");
        String userPost = (String) request.getSession().getAttribute("userPost");

        Apps apps = appsService.findById(appId);
        Status status2 = statusService.getById(170);

        apps.setStatus(170);
        apps.setStatusNm(status2.getName());
        appsService.saveAppsStatus(apps);

        /** mav object start **/
        List<Apps> notSortedList = new ArrayList<>();
        notSortedList = appsservice.getListNotSorted(request, userLocation, userPost, userId, userRole);
        mav.addObject("notSortedList", notSortedList);

        List<Apps> sortedList = new ArrayList<>();
        sortedList = appsservice.getListSorted();
        mav.addObject("sortedList", sortedList);

        List<Apps> termsList = new ArrayList<>();
        termsList = appsservice.getListTerms();
        mav.addObject("termsList", termsList);

        List<Users> usersList = new ArrayList<>();
        usersList = usersService.getByLocationAndPostAndRole(userLocation, userPost, 8);
        mav.addObject("userSelectList", usersList);
        /** mav object end **/

        return mav;
    }
}