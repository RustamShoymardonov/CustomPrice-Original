package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.Digests.QiymatconsultEntity;
import uz.customs.customsprice.repository.QiymatconsultRepo;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Service
public class QiymatconsultService {
    private final QiymatconsultRepo qiymatconsultRepo;

    @PersistenceContext
    private EntityManager entityManagery;

    public QiymatconsultService(QiymatconsultRepo qiymatconsultRepo) {
        this.qiymatconsultRepo = qiymatconsultRepo;
    }

    public List<QiymatconsultEntity> getListQiymatconsulting() {
        String queryForList = "select\n" +
                "    t.id,\n" +
                "    t.havola,\n" +
                "    t.tov_num,\n" +
                "    t.tov_narx,\n" +
                "    t.jami,\n" +
                "    t.instime,\n" +
                "    t.updtime,\n" +
                "    t.status,\n" +
                "    t.user_id,\n" +
                "    t.usul,\n" +
                "    t.manba,\n" +
                "    t.dastlabki,\n" +
                "    t.curcod,\n" +
                "    t.decl_id,\n" +
                "    t.g32\n" +
                "from\n" +
                "    epigued.qiymatconsult t\n" +
                "where\n" +
                "    t.status=1\n" +
                "order by\n" +
                "    t.instime desc";
//        qiymatconsultRepo.findAllById("21f56074c00d45dc9c49");
        return (List<QiymatconsultEntity>) entityManagery.createNativeQuery(queryForList, QiymatconsultEntity.class).getResultList();
    }

}
