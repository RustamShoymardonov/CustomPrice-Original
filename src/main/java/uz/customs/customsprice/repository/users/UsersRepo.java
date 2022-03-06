package uz.customs.customsprice.repository.users;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.customsprice.entity.InitialDecision.Users;

import java.util.List;

public interface UsersRepo extends JpaRepository<Users, String> {
    List<Users> findByLocationAndPostAndRole(String userLocation, String userPost, Integer userRole);
}
