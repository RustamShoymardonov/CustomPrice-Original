package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.Apps;
import uz.customs.customsprice.entity.InitialDecision.Commodity;
import uz.customs.customsprice.repository.AppsRepo;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class AppsService {
    private final AppsRepo appsRepo;

    public AppsService(AppsRepo appsRepo) {
        this.appsRepo = appsRepo;
    }

    @PersistenceContext
    private EntityManager entityManager;


    /* 1) Барча статуси "Янги" бўлган аризалар */
    public List<Apps> getListNotSorted() {
//        appsRepo.findByStatus(100);
        String queryForList = "select\n" +
                "    a.id,\n" +
                "    a.instime,\n" +
                "    a.insuser,\n" +
                "    a.isdeleted,\n" +
                "    a.updtime,\n" +
                "    a.upduser,\n" +
                "    a.app_num,\n" +
                "    a.app_date,\n" +
                "    a.customer_country_nm,\n" +
                "    a.customer_country,\n" +
                "    a.location_id,\n" +
                "    a.location_nm,\n" +
                "    a.org_name,\n" +
                "    a.person_addr,\n" +
                "    a.person_fio,\n" +
                "    a.person_mail,\n" +
                "    a.person_phone,\n" +
                "    a.person_pin,\n" +
                "    a.person_position,\n" +
                "    a.person_tin,\n" +
                "    a.seller_org,\n" +
                "    a.sender_country,\n" +
                "    a.sender_country_nm,\n" +
                "    a.sender_org,\n" +
                "    a.status,\n" +
                "    a.status_nm,\n" +
                "    a.terms,\n" +
                "    a.terms_nm,\n" +
                "    a.terms_addr,\n" +
                "    a.trans_exp,\n" +
                "    a.person_id\n" +
                "from\n" +
                "    apps a\n" +
                "where\n" +
                "    a.status=100\n" +
                "and a.isdeleted=0\n" +
                "order by\n" +
                "    a.instime desc";
        return (List<Apps>) entityManager.createNativeQuery(queryForList, Apps.class).getResultList();
    }

    /* 2)Барча статуси "Янги"+"Имзоланган"+"Бекор қилинган" дан ташқари бўлган аризалар*/
    public List getListSorted() {
        String queryForList = "select\n" +
                "    a.id,\n" +
                "    a.instime,\n" +
                "    a.insuser,\n" +
                "    a.isdeleted,\n" +
                "    a.updtime,\n" +
                "    a.upduser,\n" +
                "    a.app_num,\n" +
                "    a.app_date,\n" +
                "    a.customer_country_nm,\n" +
                "    a.customer_country,\n" +
                "    a.location_id,\n" +
                "    a.location_nm,\n" +
                "    a.org_name,\n" +
                "    a.person_addr,\n" +
                "    a.person_fio,\n" +
                "    a.person_mail,\n" +
                "    a.person_phone,\n" +
                "    a.person_pin,\n" +
                "    a.person_position,\n" +
                "    a.person_tin,\n" +
                "    a.seller_org,\n" +
                "    a.sender_country,\n" +
                "    a.sender_country_nm,\n" +
                "    a.sender_org,\n" +
                "    a.status,\n" +
                "    a.status_nm,\n" +
                "    a.terms,\n" +
                "    a.terms_nm,\n" +
                "    a.terms_addr,\n" +
                "    a.trans_exp\n" +
                "from\n" +
                "    apps a\n" +
                "where\n" +
                "    a.status not in (100,\n" +
                "                     170,\n" +
                "                     175)\n" +
                "and a.isdeleted=0\n" +
                "order by\n" +
                "    a.instime desc";
        return  entityManager.createNativeQuery(queryForList).getResultList();
    }

    /* 3) Статуси фақат "Имзоланган"+"Бекор қилинган" бўлган аризалар*/
    public List<Apps> getListTerms() {
        String queryForList = "select\n" +
                "    a.id,\n" +
                "    a.instime,\n" +
                "    a.insuser,\n" +
                "    a.isdeleted,\n" +
                "    a.updtime,\n" +
                "    a.upduser,\n" +
                "    a.app_num,\n" +
                "    a.app_date,\n" +
                "    a.customer_country_nm,\n" +
                "    a.customer_country,\n" +
                "    a.location_id,\n" +
                "    a.location_nm,\n" +
                "    a.org_name, \n" +
                "    a.person_addr,\n" +
                "    a.person_fio,\n" +
                "    a.person_mail,\n" +
                "    a.person_phone,\n" +
                "    a.person_pin,\n" +
                "    a.person_position,\n" +
                "    a.person_tin,\n" +
                "    a.seller_org,\n" +
                "    a.sender_country,\n" +
                "    a.sender_country_nm,\n" +
                "    a.sender_org,\n" +
                "    a.status,\n" +
                "    a.terms_nm,\n" +
                "    a.terms_addr,\n" +
                "    a.trans_exp,\n" +
                "    a.status_nm\n" +
                "from\n" +
                "    apps a\n" +
                "where\n" +
                "    a.isdeleted=0\n" +
                "and a.status in (170,175)\n" +
                "order by\n" +
                "    a.instime desc";
        return (List<Apps>) entityManager.createNativeQuery(queryForList, Apps.class).getResultList();
    }

    /* 4) <<app_num>> га ариза рафамини киритади */
    public Apps saveApps(Apps apps) {
        LocalDateTime now = LocalDateTime.now();
        String appsNum = getMaxNumber();
        String currentDateFormat = "";
        currentDateFormat = currentDateFormat + now.getYear() % 100;
        if (now.getMonthValue() < 10)
            currentDateFormat += "0" + now.getMonthValue();
        else
            currentDateFormat += now.getMonthValue();
        if (now.getDayOfMonth() < 10)
            currentDateFormat += "0" + now.getDayOfMonth();
        else
            currentDateFormat += now.getDayOfMonth();
        currentDateFormat = currentDateFormat + appsNum;
        apps.setAppNum(currentDateFormat);
        return appsRepo.save(apps);
    }

    /* 5) <<app_num>> учун рақам генерация қилади */
    public String getMaxNumber() {
        String queryForList = "select\n" +
                "    a.APP_NUM as maxno\n" +
                "from\n" +
                "    CPID.Apps as a\n" +
                "order by\n" +
                "    a.instime desc\n" +
                "fetch\n" +
                "    first 1 rows only";
        List resultList = entityManager.createNativeQuery(queryForList).getResultList();
        String lastNumber = "000001";
        if (resultList.size() > 0) {
            lastNumber = String.valueOf(resultList.get(0));
//            if (lastNumber == "null") {
            if (lastNumber == null || lastNumber.equals("null") || lastNumber.equals("")) {
                lastNumber = "000001";
            }
        }
        LocalDateTime now = LocalDateTime.now();
        String currentDateFormat = "";
        String result = "";
        currentDateFormat = currentDateFormat + now.getYear() % 100;
        if (now.getMonthValue() < 10)
            currentDateFormat += "0" + now.getMonthValue();
        else
            currentDateFormat += now.getMonthValue();
        if (now.getDayOfMonth() < 10)
            currentDateFormat += "0" + now.getDayOfMonth();
        else
            currentDateFormat += now.getDayOfMonth();
        String lastDay = lastNumber.substring(0, 6);
        if (!lastDay.equals(currentDateFormat)) {
            result = "000001";
        } else {
            int resultLastNumber = Integer.parseInt(lastNumber.substring(6)) + 1;
            if (resultLastNumber < 10) {
                result = "00000" + resultLastNumber;
            } else if (resultLastNumber < 100) {
                result = "0000" + resultLastNumber;
            } else if (resultLastNumber < 1000) {
                result = "000" + resultLastNumber;
            } else if (resultLastNumber < 10000) {
                result = "00" + resultLastNumber;
            } else if (resultLastNumber < 100000) {
                result = "0" + resultLastNumber;
            } else if (resultLastNumber < 1000000) {
                result = Integer.toString(resultLastNumber);
            }
        }
        return result;
    }

    /* 6) <<Мурожаатлар, Тақсимланган мурожаатларб Даст.қарор.реестри>> учун битта "id" бўйича тўлиқ малумот */
    public List<Apps> getInitialDecisionView(String app_id) {
        String queryForList = "";
        queryForList = "select\n" +
                /*0 - */"    a.id,\n" +
                /*1- */"    a.app_num,\n" +
                /*2- */"    a.app_date,\n" +
                /*3- */"    a.customer_country_nm,\n" +
                /*4- */"    a.customer_country,\n" +
                /*5- */"    a.location_id,\n" +
                /*6- */"    a.location_nm,\n" +
                /*7- */"    a.org_name,\n" +
                /*8- */"    a.person_addr,\n" +
                /*9- */"    a.person_fio,\n" +
                /*10 - */"    a.person_mail,\n" +
                /*11 - */"    a.person_phone,\n" +
                /*12 - */"    a.person_pin,\n" +
                /*13 - */"    a.person_position,\n" +
                /*14 - */"    a.person_tin,\n" +
                /*15 - */"    a.seller_org,\n" +
                /*16 - */"    a.sender_country,\n" +
                /*17 - */"    a.sender_country_nm,\n" +
                /*18 - */"    a.sender_org,\n" +
                /*19 - */"    a.status,\n" +
                /*20 - */"    a.status_nm,\n" +
                /*21 - */"    a.terms,\n" +
                /*22 - */"    a.terms_nm,\n" +
                /*23 - */"    a.terms_addr,\n" +
                /*24 - */"    a.trans_exp,\n" +
                /*25 - */"    a.person_id,\n" +
                /*26 - */"    a.instime,\n" +
                /*27 - */"    sum(cm.netto)  allnetto,\n" +
                /*28 - */"    sum(cm.brutto) allbrutto,\n" +
                /*29 - */"    sum(cm.price)  allprice,\n" +
                /*30 - */"    count(cm.id)   cntcmdt\n" +
                "from\n" +
                "    apps a\n" +
                "left join\n" +
                "    cpid.commodity cm\n" +
                "on\n" +
                "    a.id = cm.app_id\n" +
                "and cm.isdeleted=0\n" +
                "where\n" +
                "    a.id = '" + app_id + "' \n" +
                "and a.isdeleted=0\n" +
                "group by\n" +
                "    a.id,\n" +
                "    a.app_num,\n" +
                "    a.app_date,\n" +
                "    a.customer_country_nm,\n" +
                "    a.customer_country,\n" +
                "    a.location_id,\n" +
                "    a.location_nm,\n" +
                "    a.org_name,    \n" +
                "    a.person_addr,\n" +
                "    a.person_fio,\n" +
                "    a.person_mail,\n" +
                "    a.person_phone,\n" +
                "    a.person_pin,\n" +
                "    a.person_position,\n" +
                "    a.person_tin,\n" +
                "    a.seller_org,\n" +
                "    a.sender_country,\n" +
                "    a.sender_country_nm,\n" +
                "    a.sender_org,\n" +
                "    a.status,    \n" +
                "    a.status_nm,    \n" +
                "    a.terms,\n" +
                "    a.terms_nm,\n" +
                "    a.terms_addr,\n" +
                "    a.trans_exp,\n" +
                "    a.person_id, \n" +
                "    a.instime\n" +
                "order by\n" +
                "    a.instime desc";
        return (List<Apps>) entityManager.createNativeQuery(queryForList).getResultList();
//        return (List<Apps>) entityManager.createNativeQuery(queryForList, Apps.class).getResultList();
    }

    /* 7) Битта Ариза "id" бўйича барча товарлар */
    public List<Commodity> getInitialDecisionViewCommodity(String app_id) {
        String queryForList = "select\n" +
                /*0 - */"    c.id,\n" +
                /*1 - */"    c.instime,\n" +
                /*2 - */"    c.insuser,\n" +
                /*3 - */"    c.isdeleted,\n" +
                /*4 - */"    c.updtime,\n" +
                /*5 - */"    c.upduser,\n" +
                /*6 - */"    c.app_id,\n" +
                /*7 - */"    c.article,\n" +
                /*8 - */"    c.basic_qty,\n" +
                /*9 - */"    c.brutto,\n" +
                /*10 - */"    c.cargo_space,\n" +
                /*11 - */"    c.cmdt_num,\n" +
                /*12 - */"    c.com_prop,\n" +
                /*13 - */"    c.currency_type,\n" +
                /*14 - */"    c.extra_info,\n" +
                /*15 - */"    c.extra_qty,\n" +
                /*16 - */"    c.extra_units,\n" +
                /*17 - */"    c.functions,\n" +
                /*18 - */"    c.hs_code,\n" +
                /*19 - */"    c.hs_dec_date,\n" +
                /*20 - */"    c.hs_dec_num,\n" +
                /*21 - */"    c.in_dec_date,\n" +
                /*22 - */"    c.in_dec_num,\n" +
                /*23 - */"    c.HS_NAME, \n" +
                /*24 - */"    c.mark,\n" +
                /*25 - */"    c.method,\n" +
                /*26 - */"    c.method_nm,\n" +
                /*27 - */"    c.model,\n" +
                /*28 - */"    c.netto,\n" +
                /*29 - */"    c.origin_country,\n" +
                /*30 - */"    c.origin_org,\n" +
                /*31 - */"    c.origin_country_nm,\n" +
                /*32 - */"    c.pack_qty,\n" +
                /*33 - */"    c.pack_type,\n" +
                /*34 - */"    c.pack_type_nm,\n" +
                /*35 - */"    c.price,\n" +
                /*36 - */"    c.product_goal,\n" +
                /*37 - */"    c.sort,\n" +
                /*38 - */"    c.standarts,\n" +
                /*39 - */"    c.tech_char,\n" +
                /*40 - */"    c.trade_mark,\n" +
                /*41 - */"    c.trade_name\n" +
                "from\n" +
                "    cpid.commodity c\n" +
                "left join\n" +
                "    cpid.apps a\n" +
                "on\n" +
                "    c.app_id = a.id\n" +
                "and a.isdeleted = 0\n" +
                "where\n" +
                "    c.app_id = '" + app_id + "'\n" +
                "and c.isdeleted = 0";
        return (List<Commodity>) entityManager.createNativeQuery(queryForList, Commodity.class).getResultList();
    }

    /* 8) Битта товар "id" бўйича барча товар маълумотлари */
    public List<Commodity> getCommodityList(String cmdt_id) {
        String queryForList = "select\n" +
                /*0 - */"    c.id, \n" +
                /*1 - */"    c.instime, \n" +
                /*2 - */"    c.insuser, \n" +
                /*3 - */"    c.isdeleted, \n" +
                /*4 - */"    c.updtime, \n" +
                /*5 - */"    c.upduser, \n" +
                /*6 - */"    c.app_id, \n" +
                /*7 - */"    c.article, \n" +
                /*8 - */"    c.basic_qty, \n" +
                /*9 - */"    c.brutto, \n" +
                /*10 - */"    c.cargo_space, \n" +
                /*11 - */"    c.cmdt_num, \n" +
                /*12 - */"    c.com_prop, \n" +
                /*13 - */"    c.currency_type, \n" +
                /*14 - */"    c.extra_info, \n" +
                /*15 - */"    c.extra_qty, \n" +
                /*16 - */"    c.extra_units, \n" +
                /*17 - */"    c.functions, \n" +
                /*18 - */"    c.hs_code, \n" +
                /*19 - */"    c.hs_dec_date, \n" +
                /*20 - */"    c.hs_dec_num, \n" +
                /*21 - */"    c.in_dec_date,\n" +
                /*22 - */"    c.in_dec_num,\n" +
                /*23 - */"    c.HS_NAME, \n" +
                /*24 - */"    c.mark, \n" +
                /*25 - */"    c.method, \n" +
                /*26 - */"    c.method_nm, \n" +
                /*27 - */"    c.model, \n" +
                /*28 - */"    c.netto, \n" +
                /*29 - */"    c.origin_country, \n" +
                /*30 - */"    c.origin_org, \n" +
                /*31 - */"    c.origin_country_nm, \n" +
                /*32 - */"    c.pack_qty, \n" +
                /*33 - */"    c.pack_type, \n" +
                /*34 - */"    c.pack_type_nm, \n" +
                /*35 - */"    c.price, \n" +
                /*36 - */"    c.product_goal, \n" +
                /*37 - */"    c.sort, \n" +
                /*38 - */"    c.standarts, \n" +
                /*39 - */"    c.tech_char, \n" +
                /*40 - */"    c.trade_mark, \n" +
                /*41 - */"    c.trade_name\n" +

                "from\n" +
                "    cpid.commodity c\n" +
                "left join\n" +
                "    cpid.apps a\n" +
                "on\n" +
                "    c.app_id = a.id\n" +
                "and a.isdeleted = 0\n" +
                "where\n" +
                "    c.id = '" + cmdt_id + "'\n" +
                "and c.isdeleted = 0";
        return (List<Commodity>) entityManager.createNativeQuery(queryForList, Commodity.class).getResultList();
    }
//
//    /* 9) Божхона қиймати индекси бўйича хавф даражаси */
//    public List<Apps> getAppsCommodityXBBTList(String cmdt_id) {
//        String queryForList = "select\n" +
//                /*0 - */"    c.id, \n" +
//                /*1 - */"    c.instime, \n" +
//                /*2 - */"    c.insuser, \n" +
//                /*3 - */"    c.isdeleted, \n" +
//                /*4 - */"    c.updtime, \n" +
//                /*5 - */"    c.upduser, \n" +
//                /*6 - */"    c.app_id, \n" +
//                /*7 - */"    c.article, \n" +
//                /*8 - */"    c.basic_qty, \n" +
//                /*9 - */"    c.brutto, \n" +
//                /*10 - */"    c.cargo_space, \n" +
//                /*11 - */"    c.cmdt_num, \n" +
//                /*12 - */"    c.com_prop, \n" +
//                /*13 - */"    c.currency_type, \n" +
//                /*14 - */"    c.extra_info, \n" +
//                /*15 - */"    c.extra_qty, \n" +
//                /*16 - */"    c.extra_units, \n" +
//                /*17 - */"    c.functions, \n" +
//                /*18 - */"    c.hs_code, \n" +
//                /*19 - */"    c.hs_dec_date, \n" +
//                /*20 - */"    c.hs_dec_num, \n" +
//                /*21 - */"    c.in_dec_date,\n" +
//                /*22 - */"    c.in_dec_num,\n" +
//                /*23 - */"    c.HS_NAME, \n" +
//                /*24 - */"    c.mark, \n" +
//                /*25 - */"    c.method, \n" +
//                /*26 - */"    c.method_nm, \n" +
//                /*27 - */"    c.model, \n" +
//                /*28 - */"    c.netto, \n" +
//                /*29 - */"    c.origin_country, \n" +
//                /*30 - */"    c.origin_org, \n" +
//                /*31 - */"    c.origin_country_nm, \n" +
//                /*32 - */"    c.pack_qty, \n" +
//                /*33 - */"    c.pack_type, \n" +
//                /*34 - */"    c.pack_type_nm, \n" +
//                /*35 - */"    c.price, \n" +
//                /*36 - */"    c.product_goal, \n" +
//                /*37 - */"    c.sort, \n" +
//                /*38 - */"    c.standarts, \n" +
//                /*39 - */"    c.tech_char, \n" +
//                /*40 - */"    c.trade_mark, \n" +
//                /*41 - */"    c.trade_name\n" +
//
//                "from\n" +
//                "    cpid.commodity c\n" +
//                "left join\n" +
//                "    cpid.apps a\n" +
//                "on\n" +
//                "    c.app_id = a.id\n" +
//                "and a.isdeleted = 0\n" +
//                "where\n" +
//                "    c.id = '" + cmdt_id + "'\n" +
//                "and c.isdeleted = 0";
//        return (List<Commodity>) entityManager.createNativeQuery(queryForList, Commodity.class).getResultList();
//    }

    public List<Apps> listAll() {
        return appsRepo.findAll();
    }

    public Apps findById(String id) {
        if (appsRepo.findById(id).isPresent())
            return appsRepo.findById(id).get();
        else return null;
    }
    public Apps saveAppsStatus(Apps apps){
        return  appsRepo.save(apps);
    }

}

