package uz.customs.customsprice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.customsprice.entity.InitialDecision.Docs;

public interface DocsRepo extends JpaRepository<Docs, String> {
}