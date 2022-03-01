package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.Status;
import uz.customs.customsprice.entity.InitialDecision.TransportType;
import uz.customs.customsprice.repository.TransportTypeRepo;

import java.util.List;

@Service
public class TransportTypeService {
    private final TransportTypeRepo transportTypeRepo;

    public TransportTypeService(TransportTypeRepo transportTypeRepo) {
        this.transportTypeRepo = transportTypeRepo;
    }

    public TransportType savetrtype(TransportType transportType) {
        return transportTypeRepo.save(transportType);
    }

    public TransportType getByAppId(String app_id) {
        return transportTypeRepo.findByAppId(app_id);
    }


}


