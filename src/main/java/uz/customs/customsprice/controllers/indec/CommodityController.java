package uz.customs.customsprice.controllers.indec;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import uz.customs.customsprice.entity.InitialDecision.*;
import uz.customs.customsprice.entity.Rate.Rate20;
import uz.customs.customsprice.entity.Rate.Rate27New;
import uz.customs.customsprice.entity.Rate.Rate29;
import uz.customs.customsprice.entity.files.Docs;
import uz.customs.customsprice.payload.ResponseCustom;
import uz.customs.customsprice.repository.CommodityRepo;
import uz.customs.customsprice.service.*;
import uz.customs.customsprice.service.Rate.Rate20Service;
import uz.customs.customsprice.service.Rate.Rate27NewService;
import uz.customs.customsprice.service.Rate.Rate29Service;
import uz.customs.customsprice.utils.Utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
    //    Date date = new SimpleDateFormat("dd-MM-yyyy").format(new Date());
    Date date = new Date();

    private final CommodityService commodityService;
    private final CommodityRepo commodityRepo;
    private final AppsService appsservice;
    private final RollbackSpService rollbackSpService;
    private final DocsService docsService;
    private final PaymentTypeService paymentTypeService;
    private final PaymTypeService paymTypeService;
    private final ExchangerateService exchangerateService;
    private final Rate20Service rate20Service;
    private final Rate27NewService rate27NewService;
    private final Rate29Service rate29Service;


    private final String INITIALDECISIONVIEWCMDT = "/resources/pages/InitialDecision/InitialDecisionSteps/Steps";
    private final String INITIALDECISIONVIEWCMDTVAL = "/resources/pages/InitialDecision/InitialDecisionSteps/Steps44";

    public CommodityController(CommodityService commodityService, CommodityRepo commodityRepo, AppsService appsservice, RollbackSpService rollbackSpService, DocsService docsService, PaymentTypeService paymentTypeService, PaymTypeService paymTypeService, ExchangerateService exchangerateService, Rate20Service rate20Service, Rate27NewService rate27NewService, Rate29Service rate29Service) {
        this.commodityService = commodityService;
        this.commodityRepo = commodityRepo;
        this.appsservice = appsservice;
        this.rollbackSpService = rollbackSpService;
        this.docsService = docsService;
        this.paymentTypeService = paymentTypeService;
        this.paymTypeService = paymTypeService;
        this.exchangerateService = exchangerateService;
        this.rate20Service = rate20Service;
        this.rate27NewService = rate27NewService;
        this.rate29Service = rate29Service;
    }


    @PostMapping(value = INITIALDECISIONVIEWCMDT)
    @ResponseBody
    public ModelAndView InitialDecisionViewCmdt(HttpSession session, HttpServletRequest request, @RequestParam String cmdt_id, @RequestParam Integer x, @RequestParam String appId, @RequestParam(defaultValue = "0") String paymentType) {

//        if (x != 4) paymentType = "0";

        ModelAndView mav = new ModelAndView();
        ModelAndView mav1 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps1");
        ModelAndView mav2 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps2");
        ModelAndView mav3 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps3");
        ModelAndView mav4 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps4");
        ModelAndView mav5 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps4Status145");
        ModelAndView mav6 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps4Status160");
        ModelAndView mav7 = new ModelAndView("resources/pages/InitialDecision/InitialDecisionSteps/Steps4StatusDefault");
        String COMMODITY_ID = Utils.nullClear(String.valueOf(session.getAttribute("COMMODITY_ID")));
        String APPLICATION_ID = Utils.nullClear(String.valueOf(session.getAttribute("APPLICATION_ID")));

        switch (x) {
            case 1:
                mav1.addObject("commodityF", new Commodity());
                List<Commodity> commodityList = appsservice.getCommodityList(cmdt_id);
                if (commodityList.size() > 0) mav1.addObject("commodity", commodityList);
                else mav1.addObject("commodity", "0");
                session.setAttribute("COMMODITY_ID", commodityList.get(0).getId());
                session.setAttribute("APPLICATION_ID", commodityList.get(0).getAppId());
                mav = mav1;
                break;
            case 2:
                List<Commodity> commodityList2 = appsservice.getCommodityList(COMMODITY_ID);
                mav2.addObject("commodity", commodityList2);
                mav = mav2;
                break;
            case 3:
                List<Docs> docsList = appsservice.getDocsListAppId(APPLICATION_ID);
                mav3.addObject("docsList", docsList);
                mav = mav3;
                break;
            case 4:
                Integer userRole = (Integer) request.getSession().getAttribute("userRole");
                Apps apps = appsservice.findById(APPLICATION_ID);

                /** Агар ариза янги бўлса ва фойдаланувчи ёки хбб тўл.ходим ёки хбб тўл.бош бўдса **/
                if (apps.getStatus() == 110 && (userRole == 8)) {
                    List<RollbackSp> listRollbackSp = rollbackSpService.getlistRollbackSp();
                    List<PaymenttypeEntity> paymenttypeEntityList = paymentTypeService.getListPaymentType();
                    List<PaymtypeEntity> paymtypeEntityList = paymTypeService.getListPaymType();
                    mav4.addObject("rollbackInfo", listRollbackSp);
                    mav4.addObject("cmdtId", COMMODITY_ID);
                    mav4.addObject("paymenttype", paymenttypeEntityList);
                    mav4.addObject("paymttype", paymtypeEntityList);
                    mav = mav4;

                } else if (apps.getStatus() == 110 && (userRole != 8 || userRole != 7)) {
                    mav7.addObject("appInfo", apps);
                    mav = mav7;
                }
                /** Агар ариза  хбб тўл.ходими томонидан хбб тўл.бош га тасдиқлашга жўнатилган бўлса **/
                if (apps.getStatus() == 145 && userRole == 7) {
                    mav = mav5;
                } else if (apps.getStatus() == 145 && userRole != 7) {
                    mav7.addObject("appInfo", apps);
                    mav = mav7;
                }

                /** Агар ариза хбб тўл.бош томонидан хбб бош га имзолашга жўнатилган бўлса **/
                if (apps.getStatus() == 160 && userRole == 6) {
                    mav6.addObject("cmdtId", COMMODITY_ID);
                    mav = mav6;
                } else if (apps.getStatus() == 160 && userRole != 6) {
                    mav7.addObject("appInfo", apps);
                    mav = mav7;
                }
                /** Ариза холати фақат **/
                if (apps.getStatus() != 160 && apps.getStatus() != 110 && apps.getStatus() != 145) {
                    mav7.addObject("appInfo", apps);
                    mav = mav7;
                }

                break;
            default:
        }
        return mav;
    }

    @PostMapping(value = INITIALDECISIONVIEWCMDTVAL)
    public ResponseEntity<ResponseCustom> InitialDecisionViewCmdtTol(HttpSession session, HttpServletRequest request, @RequestParam String cmdt_id, @RequestParam Integer x, @RequestParam String appId, @RequestParam(defaultValue = "0") String paymentType) {

        ResponseCustom responseCustom = new ResponseCustom();

        Optional<Commodity> commodity = commodityService.getById(cmdt_id);
        String currCode = commodity.get().getCurrencyType();
        String tnved = commodity.get().getHsCode();
        BigDecimal g47AltRate = BigDecimal.valueOf(0.0);
        String g47AltBaseEdIzm = commodity.get().getExtraUnits(); //todo (Қўшимча ўлчов бирлиги коди)
        if (Utils.nullClear(g47AltBaseEdIzm).equals("166")) g47AltRate = commodity.get().getNetto(); //todo (Хос ставка миқдори)
        else g47AltRate = commodity.get().getExtraQty(); //todo (Хос ставка миқдори)

        Exchangerate exchangerate = exchangerateService.getTop1ByIdOrderByDateSetDesc(currCode);
        Exchangerate exchangerate840 = exchangerateService.getTop1ByIdOrderByDateSetDesc("840");
        Double rate = exchangerate.getRate() * exchangerate.getAmount();
        Double rate840 = exchangerate840.getRate() * exchangerate840.getAmount();
        Double cmdtPrice = Double.parseDouble(String.valueOf(commodity.get().getPrice()));
        Double g47AltBase = 0.0; //todo (Адвалор ставка)
        Double g47Rate = 0.0; //todo (Хос ставка)
        Double g47Base = cmdtPrice * rate; // todo (Хисоблаш асоси)
        Double sumAll = 0.0;
        Double g47Sum = 0.0;
        String unitRate = "";
        short typeRate = 0;
        BigDecimal advRate = BigDecimal.valueOf(0.0);
        BigDecimal altRate = BigDecimal.valueOf(0.0);

        String paymentTypeS = Utils.nullClear(paymentType);
        if (!"".equals(paymentTypeS) && !"0".equals(paymentTypeS)) {

            if ("20".equals(paymentTypeS)) {
                Rate20 rate20 = rate20Service.getdByTnved(tnved);
                typeRate = rate20.getTypeRate();
                unitRate = rate20.getUnitRateCode();
                advRate = rate20.getAdvRate();
                altRate = rate20.getAltRate();

                if (typeRate == 0) {
                    g47AltBase = (g47Base * Double.parseDouble(String.valueOf(advRate))) / 100;
                    g47Rate = 0.0;
                    g47Sum = g47AltBase;
                }

                if (typeRate == 1) {
                    g47AltBase = (g47Base * Double.parseDouble(String.valueOf(advRate))) / 100;
                    if (unitRate.equals(g47AltBaseEdIzm)) {
                        g47Rate = Double.parseDouble(String.valueOf(altRate)) * Double.parseDouble(String.valueOf(g47AltRate)) * rate840;
                    } else {
                        g47Rate = 0.0;

                    }
                    if (g47AltBase > g47Rate) g47Sum = g47AltBase;
                    else g47Sum = g47Rate;
                }

                if (typeRate == 2) {
                    g47AltBase = (g47Base * Double.parseDouble(String.valueOf(advRate))) / 100;
                    if (unitRate.equals(g47AltBaseEdIzm)) {
                        g47Rate = Double.parseDouble(String.valueOf(altRate)) * Double.parseDouble(String.valueOf(g47AltRate)) * rate840;
                    } else {
                        g47Rate = 0.0;
                    }
                    g47Sum = g47AltBase + g47Rate;
                }
            }

            if ("27".equals(paymentTypeS)) {
                Rate27New rate27New = rate27NewService.getdByTnved(tnved);
                typeRate = rate27New.getTypeRate();
                unitRate = rate27New.getUnitRateCode();
                advRate = rate27New.getAdvRate();
                altRate = rate27New.getAltRate();

                if (typeRate == 0) {
                    g47AltBase = (g47Base * Double.parseDouble(String.valueOf(advRate))) / 100;
                    g47Rate = 0.0;
                    g47Sum = g47AltBase;
                }

                if (typeRate == 1) {
                    g47AltBase = (g47Base * Double.parseDouble(String.valueOf(advRate))) / 100;
                    if (unitRate.equals(g47AltBaseEdIzm)) {
                        g47Rate = Double.parseDouble(String.valueOf(altRate)) * Double.parseDouble(String.valueOf(g47AltRate)) * rate840;
                    } else {
                        g47Rate = 0.0;

                    }
                    if (g47AltBase > g47Rate) g47Sum = g47AltBase;
                    else g47Sum = g47Rate;
                }

                if (typeRate == 2) {
                    g47AltBase = (g47Base * Double.parseDouble(String.valueOf(advRate))) / 100;
                    if (unitRate.equals(g47AltBaseEdIzm)) {
                        g47Rate = Double.parseDouble(String.valueOf(altRate)) * Double.parseDouble(String.valueOf(g47AltRate)) * rate840;
                    } else {
                        g47Rate = 0.0;
                    }
                    g47Sum = g47AltBase + g47Rate;
                }
            }

            if ("29".equals(paymentTypeS)) {
                Rate29 rate29 = rate29Service.getdByTnved(tnved);
                advRate = rate29.getVatRate();
                g47Sum = (Double.parseDouble(String.valueOf(advRate)) * Double.parseDouble(String.valueOf(g47Base))) / 100;
            }


        }

        responseCustom.setG47Base(String.valueOf(g47Base)); // todo (Хисоблаш асоси)
        responseCustom.setG47AltBase(String.valueOf(g47AltBase)); //todo (Адвалор ставка)
        responseCustom.setG47AltRate(String.valueOf(g47AltRate)); //todo (Хос ставка миқдори)
        responseCustom.setG47Rate(String.valueOf(g47Rate));  //todo (Хос ставка)
        responseCustom.setG47Sum(String.valueOf(g47Sum)); //todo (Ҳисобланган тўловлар)
        responseCustom.setUnitRate(unitRate);  //todo (Хос ставканинг Қўшимча ўлчов бирлигидаги коди)
        responseCustom.setAltRate(altRate.toString()); //todo (Хос ставка миқдорининг бирлик (1 - лик) миқдори)
        responseCustom.setAdvRate(advRate.toString()); //todo (Адвалор ставка фоиздаги миқдори)
        responseCustom.setG47AltBaseEdIzm(g47AltBaseEdIzm); //todo (Қўшимча ўлчов бирлиги коди)
        responseCustom.setRate840(rate840.toString()); //todo (Ақш доллар суммаси)
        responseCustom.setTypeRate(String.valueOf(typeRate)); //todo (Ҳисоблаш шакли)
        responseCustom.toString();
        return ResponseEntity.ok(responseCustom);
    }
}
