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
                "    a.in_dec_date,\n" +
                "    a.in_dec_num,\n" +
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
    public List<Apps> getListSorted() {
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
                "    a.in_dec_date,\n" +
                "    a.in_dec_num,\n" +
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
        return (List<Apps>) entityManager.createNativeQuery(queryForList, Apps.class).getResultList();
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
                "    a.in_dec_date,\n" +
                "    a.in_dec_num,\n" +
                "    a.location_id,\n" +
                "    a.location_nm,\n" +
                "    a.org_name,        \n" +
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
        queryForList = "SELECT\n" +
                /*todo 0 - */ "    a.id,\n" +
                /*todo 1 - */ "    a.app_num,\n" +
                /*todo 2 - */ "    a.app_date,\n" +
                /*todo 3 - */ "    a.customer_country_nm,\n" +
                /*todo 4 - */ "    a.customer_country,\n" +
                /*todo 5 - */ "    a.in_dec_date,\n" +
                /*todo 6 - */ "    a.in_dec_num,\n" +
                /*todo 7 - */ "    a.location_id,\n" +
                /*todo 8 - */ "    a.location_nm,\n" +
                /*todo 9 - */ "    a.org_name,\n" +
                /*todo 10 - */ "    a.origin_country,\n" +
                /*todo 11 - */ "    a.origin_org,\n" +
                /*todo 12 - */ "    a.origin_country_nm,\n" +
                /*todo 13 - */ "    a.person_addr,\n" +
                /*todo 14 - */ "    a.person_fio,\n" +
                /*todo 15 - */ "    a.person_mail,\n" +
                /*todo 16 - */ "    a.person_phone,\n" +
                /*todo 17 - */ "    a.person_pin,\n" +
                /*todo 18 - */ "    a.person_position,\n" +
                /*todo 19 - */ "    a.person_tin,\n" +
                /*todo 20 - */ "    a.seller_org,\n" +
                /*todo 21 - */ "    a.sender_country,\n" +
                /*todo 22 - */ "    a.sender_country_nm,\n" +
                /*todo 23 - */ "    a.sender_org,\n" +
                /*todo 24 - */ "    a.status,\n" +
                /*todo 25 - */ "    d.sign terms,\n" +
                /*todo 26 - */ "    a.terms_addr,\n" +
                /*todo 27 - */ "    a.trans_exp,\n" +
                /*todo 28 - */ "    a.person_id,\n" +
                /*todo 29 - */ "    s.name status_nm,\n" +
                /*todo 30 - */ "    a.instime,\n" +
                /*todo 31 - */ "    SUM(cm.netto)  allNetto,\n" +
                /*todo 32 - */ "    SUM(cm.brutto) allBrutto,\n" +
                /*todo 33 - */ "    SUM(cm.price)  allPrice,\n" +
                /*todo 34 - */ "    COUNT(cm.id) cntCmdt\n" +
                "FROM\n" +
                "    apps a\n" +
                "LEFT JOIN\n" +
                "    cpid.status_type s\n" +
                "ON\n" +
                "    s.id=a.status\n" +
                "AND s.isdeleted=0\n" +
                "LEFT JOIN\n" +
                "    cpid.delivery_terms d\n" +
                "ON\n" +
                "    d.raqam= a.terms\n" +
                "AND d.lnga_tpcd='UZ'\n" +
                "LEFT JOIN\n" +
                "    cpid.COMMODITY cm\n" +
                "ON\n" +
                "    a.ID = cm.APP_ID\n" +
                "AND cm.ISDELETED=0\n" +
                "WHERE\n" +
                " a.id = '" + app_id + "' " +
//                " and a.status in (170, 175)\n" +
                " and a.isdeleted=0\n" +
                "GROUP BY\n" +
                "    a.id,\n" +
                "    a.app_num,\n" +
                "    a.app_date,\n" +
                "    a.customer_country_nm,\n" +
                "    a.customer_country,\n" +
                "    a.in_dec_date,\n" +
                "    a.in_dec_num,\n" +
                "    a.location_id,\n" +
                "    a.location_nm,\n" +
                "    a.org_name,\n" +
                "    a.origin_country,\n" +
                "    a.origin_org,\n" +
                "    a.origin_country_nm,\n" +
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
                "    d.sign,\n" +
                "    a.terms_addr,\n" +
                "    a.trans_exp,\n" +
                "    a.person_id,\n" +
                "    s.name,\n" +
                "    a.instime\n" +
                "ORDER BY\n" +
                "    a.instime DESC";
        return (List<Apps>) entityManager.createNativeQuery(queryForList).getResultList();
//        return (List<Apps>) entityManager.createNativeQuery(queryForList, Apps.class).getResultList();
    }

    /* 7) Битта Ариза "id" бўйича барча товарлар */
    public List<Commodity> getInitialDecisionViewCommodity(String app_id) {
        String queryForList = "SELECT\n" +
                "    c.ID, \n" +
                "    c.INSTIME, \n" +
                "    c.INSUSER, \n" +
                "    c.ISDELETED, \n" +
                "    c.UPDTIME, \n" +
                "    c.UPDUSER, \n" +
                "    c.APP_ID, \n" +
                "    c.ARTICLE, \n" +
                "    c.BASIC_QTY, \n" +
                "    c.BRUTTO, \n" +
                "    c.CARGO_SPACE, \n" +
                "    c.COM_PROP, \n" +
                "    c.CURRENCY_TYPE, \n" +
                "    c.EXTRA_INFO, \n" +
                "    c.EXTRA_QTY, \n" +
                "    c.EXTRA_UNITS, \n" +
                "    c.FUNCTIONS, \n" +
                "    c.HS_CODE, \n" +
                "    c.HS_DEC_DATE, \n" +
                "    c.HS_DEC_NUM, \n" +
                "    c.MARK, \n" +
                "    c.METHOD, \n" +
                "    c.METHOD_NM, \n" +
                "    c.MODEL, \n" +
                "    c.NETTO, \n" +
                "    c.PACK_QTY, \n" +
                "    c.PACK_TYPE, \n" +
                "    c.PACK_TYPE_NM, \n" +
                "    c.PRICE, \n" +
                "    c.PRODUCT_GOAL, \n" +
                "    c.SORT, \n" +
                "    c.STANDARTS, \n" +
                "    c.TECH_CHAR, \n" +
                "    c.TRADE_MARK, \n" +
                "    c.TRADE_NAME\n" +
                "FROM\n" +
                "    CPID.COMMODITY c\n" +
                "LEFT JOIN\n" +
                "    CPID.APPS a\n" +
                "ON\n" +
                "    c.APP_ID = a.ID\n" +
                "AND a.ISDELETED = 0\n" +
                "WHERE\n" +
                " c.APP_ID = '" + app_id + "' " +
                "AND c.ISDELETED = 0";
        return (List<Commodity>) entityManager.createNativeQuery(queryForList, Commodity.class).getResultList();
    }

    /* 8) Битта товар "id" бўйича барча товар маълумотлари */
    public List<Commodity> getInitialDecisionViewCommodityOne(String cmdt_id) {
        String queryForList = "SELECT\n" +
                "    c.ID, \n" +
                "    c.INSTIME, \n" +
                "    c.INSUSER, \n" +
                "    c.ISDELETED, \n" +
                "    c.UPDTIME, \n" +
                "    c.UPDUSER, \n" +
                "    c.APP_ID, \n" +
                "    c.ARTICLE, \n" +
                "    c.BASIC_QTY, \n" +
                "    c.BRUTTO, \n" +
                "    c.CARGO_SPACE, \n" +
                "    c.COM_PROP, \n" +
                "    c.CURRENCY_TYPE, \n" +
                "    c.EXTRA_INFO, \n" +
                "    c.EXTRA_QTY, \n" +
                "    c.EXTRA_UNITS, \n" +
                "    c.FUNCTIONS, \n" +
                "    c.HS_CODE, \n" +
                "    c.HS_DEC_DATE, \n" +
                "    c.HS_DEC_NUM, \n" +
                "    c.MARK, \n" +
                "    c.METHOD, \n" +
                "    c.METHOD_NM, \n" +
                "    c.MODEL, \n" +
                "    c.NETTO, \n" +
                "    c.PACK_QTY, \n" +
                "    c.PACK_TYPE, \n" +
                "    c.PACK_TYPE_NM, \n" +
                "    c.PRICE, \n" +
                "    c.PRODUCT_GOAL, \n" +
                "    c.SORT, \n" +
                "    c.STANDARTS, \n" +
                "    c.TECH_CHAR, \n" +
                "    c.TRADE_MARK, \n" +
                "    c.TRADE_NAME\n" +
                "FROM\n" +
                "    CPID.COMMODITY c\n" +
                "LEFT JOIN\n" +
                "    CPID.APPS a\n" +
                "ON\n" +
                "    c.APP_ID = a.ID\n" +
                "AND a.ISDELETED = 0\n" +
                "WHERE\n" +
                " c.ID = '" + cmdt_id + "' " +
                "AND c.ISDELETED = 0";
        return (List<Commodity>) entityManager.createNativeQuery(queryForList, Commodity.class).getResultList();
    }

    public List<Apps> listAll() {
        return appsRepo.findAll();
    }

}
