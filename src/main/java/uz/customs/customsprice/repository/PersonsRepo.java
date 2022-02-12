package uz.customs.customsprice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uz.customs.customsprice.entity.InitialDecision.Persons;

@Repository
public interface PersonsRepo extends JpaRepository<Persons, String> {
}

