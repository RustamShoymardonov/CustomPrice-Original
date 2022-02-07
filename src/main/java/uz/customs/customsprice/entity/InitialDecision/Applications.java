package uz.customs.customsprice.entity.InitialDecision;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.springframework.format.annotation.NumberFormat;
import uz.customs.customsprice.entity.AbstractAuditingEntity;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;

@Entity
public class Applications extends AbstractAuditingEntity {
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

    @Column(name = "TRADE_NAME", length = 255, nullable = false, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String trade_name;

    @Column(name = "TRADE_MARK", length = 255, nullable = false, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String trade_mark;

    @Column(name = "MARK", length = 255, nullable = false, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String mark;

    @Column(name = "MODEL", length = 255, nullable = false, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String model;

    @Column(name = "ARTICLE", length = 255, nullable = false, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String article;

    @Column(name = "SORT", length = 255, nullable = false, columnDefinition = "VARCHAR(765) CCSID 1208")
    private String sort;

    @Column(name = "STANDARTS", length = 500, nullable = false, columnDefinition = "VARCHAR(1500) CCSID 1208")
    private String standarts;

    @Column(name = "FUNCTIONS", length = 500, nullable = false, columnDefinition = "VARCHAR(1500) CCSID 1208")
    private String functions;

    @Column(name = "COMMERCIAL_PROPERTIES", length = 2000, nullable = false, columnDefinition = "VARCHAR(6000) CCSID 1208")
    private String commercial_properties;

    @Column(name = "TECHNICAL_CHARACTERISTICS", length = 500, nullable = false, columnDefinition = "VARCHAR(1500) CCSID 1208")
    private String technical_characteristics;

    @Column(name = "PRODUCT_GOAL", length = 300, nullable = false, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String product_goal;

    @Column(name = "HS_CODE", length = 10, nullable = false)
    private String hs_code;

    @Column(name = "CUSTOMER_COUNTRY", length = 3, nullable = false)
    private String customer_country;

    @Column(name = "SENDER_COUNTRY", length = 3, nullable = false)
    private String sender_country;

    @Column(name = "ORIGIN_COUNTRY", length = 3, nullable = false)
    private String origin_country;

    @Column(name = "GROSS_WEIGHT", precision = 5, scale = 2, nullable = false)
    private BigDecimal gross_weight;

    @Column(name = "NETTO_WEIGHT", precision = 5, scale = 2, nullable = false)
    private BigDecimal netto_weight;

    /*todo Бобурдан справочник олиш керак (асосий ўлчов бирлигидаги миқдори)!
    @Column(name = "BASIC_UNITS", length = 100, nullable = false)
    private String basic_units;*/

    @Column(name = "BASIC_QUANTITY", precision = 5, scale = 2, nullable = false)
    private BigDecimal basic_quantity;

    @Column(name = "SENDER_ORGANIZATION", length = 300, nullable = false, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String sender_organization;

    @Column(name = "SELLER_ORGANIZATION", length = 300, nullable = false, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String seller_organization;

    @Column(name = "ORIGIN_ORGANIZATION", length = 300, nullable = false, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String origin_organization;

    @Column(name = "EXTRA_UNITS", length = 3)
    private String extra_units;

    @Column(name = "EXTRA_QUANTITY", precision = 5, scale = 2)
    private BigDecimal extra_quantity;

    @Column(name = "PRICE", precision = 5, scale = 2, nullable = false)
    private BigDecimal price;

    @Column(name = "CURRENCY", length = 3, nullable = false)
    private String currency;

    @Column(name = "CARGO_SPACE", precision = 5, scale = 2, nullable = false)
    private BigDecimal cargo_space;

    @Column(name = "PACKAGING_TYPE", length = 100, nullable = false, columnDefinition = "VARCHAR(300) CCSID 1208")
    private String packaging_type;

    @Column(name = "PACKAGE_QUANTITY", precision = 5, scale = 2, nullable = false)
    private BigDecimal package_quantity;

    @Column(name = "INKOTERMS", length = 3, nullable = false)
    private String inkoterms;

    @Column(name = "INKOTERMS_addres", length = 50, nullable = false)
    private String inkoterms_addres;

    @Column(name = "EXTRA_INFORMATION", length = 2000, nullable = false, columnDefinition = "VARCHAR(6000) CCSID 1208")
    private String extra_information;

    @Column(name = "INITIAL_DECISION_date")
    private Date initial_decision_date;

    @Column(name = "INITIAL_DECISION_NUMBER", length = 2000)
    private String initial_decision_number;

    @Column(name = "hs_DECISION_NUMBER", length = 20)
    private String hs_decision_number;

    @Column(name = "hs_DECISION_date")
    private Date hs_decision_date;

    @Column(name = "SELECTED_METHOD_CAUSE", length = 1000, nullable = false, columnDefinition = "VARCHAR(3000) CCSID 1208")
    private String selected_method_cause;

    @Column(name = "PERSON_FIO", length = 60, nullable = false, columnDefinition = "VARCHAR(180) CCSID 1208")
    private String person_fio;

    @Column(name = "ORGANIZATION_NAME", length = 300, nullable = false, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String organization_name;

    @Column(name = "PERSON_POSITION", length = 2, nullable = false)
    private String person_position;

    @Column(name = "PERSON_ADDRESS", length = 300, nullable = false, columnDefinition = "VARCHAR(900) CCSID 1208")
    private String person_address;

    @Column(name = "PERSON_TIN", length = 9, nullable = false)
    private String person_tin;

    @Column(name = "PERSON_PIN", length = 14, nullable = false)
    private String person_pin;

    @Column(name = "PERSON_MAIL", length = 100, nullable = false)
    private String person_mail;

    @Column(name = "PERSON_PHONE", length = 20, nullable = false)
    private String person_phone;

    @Column(name = "STATUS", columnDefinition = "SMALLINT DEFAULT 0")
    private int status;

    public Applications() {
    }

    public Applications(String insUser, String updUser, Date insTime, Date updTime, int isDeleted, String id, Persons persons, String trade_name, String trade_mark, String mark, String model, String article, String sort, String standarts, String functions, String commercial_properties, String technical_characteristics, String product_goal, String hs_code, String customer_country, String sender_country, String origin_country, BigDecimal gross_weight, BigDecimal netto_weight, BigDecimal basic_quantity, String sender_organization, String seller_organization, String origin_organization, String extra_units, BigDecimal extra_quantity, BigDecimal price, String currency, BigDecimal cargo_space, String packaging_type, BigDecimal package_quantity, String inkoterms, String inkoterms_addres, String extra_information, Date initial_decision_date, String initial_decision_number, String hs_decision_number, Date hs_decision_date, String selected_method_cause, String person_fio, String organization_name, String person_position, String person_address, String person_tin, String person_pin, String person_mail, String person_phone) {
        super(insUser, updUser, insTime, updTime, isDeleted);
        this.id = id;
        this.persons = persons;
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
        this.customer_country = customer_country;
        this.sender_country = sender_country;
        this.origin_country = origin_country;
        this.gross_weight = gross_weight;
        this.netto_weight = netto_weight;
        this.basic_quantity = basic_quantity;
        this.sender_organization = sender_organization;
        this.seller_organization = seller_organization;
        this.origin_organization = origin_organization;
        this.extra_units = extra_units;
        this.extra_quantity = extra_quantity;
        this.price = price;
        this.currency = currency;
        this.cargo_space = cargo_space;
        this.packaging_type = packaging_type;
        this.package_quantity = package_quantity;
        this.inkoterms = inkoterms;
        this.inkoterms_addres = inkoterms_addres;
        this.extra_information = extra_information;
        this.initial_decision_date = initial_decision_date;
        this.initial_decision_number = initial_decision_number;
        this.hs_decision_number = hs_decision_number;
        this.hs_decision_date = hs_decision_date;
        this.selected_method_cause = selected_method_cause;
        this.person_fio = person_fio;
        this.organization_name = organization_name;
        this.person_position = person_position;
        this.person_address = person_address;
        this.person_tin = person_tin;
        this.person_pin = person_pin;
        this.person_mail = person_mail;
        this.person_phone = person_phone;
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

    public String getCustomer_country() {
        return customer_country;
    }

    public void setCustomer_country(String customer_country) {
        this.customer_country = customer_country;
    }

    public String getSender_country() {
        return sender_country;
    }

    public void setSender_country(String sender_country) {
        this.sender_country = sender_country;
    }

    public String getOrigin_country() {
        return origin_country;
    }

    public void setOrigin_country(String origin_country) {
        this.origin_country = origin_country;
    }

    public BigDecimal getGross_weight() {
        return gross_weight;
    }

    public void setGross_weight(BigDecimal gross_weight) {
        this.gross_weight = gross_weight;
    }

    public BigDecimal getNetto_weight() {
        return netto_weight;
    }

    public void setNetto_weight(BigDecimal netto_weight) {
        this.netto_weight = netto_weight;
    }

    public BigDecimal getBasic_quantity() {
        return basic_quantity;
    }

    public void setBasic_quantity(BigDecimal basic_quantity) {
        this.basic_quantity = basic_quantity;
    }

    public String getSender_organization() {
        return sender_organization;
    }

    public void setSender_organization(String sender_organization) {
        this.sender_organization = sender_organization;
    }

    public String getSeller_organization() {
        return seller_organization;
    }

    public void setSeller_organization(String seller_organization) {
        this.seller_organization = seller_organization;
    }

    public String getOrigin_organization() {
        return origin_organization;
    }

    public void setOrigin_organization(String origin_organization) {
        this.origin_organization = origin_organization;
    }

    public String getExtra_units() {
        return extra_units;
    }

    public void setExtra_units(String extra_units) {
        this.extra_units = extra_units;
    }

    public BigDecimal getExtra_quantity() {
        return extra_quantity;
    }

    public void setExtra_quantity(BigDecimal extra_quantity) {
        this.extra_quantity = extra_quantity;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public BigDecimal getCargo_space() {
        return cargo_space;
    }

    public void setCargo_space(BigDecimal cargo_space) {
        this.cargo_space = cargo_space;
    }

    public String getPackaging_type() {
        return packaging_type;
    }

    public void setPackaging_type(String packaging_type) {
        this.packaging_type = packaging_type;
    }

    public BigDecimal getPackage_quantity() {
        return package_quantity;
    }

    public void setPackage_quantity(BigDecimal package_quantity) {
        this.package_quantity = package_quantity;
    }

    public String getInkoterms() {
        return inkoterms;
    }

    public void setInkoterms(String inkoterms) {
        this.inkoterms = inkoterms;
    }

    public String getInkoterms_addres() {
        return inkoterms_addres;
    }

    public void setInkoterms_addres(String inkoterms_addres) {
        this.inkoterms_addres = inkoterms_addres;
    }

    public String getExtra_information() {
        return extra_information;
    }

    public void setExtra_information(String extra_information) {
        this.extra_information = extra_information;
    }

    public Date getInitial_decision_date() {
        return initial_decision_date;
    }

    public void setInitial_decision_date(Date initial_decision_date) {
        this.initial_decision_date = initial_decision_date;
    }

    public String getInitial_decision_number() {
        return initial_decision_number;
    }

    public void setInitial_decision_number(String initial_decision_number) {
        this.initial_decision_number = initial_decision_number;
    }

    public String getHs_decision_number() {
        return hs_decision_number;
    }

    public void setHs_decision_number(String hs_decision_number) {
        this.hs_decision_number = hs_decision_number;
    }

    public Date getHs_decision_date() {
        return hs_decision_date;
    }

    public void setHs_decision_date(Date hs_decision_date) {
        this.hs_decision_date = hs_decision_date;
    }

    public String getSelected_method_cause() {
        return selected_method_cause;
    }

    public void setSelected_method_cause(String selected_method_cause) {
        this.selected_method_cause = selected_method_cause;
    }

    public String getPerson_fio() {
        return person_fio;
    }

    public void setPerson_fio(String person_fio) {
        this.person_fio = person_fio;
    }

    public String getOrganization_name() {
        return organization_name;
    }

    public void setOrganization_name(String organization_name) {
        this.organization_name = organization_name;
    }

    public String getPerson_position() {
        return person_position;
    }

    public void setPerson_position(String person_position) {
        this.person_position = person_position;
    }

    public String getPerson_address() {
        return person_address;
    }

    public void setPerson_address(String person_address) {
        this.person_address = person_address;
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
}
