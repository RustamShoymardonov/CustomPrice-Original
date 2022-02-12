package uz.customs.customsprice.entity.InitialDecision;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import uz.customs.customsprice.entity.AbstractAuditingEntity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
public class Apps extends AbstractAuditingEntity {
    @Id
    @GeneratedValue(generator = "uuid4")
    @GenericGenerator(name = "uuid4", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(name = "id", columnDefinition = "VARCHAR(50)")
    private String id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PERSON_ID", insertable = false, updatable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Persons persons;

    @Column(name = "CUSTOMER_COUNTRY", length = 3)
    private String customer_country;

    @Column(name = "CUSTOMER_COUNTRY_NM", columnDefinition = "VARCHAR(120) CCSID 1208")
    private String customerCountryNm;

    @Column(name = "SENDER_COUNTRY", length = 3)
    private String senderCountry;

    @Column(name = "SENDER_COUNTRY_NM", columnDefinition = "VARCHAR(120) CCSID 1208")
    private String senderCountryNm;

    @Column(name = "ORIGIN_COUNTRY", length = 3)
    private String originCountry;

    @Column(name = "ORIGIN_COUNTRY_NM", columnDefinition = "VARCHAR(120) CCSID 1208")
    private String orignCountrNm;

    @Column(name = "SENDER_ORG", columnDefinition = "VARCHAR(900) CCSID 1208")
    private String senderOrg;

    @Column(name = "SELLER_ORG", columnDefinition = "VARCHAR(900) CCSID 1208")
    private String sellerOrg;

    @Column(name = "ORIGIN_ORG", columnDefinition = "VARCHAR(900) CCSID 1208")
    private String originOrg;

    @Column(name = "TERMS", length = 3)
    private String terms;

    @Column(name = "TERMS_ADDR", length = 50)
    private String termsAddr;

    @Column(name = "IN_DEC_DATE")
    private Date inDecDate;

    @Column(name = "IN_DEC_NUM", length = 30)
    private String initialDecisionNumber;

    @Column(name = "PERSON_FIO", columnDefinition = "VARCHAR(180) CCSID 1208")
    private String personFio;

    @Column(name = "ORG_NAME", columnDefinition = "VARCHAR(900) CCSID 1208")
    private String orgName;

    @Column(name = "PERSON_POSITION", length = 2)
    private String personPosition;

    @Column(name = "PERSON_ADDR", columnDefinition = "VARCHAR(900) CCSID 1208")
    private String personAddr;

    @Column(name = "PERSON_TIN", length = 9)
    private String personTin;

    @Column(name = "PERSON_PIN", length = 14)
    private String personPin;

    @Column(name = "PERSON_MAIL", length = 100)
    private String personMail;

    @Column(name = "PERSON_PHONE", length = 20)
    private String personPhone;

    @Column(name = "LOCATION_ID", length = 4)
    private String locationId;

    @Column(name = "LOCATION_NM", precision = 5, scale = 2)
    private BigDecimal locationNm;

    @Column(name = "TRANS_EXP", length = 4)
    private BigDecimal transExp;

    @Column(name = "STATUS", columnDefinition = "SMALLINT DEFAULT 0")
    private int status;

    @Column(name = "STATUS_NM", length = 4)
    private int statusNm;

    //end//

    public Apps() {
    }

    public Apps(String insUser, String updUser, Date insTime, Date updTime, int isDeleted, String id, Persons persons, String customer_country, String customerCountryNm, String senderCountry, String senderCountryNm, String originCountry, String orignCountrNm, String senderOrg, String sellerOrg, String originOrg, String terms, String termsAddr, Date inDecDate, String initialDecisionNumber, String personFio, String orgName, String personPosition, String personAddr, String personTin, String personPin, String personMail, String personPhone, String locationId, BigDecimal locationNm, BigDecimal transExp, int status, int statusNm) {
        super(insUser, updUser, insTime, updTime, isDeleted);
        this.id = id;
        this.persons = persons;
        this.customer_country = customer_country;
        this.customerCountryNm = customerCountryNm;
        this.senderCountry = senderCountry;
        this.senderCountryNm = senderCountryNm;
        this.originCountry = originCountry;
        this.orignCountrNm = orignCountrNm;
        this.senderOrg = senderOrg;
        this.sellerOrg = sellerOrg;
        this.originOrg = originOrg;
        this.terms = terms;
        this.termsAddr = termsAddr;
        this.inDecDate = inDecDate;
        this.initialDecisionNumber = initialDecisionNumber;
        this.personFio = personFio;
        this.orgName = orgName;
        this.personPosition = personPosition;
        this.personAddr = personAddr;
        this.personTin = personTin;
        this.personPin = personPin;
        this.personMail = personMail;
        this.personPhone = personPhone;
        this.locationId = locationId;
        this.locationNm = locationNm;
        this.transExp = transExp;
        this.status = status;
        this.statusNm = statusNm;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Persons getPersons() {
        return persons;
    }

    public void setPersons(Persons persons) {
        this.persons = persons;
    }

    public String getCustomer_country() {
        return customer_country;
    }

    public void setCustomer_country(String customer_country) {
        this.customer_country = customer_country;
    }

    public String getCustomerCountryNm() {
        return customerCountryNm;
    }

    public void setCustomerCountryNm(String customerCountryNm) {
        this.customerCountryNm = customerCountryNm;
    }

    public String getSenderCountry() {
        return senderCountry;
    }

    public void setSenderCountry(String senderCountry) {
        this.senderCountry = senderCountry;
    }

    public String getSenderCountryNm() {
        return senderCountryNm;
    }

    public void setSenderCountryNm(String senderCountryNm) {
        this.senderCountryNm = senderCountryNm;
    }

    public String getOriginCountry() {
        return originCountry;
    }

    public void setOriginCountry(String originCountry) {
        this.originCountry = originCountry;
    }

    public String getOrignCountrNm() {
        return orignCountrNm;
    }

    public void setOrignCountrNm(String orignCountrNm) {
        this.orignCountrNm = orignCountrNm;
    }

    public String getSenderOrg() {
        return senderOrg;
    }

    public void setSenderOrg(String senderOrg) {
        this.senderOrg = senderOrg;
    }

    public String getSellerOrg() {
        return sellerOrg;
    }

    public void setSellerOrg(String sellerOrg) {
        this.sellerOrg = sellerOrg;
    }

    public String getOriginOrg() {
        return originOrg;
    }

    public void setOriginOrg(String originOrg) {
        this.originOrg = originOrg;
    }

    public String getTerms() {
        return terms;
    }

    public void setTerms(String terms) {
        this.terms = terms;
    }

    public String getTermsAddr() {
        return termsAddr;
    }

    public void setTermsAddr(String termsAddr) {
        this.termsAddr = termsAddr;
    }

    public Date getInDecDate() {
        return inDecDate;
    }

    public void setInDecDate(Date inDecDate) {
        this.inDecDate = inDecDate;
    }

    public String getInitialDecisionNumber() {
        return initialDecisionNumber;
    }

    public void setInitialDecisionNumber(String initialDecisionNumber) {
        this.initialDecisionNumber = initialDecisionNumber;
    }

    public String getPersonFio() {
        return personFio;
    }

    public void setPersonFio(String personFio) {
        this.personFio = personFio;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getPersonPosition() {
        return personPosition;
    }

    public void setPersonPosition(String personPosition) {
        this.personPosition = personPosition;
    }

    public String getPersonAddr() {
        return personAddr;
    }

    public void setPersonAddr(String personAddr) {
        this.personAddr = personAddr;
    }

    public String getPersonTin() {
        return personTin;
    }

    public void setPersonTin(String personTin) {
        this.personTin = personTin;
    }

    public String getPersonPin() {
        return personPin;
    }

    public void setPersonPin(String personPin) {
        this.personPin = personPin;
    }

    public String getPersonMail() {
        return personMail;
    }

    public void setPersonMail(String personMail) {
        this.personMail = personMail;
    }

    public String getPersonPhone() {
        return personPhone;
    }

    public void setPersonPhone(String personPhone) {
        this.personPhone = personPhone;
    }

    public String getLocationId() {
        return locationId;
    }

    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    public BigDecimal getLocationNm() {
        return locationNm;
    }

    public void setLocationNm(BigDecimal locationNm) {
        this.locationNm = locationNm;
    }

    public BigDecimal getTransExp() {
        return transExp;
    }

    public void setTransExp(BigDecimal transExp) {
        this.transExp = transExp;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getStatusNm() {
        return statusNm;
    }

    public void setStatusNm(int statusNm) {
        this.statusNm = statusNm;
    }
}
