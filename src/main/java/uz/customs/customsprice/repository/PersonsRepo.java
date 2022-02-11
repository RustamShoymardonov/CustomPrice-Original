package uz.customs.customsprice.repository;

import org.springframework.data.repository.CrudRepository;
import uz.customs.customsprice.entity.InitialDecision.Persons;

public interface PersonsRepo extends CrudRepository<Persons, String> {
}
