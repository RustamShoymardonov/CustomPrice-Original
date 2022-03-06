package uz.customs.customsprice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.customsprice.entity.InitialDecision.AppsRasp;

public interface AppsRaspRepo extends JpaRepository<AppsRasp, String> {
}
