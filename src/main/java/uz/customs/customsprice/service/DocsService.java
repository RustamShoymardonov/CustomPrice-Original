package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.Docs;
import uz.customs.customsprice.repository.DocsRepo;

@Service
public class DocsService {

    private final DocsRepo docsRepo;

    public DocsService(DocsRepo docsRepo) {
        this.docsRepo = docsRepo;
    }

    public Docs savedocs(Docs docs){
        return docsRepo.save(docs);
    }
}
