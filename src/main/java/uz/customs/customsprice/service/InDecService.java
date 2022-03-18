package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.Apps;
import uz.customs.customsprice.entity.InitialDecision.InDec;
import uz.customs.customsprice.repository.InDecRepo;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class InDecService {
    private final InDecRepo inDecRepo;

    public InDecService(InDecRepo inDecRepo) {
        this.inDecRepo = inDecRepo;
    }

//    public InDec saveInDec(InDec inDec) {
//        return inDecRepo.save(inDec);
//    }

    @PersistenceContext
    private EntityManager entityManager;


    /* 1) <<InDec>> га қарор рақамини киритади */
    public InDec saveInDec(InDec inDec) {
        LocalDateTime now = LocalDateTime.now();
        String inDecNum = getMaxNumber();
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
        currentDateFormat = currentDateFormat + inDecNum;
        inDec.setInDecNum(currentDateFormat);
        return inDecRepo.save(inDec);
    }

    /* 2) <<InDec>> учун қарор рақам генерация қилади */
    public String getMaxNumber() {
        String queryForList = "select\n" +
                "    i.IN_DEC_NUM as maxno\n" +
                "from\n" +
                "    CPID.IN_DEC as i\n" +
                "order by\n" +
                "    i.instime desc\n" +
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
        currentDateFormat = currentDateFormat+ '-' + now.getYear() % 100;
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

}
