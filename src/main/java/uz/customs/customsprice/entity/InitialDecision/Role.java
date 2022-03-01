package uz.customs.customsprice.entity.InitialDecision;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ROLE")
public class Role {
    @Id
    @Column(name = "id")
    private Integer id;

    @Column(name = "NAME", columnDefinition = "VARCHAR(150) CCSID 1208")
    private String roleName;

    @Column(name = "ROLE_ID", length = 50)
    private String roleId;

    @Column(name = "isdeleted", columnDefinition = " SMALLINT DEFAULT 0")
    private int isDeleted;

    public Role() {
    }

    public Role(Integer id, String roleName, String roleId, int isDeleted) {
        this.id = id;
        this.roleName = roleName;
        this.roleId = roleId;
        this.isDeleted = isDeleted;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public int getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(int isDeleted) {
        this.isDeleted = isDeleted;
    }
}
