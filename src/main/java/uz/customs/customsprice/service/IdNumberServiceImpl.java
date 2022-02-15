package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.IdNumber;
import uz.customs.customsprice.repository.IdNumberRepository;
import uz.customs.customsprice.utils.Utils;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;

@Service
public class IdNumberServiceImpl implements IdNumberService {
    private final IdNumberRepository idNumberRepository;
    @PersistenceContext
    private EntityManager entityManager;

    public IdNumberServiceImpl(IdNumberRepository idNumberRepository) {
        this.idNumberRepository = idNumberRepository;
    }

    @Override
    public IdNumber create(IdNumber idNumber, String type) {
        int year = Calendar.getInstance().get(Calendar.YEAR);
        String MaxNumber = Utils.nullClear(getMaxNumber());
        idNumber.setNumbers(MaxNumber);
        idNumber.setYears(year);
        idNumber.setType(type);
        String Idnumbers = type.trim() + String.valueOf(year).trim() + MaxNumber.trim();
        idNumber.setIdnumbers(Idnumbers);
        return idNumberRepository.save(idNumber);
    }

    @Override
    public IdNumber update(String id, IdNumber idNumber) {
        idNumber.setId(id);
        return idNumberRepository.save(idNumber);
    }

    @Override
    public Optional<IdNumber> getIdNumber(String idNumber) {
        return idNumberRepository.findById(idNumber);
    }

    @Override
    public String getMaxNumber() {
        String queryForList = "select\n" +
                "    right('0000000'||(max(cast(t.mnumber as int)) +1), 7) maxno\n" +
                "from\n" +
                "    (select\n" +
                "          coalesce(nullif(n.NUMBERS, ''), 0) mnumber\n" +
                "     from\n" +
                "          CPID.IDAPPNUMBER n\n" +
                "    where\n" +
                "          n.YEARS=year(current_timestamp)) t";
        List resultList = entityManager.createNativeQuery(queryForList).getResultList();
        return String.valueOf(resultList.get(0));
    }

//    @Override
//    public DataTablesOutput<Dep> getDepListD(DataTablesInput input) {
//        return null;
//    }
}
