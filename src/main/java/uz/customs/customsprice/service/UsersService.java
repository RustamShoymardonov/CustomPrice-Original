package uz.customs.customsprice.service;

import org.springframework.stereotype.Service;
import uz.customs.customsprice.entity.InitialDecision.Roles;
import uz.customs.customsprice.repository.users.RolesRepo;

@Service
public class UsersService {
    private final RolesRepo rolesRepo;

    public UsersService(RolesRepo rolesRepo) {
        this.rolesRepo = rolesRepo;
    }

    public Roles saveRoles(Roles roles) {
        return rolesRepo.save(roles);
    }
}
