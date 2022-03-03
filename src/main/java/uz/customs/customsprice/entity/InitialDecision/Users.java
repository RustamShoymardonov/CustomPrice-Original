package uz.customs.customsprice.entity.InitialDecision;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USERS")
public class Users {
    @Id
    @Column(name = "id", columnDefinition = "VARCHAR(50)")
    private String id;

    @Column(name = "LOGIN", length = 20)
    private String login;

    @Column(name = "PASSWORD", length = 20)
    private String password;

    @Column(name = "NAME", columnDefinition = "VARCHAR(150) CCSID 1208")
    private String userName;

    @Column(name = "ROLE")
    private Integer role;

    @Column(name = "Email")
    private Integer email;

    @Column(name = "LOCATION", length = 4)
    private String location;

    @Column(name = "POST", length = 10)
    private String post;

    @Column(name = "isdeleted", columnDefinition = " SMALLINT DEFAULT 0")
    private int isDeleted;

    public Users() {
    }

    public Users(String id, String login, String password, String userName, Integer role, Integer email, String location, String post, int isDeleted) {
        this.id = id;
        this.login = login;
        this.password = password;
        this.userName = userName;
        this.role = role;
        this.email = email;
        this.location = location;
        this.post = post;
        this.isDeleted = isDeleted;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public Integer getEmail() {
        return email;
    }

    public void setEmail(Integer email) {
        this.email = email;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public int getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(int isDeleted) {
        this.isDeleted = isDeleted;
    }
}
