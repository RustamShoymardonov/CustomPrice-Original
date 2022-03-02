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
                /* 0 - */ "  qt.g7a||'/'||char(date(qt.g7b),eur)||'/'||qt.g7c gtd,\n" +
                /* 1 - */ "  qt.g32,\n" +
                /* 2 - */ "  qt.g33,\n" +
                /* 3 - */ "  qt.g45_ed,\n" +
                /* 4 - */ "  qt.g22a,\n" +
                /* 5 - */ "  t.havola,\n" +
                /* 6 - */ "  t.tov_num,\n" +
                /* 7 - */ "  t.tov_narx,\n" +
                /* 8 - */ "  t.curcod,\n" +
                /* 9 - */ "  t.usul,\n" +
                /* 10 - */ "  t.manba,\n" +
                /* 11 - */ "  t.dastlabki,\n" +
                /* 12 - */ "  t.jami,\n" +
                /* 13 - */ "  t.instime,\n" +
                /* 14 - */ "  sum(qt.g38)   sum_g38,\n" +
                /* 15 - */ "  count(qt.g33) count_g33\n" +
                "from\n" +
                "    epigued.qiymatconsult t\n" +
                "left join\n" +
                "    epigued.qiymattovar qt\n" +
                "on\n" +
                "    qt.decl_id = t.decl_id\n" +
                "where\n" +
                "    t.status=1\n" +
                "group by\n" +
                "    qt.g7a||'/'||char(date(qt.g7b),eur)||'/'||qt.g7c,\n" +
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
                "    t.jami,\n" +
                "    t.instime\n" +
                "order by\n" +
                "    t.instime desc";
        return (List<QiymatconsultEntity>) entityManagerDigests.createNativeQuery(queryForList).getResultList();
    }

    public List<QiymatconsultEntity> getListQiymatReject(){
        String queryForList = "select\n" +
                /* 0 - */ "    qr.g7a||'/'||char(date(qr.g7b),eur)||'/'||qr.g7c gtd,\n" +
                /* 1  - */ "    qr.g7a,\n" +
                /* 2  - */ "    qr.g7b,\n" +
                /* 3  - */ "    qr.g7c,\n" +
                /* 4  - */ "    qr.sabab1,\n" +
                /* 5  - */ "    qr.sabab2,\n" +
                /* 6  - */ "    qr.sabab3,\n" +
                /* 7  - */ "    qr.sabab4,\n" +
                /* 8  - */ "    qr.shartli,\n" +
                /* 9  - */ "    qr.user_id,\n" +
                /* 10 - */ "    qr.instime,\n" +
                /* 11 - */ "    qr.updtime,\n" +
                /* 12 - */ "    qr.status,\n" +
                /* 13 - */ "    sum(qt.g38)   sum_g38,\n" +
                /* 14 - */ "    count(qt.g33) count_g33\n" +
                "from\n" +
                "    epigued.qiymatreject qr\n" +
                "left join\n" +
                "    epigued.qiymattovar qt\n" +
                "on\n" +
                "    qr.decl_id = qt.decl_id\n" +
                "where\n" +
                "    qr.status = 1\n" +
                "group by\n" +
                "    qr.decl_id,\n" +
                "    qr.g7a||'/'||char(date(qr.g7b),eur)||'/'||qr.g7c,\n" +
                "    qr.g7a,\n" +
                "    qr.g7b,\n" +
                "    qr.g7c,\n" +
                "    qr.sabab1,\n" +
                "    qr.sabab2,\n" +
                "    qr.sabab3,\n" +
                "    qr.sabab4,\n" +
                "    qr.shartli,\n" +
                "    qr.user_id,\n" +
                "    qr.instime,\n" +
                "    qr.updtime,\n" +
                "    qr.status\n" +
                "order by\n" +
                "    qr.instime desc";
        return (List<QiymatconsultEntity>) entityManagerDigests.createNativeQuery(queryForList).getResultList();
    }

}
