package uz.customs.customsprice.repository.users;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.customs.customsprice.entity.users.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
