package uz.customs.customsprice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.customsprice.entity.InitialDecision.Role;

public interface RoleRepo extends JpaRepository<Role, Integer> {
}
