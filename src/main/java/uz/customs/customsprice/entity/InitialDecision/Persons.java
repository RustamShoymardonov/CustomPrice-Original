package uz.customs.customsprice.entity.InitialDecision;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.*;
import uz.customs.customsprice.entity.entityConfig.AbstractAuditingEntity;

import javax.persistence.Entity;
import javax.persistence.*;
import java.util.Date;

@Entity
//@TypeDef(name = "jsonb", typeClass = JsonStringType.class)
@SQLDelete(sql = "update PERSONS set ISDELETED = 1 where id = ?")
@Where(clause = "isdeleted = 0")
public class Persons extends AbstractAuditingEntity {
    @Id
    @GeneratedValue(generator = "uuid4")
    @GenericGenerator(name = "uuid4", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(name = "id", columnDefinition = "VARCHAR(50)")
    private String id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "APP_ID", insertable = false, updatable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Apps apps;

    @Column(name = "firstName", columnDefinition = "VARCHAR(180) CCSID 1208")
    private String firstName;

    @Column(name = "surName", columnDefinition = "VARCHAR(180) CCSID 1208")
    private String surName;

    @Column(name = "lastName", columnDefinition = "VARCHAR(180) CCSID 1208")
    private String lastName;

    @Column(name = "email", length = 30, unique = true)
    private String eMail;

    @Column(name = "pin", length = 14, unique = true)
    private String pin;

    @Column(name = "tin", length = 9, unique = true)
    private String tin;

    @Column(name = "per_adr", columnDefinition = "VARCHAR(765) CCSID 1208")
    private String perAdr;

    @Column(name = "phone", length = 20)
    private String phone;

    public Persons() {
    }

    public Persons(String insUser, String updUser, Date insTime, Date updTime, int isDeleted, String id, Apps apps, String firstName, String surName, String lastName, String eMail, String pin, String tin, String perAdr, String phone) {
        super(insUser, updUser, insTime, updTime, isDeleted);
        this.id = id;
        this.apps = apps;
        this.firstName = firstName;
        this.surName = surName;
        this.lastName = lastName;
        this.eMail = eMail;
        this.pin = pin;
        this.tin = tin;
        this.perAdr = perAdr;
        this.phone = phone;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Apps getApps() {
        return apps;
    }

    public void setApps(Apps apps) {
        this.apps = apps;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSurName() {
        return surName;
    }

    public void setSurName(String surName) {
        this.surName = surName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getTin() {
        return tin;
    }

    public void setTin(String tin) {
        this.tin = tin;
    }

    public String getPerAdr() {
        return perAdr;
    }

    public void setPerAdr(String perAdr) {
        this.perAdr = perAdr;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}