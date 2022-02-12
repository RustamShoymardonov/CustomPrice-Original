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

    @Column(name = "CUSTOMER_COUNTRY_NM", length = 40, columnDefinition = "VARCHAR(120) CCSID 1208")
    private String customer_country_nm;

    @Column(name = "SENDER_COUNTRY", length = 3)
    private String sender_country;

    @Column(name = "SENDER_COUNTRY_NM", length = 40, columnDefinition = "VARCHAR(120) CCSID 1208")
    private String sender_country_nm;

    @Column(name = "ORIGIN_COUNTRY", length = 3)
    private String origin_country;

    @Column(name = "ORIGIN_COUNTRY_NM", length = 40, columnDefinition = "VARCHAR(120) CCSID 1208")
    private String orign_countr_nm;

    @Column(name = "TRADE_NAME", length = 255, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String trade_name;

    @Column(name = "TRADE_MARK", length = 255, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String trade_mark;

    @Column(name = "MARK", length = 255, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String mark;

    @Column(name = "MODEL", length = 255, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String model;

    @Column(name = "ARTICLE", length = 255, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String article;

    @Column(name = "SORT", length = 255, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String sort;

    @Column(name = "STANDARTS", length = 500, columnDefinition = "VARCHAR(1500) CCSID 1208")
    private String standarts;

    @Column(name = "FUNCTIONS", length = 500, columnDefinition = "VARCHAR(1500) CCSID 1208")
    private String functions;

    @Column(name = "COMMERCIAL_PROPERTIES", length = 2000, columnDefinition = "VARCHAR(6000) CCSID 1208")
    private String commercial_properties;

    @Column(name = "TECHNICAL_CHARACTERISTICS", length = 500, columnDefinition = "VARCHAR(1500) CCSID 1208")
    private String technical_characteristics;

    @Column(name = "PRODUCT_GOAL", length = 300, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String product_goal;

    @Column(name = "HS_CODE", length = 10)
    private String hs_code;

    @Column(name = "SENDER_ORG", length = 300, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String sender_org;

    @Column(name = "SELLER_ORG", length = 300, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String seller_org;

    @Column(name = "ORIGIN_ORG", length = 300, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String origin_org;

    @Column(name = "TERMS", length = 3)
    private String terms;

    @Column(name = "TERMS_ADDR", length = 50)
    private String terms_addr;

    @Column(name = "IN_DEC_DATE")
    private Date in_dec_date;

    @Column(name = "IN_DEC_NUM", length = 2000)
    private String initial_decision_number;

    //++++//

    @Column(name = "PERSON_FIO", length = 60, columnDefinition = "VARCHAR(180) CCSID 1208")
    private String person_fio;

    @Column(name = "ORG_NAME", length = 300, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String org_name;

    @Column(name = "PERSON_POSITION", length = 2)
    private String person_position;

    @Column(name = "PERSON_ADDR", length = 300, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String person_addr;

    @Column(name = "PERSON_TIN", length = 9)
    private String person_tin;

    @Column(name = "PERSON_PIN", length = 14)
    private String person_pin;

    @Column(name = "PERSON_MAIL", length = 100)
    private String person_mail;

    @Column(name = "PERSON_PHONE", length = 20)
    private String person_phone;

    @Column(name = "LOCATION_ID", length = 4)
    private String location_id;

    @Column(name = "LOCATION_NM", precision = 5, scale = 2)
    private BigDecimal location_nm;

    @Column(name = "TRANS_EXP", length = 4)
    private BigDecimal trans_exp;

    @Column(name = "STATUS", columnDefinition = "SMALLINT DEFAULT 0")
    private int status;

    @Column(name = "STATUS_NM", length = 4)
    private int status_nm;

    //end//

    public Apps() {
    }

    public Apps(String insUser, String updUser, Date insTime, Date updTime, int isDeleted, String id, Persons persons, String customer_country, String customer_country_nm, String sender_country, String sender_country_nm, String origin_country, String orign_countr_nm, String trade_name, String trade_mark, String mark, String model, String article, String sort, String standarts, String functions, String commercial_properties, String technical_characteristics, String product_goal, String hs_code, String sender_org, String seller_org, String origin_org, String terms, String terms_addr, Date in_dec_date, String initial_decision_number, String person_fio, String org_name, String person_position, String person_addr, String person_tin, String person_pin, String person_mail, String person_phone, String location_id, BigDecimal location_nm, BigDecimal trans_exp, int status, int status_nm) {
        super(insUser, updUser, insTime, updTime, isDeleted);
        this.id = id;
        this.persons = persons;
        this.customer_country = customer_country;
        this.customer_country_nm = customer_country_nm;
        this.sender_country = sender_country;
        this.sender_country_nm = sender_country_nm;
        this.origin_country = origin_country;
        this.orign_countr_nm = orign_countr_nm;
        this.trade_name = trade_name;
        this.trade_mark = trade_mark;
        this.mark = mark;
        this.model = model;
        this.article = article;
        this.sort = sort;
        this.standarts = standarts;
        this.functions = functions;
        this.commercial_properties = commercial_properties;
        this.technical_characteristics = technical_characteristics;
        this.product_goal = product_goal;
        this.hs_code = hs_code;
        this.sender_org = sender_org;
        this.seller_org = seller_org;
        this.origin_org = origin_org;
        this.terms = terms;
        this.terms_addr = terms_addr;
        this.in_dec_date = in_dec_date;
        this.initial_decision_number = initial_decision_number;
        this.person_fio = person_fio;
        this.org_name = org_name;
        this.person_position = person_position;
        this.person_addr = person_addr;
        this.person_tin = person_tin;
        this.person_pin = person_pin;
        this.person_mail = person_mail;
        this.person_phone = person_phone;
        this.location_id = location_id;
        this.location_nm = location_nm;
        this.trans_exp = trans_exp;
        this.status = status;
        this.status_nm = status_nm;
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

    public String getCustomer_country_nm() {
        return customer_country_nm;
    }

    public void setCustomer_country_nm(String customer_country_nm) {
        this.customer_country_nm = customer_country_nm;
    }

    public String getSender_country() {
        return sender_country;
    }

    public void setSender_country(String sender_country) {
        this.sender_country = sender_country;
    }

    public String getSender_country_nm() {
        return sender_country_nm;
    }

    public void setSender_country_nm(String sender_country_nm) {
        this.sender_country_nm = sender_country_nm;
    }

    public String getOrigin_country() {
        return origin_country;
    }

    public void setOrigin_country(String origin_country) {
        this.origin_country = origin_country;
    }

    public String getOrign_countr_nm() {
        return orign_countr_nm;
    }

    public void setOrign_countr_nm(String orign_countr_nm) {
        this.orign_countr_nm = orign_countr_nm;
    }

    public String getTrade_name() {
        return trade_name;
    }

    public void setTrade_name(String trade_name) {
        this.trade_name = trade_name;
    }

    public String getTrade_mark() {
        return trade_mark;
    }

    public void setTrade_mark(String trade_mark) {
        this.trade_mark = trade_mark;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getArticle() {
        return article;
    }

    public void setArticle(String article) {
        this.article = article;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getStandarts() {
        return standarts;
    }

    public void setStandarts(String standarts) {
        this.standarts = standarts;
    }

    public String getFunctions() {
        return functions;
    }

    public void setFunctions(String functions) {
        this.functions = functions;
    }

    public String getCommercial_properties() {
        return commercial_properties;
    }

    public void setCommercial_properties(String commercial_properties) {
        this.commercial_properties = commercial_properties;
    }

    public String getTechnical_characteristics() {
        return technical_characteristics;
    }

    public void setTechnical_characteristics(String technical_characteristics) {
        this.technical_characteristics = technical_characteristics;
    }

    public String getProduct_goal() {
        return product_goal;
    }

    public void setProduct_goal(String product_goal) {
        this.product_goal = product_goal;
    }

    public String getHs_code() {
        return hs_code;
    }

    public void setHs_code(String hs_code) {
        this.hs_code = hs_code;
    }

    public String getSender_org() {
        return sender_org;
    }

    public void setSender_org(String sender_org) {
        this.sender_org = sender_org;
    }

    public String getSeller_org() {
        return seller_org;
    }

    public void setSeller_org(String seller_org) {
        this.seller_org = seller_org;
    }

    public String getOrigin_org() {
        return origin_org;
    }

    public void setOrigin_org(String origin_org) {
        this.origin_org = origin_org;
    }

    public String getTerms() {
        return terms;
    }

    public void setTerms(String terms) {
        this.terms = terms;
    }

    public String getTerms_addr() {
        return terms_addr;
    }

    public void setTerms_addr(String terms_addr) {
        this.terms_addr = terms_addr;
    }

    public Date getIn_dec_date() {
        return in_dec_date;
    }

    public void setIn_dec_date(Date in_dec_date) {
        this.in_dec_date = in_dec_date;
    }

    public String getInitial_decision_number() {
        return initial_decision_number;
    }

    public void setInitial_decision_number(String initial_decision_number) {
        this.initial_decision_number = initial_decision_number;
    }

    public String getPerson_fio() {
        return person_fio;
    }

    public void setPerson_fio(String person_fio) {
        this.person_fio = person_fio;
    }

    public String getOrg_name() {
        return org_name;
    }

    public void setOrg_name(String org_name) {
        this.org_name = org_name;
    }

    public String getPerson_position() {
        return person_position;
    }

    public void setPerson_position(String person_position) {
        this.person_position = person_position;
    }

    public String getPerson_addr() {
        return person_addr;
    }

    public void setPerson_addr(String person_addr) {
        this.person_addr = person_addr;
    }

    public String getPerson_tin() {
        return person_tin;
    }

    public void setPerson_tin(String person_tin) {
        this.person_tin = person_tin;
    }

    public String getPerson_pin() {
        return person_pin;
    }

    public void setPerson_pin(String person_pin) {
        this.person_pin = person_pin;
    }

    public String getPerson_mail() {
        return person_mail;
    }

    public void setPerson_mail(String person_mail) {
        this.person_mail = person_mail;
    }

    public String getPerson_phone() {
        return person_phone;
    }

    public void setPerson_phone(String person_phone) {
        this.person_phone = person_phone;
    }

    public String getLocation_id() {
        return location_id;
    }

    public void setLocation_id(String location_id) {
        this.location_id = location_id;
    }

    public BigDecimal getLocation_nm() {
        return location_nm;
    }

    public void setLocation_nm(BigDecimal location_nm) {
        this.location_nm = location_nm;
    }

    public BigDecimal getTrans_exp() {
        return trans_exp;
    }

    public void setTrans_exp(BigDecimal trans_exp) {
        this.trans_exp = trans_exp;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getStatus_nm() {
        return status_nm;
    }

    public void setStatus_nm(int status_nm) {
        this.status_nm = status_nm;
    }
}
