package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.InDec;
import uz.customs.customsprice.repository.InDecRepo;

@Service
public class InDecService {
    private final InDecRepo inDecRepo;

    public InDecService(InDecRepo inDecRepo) {
        this.inDecRepo = inDecRepo;
    }

    public InDec saveInDec(InDec inDec) {
        return inDecRepo.save(inDec);
    }

}
