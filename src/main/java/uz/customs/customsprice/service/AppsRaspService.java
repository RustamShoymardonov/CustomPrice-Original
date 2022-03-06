package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.repository.AppsRaspRepo;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Service
public class AppsRaspService {
    private final AppsRaspRepo appsRaspRepo;

    public AppsRaspService(AppsRaspRepo appsRaspRepo) {
        this.appsRaspRepo = appsRaspRepo;
    }

    @PersistenceContext
    private EntityManager entityManager;
}