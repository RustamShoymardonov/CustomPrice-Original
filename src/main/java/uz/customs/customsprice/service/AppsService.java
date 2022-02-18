package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.Apps;
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

    /* Барча статуси "Янги" бўлган аризалар */
    public List<Apps> getListNotSorted() {
        String queryForList = "select\n" +
                "    a.id,\n" +
                "    a.instime,\n" +
                "    a.insuser,\n" +
                "    a.isdeleted,\n" +
                "    a.updtime,\n" +
                "    a.upduser,\n" +
                "    a.app_num,\n" +
                "    c.cd_nm customer_country_nm,\n" +
                "    a.customer_country,\n" +
                "    a.in_dec_date,\n" +
                "    a.in_dec_num,\n" +
                "    a.location_id,\n" +
                "    a.location_nm,\n" +
                "    a.org_name,\n" +
                "    a.origin_country,\n" +
                "    a.origin_org,\n" +
                "    c2.cd_nm origin_country_nm,\n" +
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
                "    s.name status_nm,\n" +
                "    a.terms,\n" +
                "    a.terms_addr,\n" +
                "    a.trans_exp\n" +
                "from\n" +
                "    apps a\n" +
                "left join\n" +
                "    cpid.status_type s\n" +
                "on\n" +
                "    s.id=a.status\n" +
                "left join\n" +
                "    cpid.country c\n" +
                "on\n" +
                "   c.code= a.customer_country\n" +
                " and c.lnga_tpcd='UZ' "+
                "left join\n" +
                "    cpid.country c2\n" +
                "on\n" +
                "   c2.code= a.ORIGIN_COUNTRY\n" +
                " and c2.lnga_tpcd='UZ' "+
                "where\n" +
                "    a.isdeleted=0 \n" +
                "and a.status=100\n" +
                "order by\n" +
                "    a.instime desc";
        return (List<Apps>) entityManager.createNativeQuery(queryForList, Apps.class).getResultList();
    }

    /*Барча статуси "Янги"+"Имзоланган"+"Бекор қилинган" дан ташқари бўлган аризалар*/
    public List<Apps> getListSorted() {
        String queryForList = "select\n" +
                "    a.id,\n" +
                "    a.instime,\n" +
                "    a.insuser,\n" +
                "    a.isdeleted,\n" +
                "    a.updtime,\n" +
                "    a.upduser,\n" +
                "    a.app_num,\n" +
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
                "    s.name status_nm,\n" +
                "    a.terms,\n" +
                "    a.terms_addr,\n" +
                "    a.trans_exp\n" +
                "from\n" +
                "    apps a\n" +
                "left join\n" +
                "    cpid.status_type s\n" +
                "on\n" +
                "    s.id=a.status\n" +
                "and s.isdeleted=0\n" +
                "where\n" +
                "    a.isdeleted=0 \n" +
                "and a.status !=100\n" +
                "and a.status !=170\n" +
                "and a.status !=175\n" +
                "order by\n" +
                "    a.instime desc";
        return (List<Apps>) entityManager.createNativeQuery(queryForList, Apps.class).getResultList();
    }

    /*Статуси "фақат "Имзоланган"+"Бекор қилинган" бўлган аризалар*/
    public List<Apps> getListTerms() {
        String queryForList = "select\n" +
                "    a.id,\n" +
                "    a.instime,\n" +
                "    a.insuser,\n" +
                "    a.isdeleted,\n" +
                "    a.updtime,\n" +
                "    a.upduser,\n" +
                "    a.app_num,\n" +
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
                "    d.sign terms,\n" +
                "    a.terms_addr,\n" +
                "    a.trans_exp,\n" +
                "    s.name status_nm\n" +
                "from\n" +
                "    apps a\n" +
                "left join\n" +
                "    cpid.status_type s\n" +
                "on\n" +
                "    s.id=a.status\n" +
                "and s.isdeleted=0\n" +
                "left join\n" +
                "    cpid.delivery_terms d\n" +
                "on\n" +
                "    d.raqam= a.terms\n" +
                "and d.lnga_tpcd='UZ'\n" +
                "where\n" +
                "    a.isdeleted=0\n" +
                "and a.status in (170,175)\n" +
                "order by\n" +
                "    a.instime desc";
        return (List<Apps>) entityManager.createNativeQuery(queryForList, Apps.class).getResultList();
    }

    /* "app_num" га ариза рафамини киритади */
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

    /* "app_num" учун рақам генерация қилади */
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
            if (lastNumber == "null") {
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

    public List<Apps> listAll() {
        return appsRepo.findAll();
    }

    public List getInitialDecisionView(String id) {
        String queryForList = "select\n" +
                "    a.id,\n" +
                "    a.instime,\n" +
                "    a.insuser,\n" +
                "    a.isdeleted,\n" +
                "    a.updtime,\n" +
                "    a.upduser,\n" +
                "    a.app_num,\n" +
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
                "    d.sign terms,\n" +
                "    a.terms_addr,\n" +
                "    a.trans_exp,\n" +
                "    s.name status_nm\n" +
                "from\n" +
                "    apps a\n" +
                "left join\n" +
                "    cpid.status_type s\n" +
                "on\n" +
                "    s.id=a.status\n" +
                "and s.isdeleted=0\n" +
                "left join\n" +
                "    cpid.delivery_terms d\n" +
                "on\n" +
                "    d.raqam= a.terms\n" +
                "and d.lnga_tpcd='UZ'\n" +
                "where\n" +
                "    a.isdeleted=0\n" +
                "and a.id = + 'id'"+
                "and a.status in (110)\n"+
                "order by\n" +
                "    a.instime desc";
        return entityManager.createNativeQuery(queryForList).getResultList();
//        return (List<Apps>) entityManager.createNativeQuery(queryForList, Apps.class).getResultList();
    }
}
