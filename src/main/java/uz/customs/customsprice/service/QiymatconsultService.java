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

    @PersistenceContext(unitName = "digests")
    private EntityManager entityManagerDigests;

    public QiymatconsultService(QiymatconsultRepo qiymatconsultRepo) {
        this.qiymatconsultRepo = qiymatconsultRepo;
    }

    public List<QiymatconsultEntity> getListQiymatconsulting(){
        String queryForList = "select\n" +
                "    qt.g7a||'/'||char(date(qt.g7b),eur)||'/'||qt.g7c gtd,\n" +
                "    qt.g32,\n" +
                "    qt.g33,\n" +
                "    qt.g45_ed,\n" +
                "    qt.g22a,\n" +
                "    t.havola,\n" +
                "    t.tov_num,\n" +
                "    t.tov_narx,\n" +
                "    t.curcod,\n" +
                "    t.usul,\n" +
                "    t.manba,\n" +
                "    t.dastlabki,\n" +
                "    t.jami, \n" +
                "    t.instime, \n"+
                "    qt.g38 \n" +
                "from\n" +
                "    epigued.qiymatconsult t\n" +
                "left join\n" +
                "    epigued.qiymattovar qt\n" +
                "on\n" +
                "    qt.decl_id = t.decl_id\n" +
                "and qt.g32 = t.g32\n" +
                "where\n" +
                "    t.status=1\n" +
                "order by\n" +
                "    t.instime desc";
        return (List<QiymatconsultEntity>) entityManagerDigests.createNativeQuery(queryForList).getResultList();
    }

}
