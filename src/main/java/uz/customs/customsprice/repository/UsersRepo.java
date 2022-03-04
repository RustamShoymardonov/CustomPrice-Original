package uz.customs.customsprice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.customsprice.entity.InitialDecision.Users;

public interface UsersRepo extends JpaRepository<Users, String> {
    Users findByLoginAndPassword(String login, String password);
}
