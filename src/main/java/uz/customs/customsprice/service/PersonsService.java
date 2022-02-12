package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.Persons;
import uz.customs.customsprice.repository.PersonsRepo;

@Service
public class PersonsService {

    private final PersonsRepo personrepo;

    public PersonsService(PersonsRepo personrepo) {
        this.personrepo = personrepo;
    }

    public Persons savepersons(Persons persons){
        return personrepo.save(persons);
    }
}
