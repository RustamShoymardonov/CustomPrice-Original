package uz.customs.customsprice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.customsprice.entity.files.Docs;

import javax.print.Doc;


public interface DocsRepo extends JpaRepository<Docs, String> {
    Docs findByHash256(String hash256);

    Docs findTop1ByAppIdOrderByInsTimeDesc(String appId);

    Docs findAllByAppId(String appId);
}
