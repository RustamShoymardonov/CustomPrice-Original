package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.Commodity;
import uz.customs.customsprice.repository.CommodityRepo;

@Service
public class CommodityService {
    private final CommodityRepo commodityRepo;

    public CommodityService(CommodityRepo commodityRepo) {
        this.commodityRepo = commodityRepo;
    }

    public Commodity saveCommodity(Commodity commodity) {
        return commodityRepo.save(commodity);
    }
}
