package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.Exchangerate;
import uz.customs.customsprice.repository.ExchangeRateRepo;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Date;

@Service
public class ExchangerateService {

    private final ExchangeRateRepo exchangeRateRepo;

    public ExchangerateService(ExchangeRateRepo exchangeRateRepo) {
        this.exchangeRateRepo = exchangeRateRepo;
    }

    public Exchangerate getTop1ByIdOrderByDateSetDesc(String id) {
        return exchangeRateRepo.findTop1ByIdOrderByDateSetDesc(id);
    }

}
