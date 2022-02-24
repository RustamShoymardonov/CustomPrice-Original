package uz.customs.customsprice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.customsprice.entity.InitialDecision.Commodity;


public interface CommodityRepo extends JpaRepository<Commodity, String> {
//    List<Apps> findByStatus(int param);
}
