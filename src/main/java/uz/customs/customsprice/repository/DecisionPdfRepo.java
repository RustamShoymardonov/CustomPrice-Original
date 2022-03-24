package uz.customs.customsprice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.customsprice.entity.files.DecisionPdf;
import uz.customs.customsprice.entity.files.Docs;

import java.util.Optional;

public interface DecisionPdfRepo extends JpaRepository<DecisionPdf, String> {
    Optional<DecisionPdf> findById(String id);

    DecisionPdf findByHash256(String hash256);

    DecisionPdf findByCmdtId(String cmdtId);
}
