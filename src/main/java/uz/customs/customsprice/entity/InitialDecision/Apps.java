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


}
