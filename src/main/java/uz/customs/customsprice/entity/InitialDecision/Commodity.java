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
public class Commodity extends AbstractAuditingEntity {
    @Id
    @GeneratedValue(generator = "uuid4")
    @GenericGenerator(name = "uuid4", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(name = "id", columnDefinition = "VARCHAR(50)")
    private String id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "app_id", insertable = false, updatable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Apps applications;

    @Column(name = "TRADE_NAME", columnDefinition = "VARCHAR(255) CCSID 1208")
    private String trade_name;

    @Column(name = "TRADE_MARK", columnDefinition = "VARCHAR(255) CCSID 1208")
    private String trade_mark;

    @Column(name = "MARK", columnDefinition = "VARCHAR(255) CCSID 1208")
    private String mark;

    @Column(name = "MODEL", columnDefinition = "VARCHAR(255) CCSID 1208")
    private String model;

    @Column(name = "ARTICLE", columnDefinition = "VARCHAR(255) CCSID 1208")
    private String article;

    @Column(name = "SORT", columnDefinition = "VARCHAR(255) CCSID 1208")
    private String sort;

    @Column(name = "STANDARTS", columnDefinition = "VARCHAR(500) CCSID 1208")
    private String standarts;

    @Column(name = "FUNCTIONS", columnDefinition = "VARCHAR(500) CCSID 1208")
    private String functions;

    @Column(name = "COM_PROP", columnDefinition = "VARCHAR(2000) CCSID 1208")
    private String com_prop;

    @Column(name = "TECH_CHAR", columnDefinition = "VARCHAR(1000) CCSID 1208")
    private String tech_char;

    @Column(name = "PRODUCT_GOAL", columnDefinition = "VARCHAR(300) CCSID 1208")
    private String product_goal;

    @Column(name = "HS_CODE", length = 10)
    private String hs_code;

    @Column(name = "BRUTTO", precision = 5, scale = 2)
    private BigDecimal brutto;

    @Column(name = "NETTO", precision = 5, scale = 2)
    private BigDecimal netto;

    @Column(name = "BASIC_QTY", precision = 5, scale = 2)
    private BigDecimal basic_qty;

    @Column(name = "EXTRA_UNITS", length = 3)
    private String extra_units;

    @Column(name = "EXTRA_QTY", precision = 5, scale = 2)
    private BigDecimal extra_qty;

    @Column(name = "PRICE", precision = 5, scale = 2)
    private BigDecimal price;

    @Column(name = "CURRENCY_TYPE", length = 3)
    private String currency_type;

    @Column(name = "CARGO_SPACE", precision = 5, scale = 2)
    private BigDecimal cargo_space;

    @Column(name = "PACK_TYPE", length = 3)
    private String pack_type;

    @Column(name = "PACK_TYPE_NM", columnDefinition = "VARCHAR(90) CCSID 1208")
    private String pack_type_nm;

    @Column(name = "PACK_QTY", precision = 5, scale = 2)
    private BigDecimal pack_qty;

    @Column(name = "EXTRA_INFO", columnDefinition = "VARCHAR(2000) CCSID 1208")
    private String extra_info;

    @Column(name = "HS_DEC_NUM", length = 20)
    private String hs_dec_num;

    @Column(name = "HS_DEC_DATE")
    private Date hs_dec_date;

    @Column(name = "METHOD", length = 2)
    private String method;

    @Column(name = "METHOD_NM", columnDefinition = "VARCHAR(90) CCSID 1208")
    private String method_nm;

    public Commodity() {
    }

    public Commodity(String insUser, String updUser, Date insTime, Date updTime, int isDeleted, String id, Apps applications, String trade_name, String trade_mark, String mark, String model, String article, String sort, String standarts, String functions, String com_prop, String tech_char, String product_goal, String hs_code, BigDecimal brutto, BigDecimal netto, BigDecimal basic_qty, String extra_units, BigDecimal extra_qty, BigDecimal price, String currency_type, BigDecimal cargo_space, String pack_type, String pack_type_nm, BigDecimal pack_qty, String extra_info, String hs_dec_num, Date hs_dec_date, String method, String method_nm) {
        super(insUser, updUser, insTime, updTime, isDeleted);
        this.id = id;
        this.applications = applications;
        this.trade_name = trade_name;
        this.trade_mark = trade_mark;
        this.mark = mark;
        this.model = model;
        this.article = article;
        this.sort = sort;
        this.standarts = standarts;
        this.functions = functions;
        this.com_prop = com_prop;
        this.tech_char = tech_char;
        this.product_goal = product_goal;
        this.hs_code = hs_code;
        this.brutto = brutto;
        this.netto = netto;
        this.basic_qty = basic_qty;
        this.extra_units = extra_units;
        this.extra_qty = extra_qty;
        this.price = price;
        this.currency_type = currency_type;
        this.cargo_space = cargo_space;
        this.pack_type = pack_type;
        this.pack_type_nm = pack_type_nm;
        this.pack_qty = pack_qty;
        this.extra_info = extra_info;
        this.hs_dec_num = hs_dec_num;
        this.hs_dec_date = hs_dec_date;
        this.method = method;
        this.method_nm = method_nm;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Apps getApplications() {
        return applications;
    }

    public void setApplications(Apps applications) {
        this.applications = applications;
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

    public String getCom_prop() {
        return com_prop;
    }

    public void setCom_prop(String com_prop) {
        this.com_prop = com_prop;
    }

    public String getTech_char() {
        return tech_char;
    }

    public void setTech_char(String tech_char) {
        this.tech_char = tech_char;
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

    public BigDecimal getBrutto() {
        return brutto;
    }

    public void setBrutto(BigDecimal brutto) {
        this.brutto = brutto;
    }

    public BigDecimal getNetto() {
        return netto;
    }

    public void setNetto(BigDecimal netto) {
        this.netto = netto;
    }

    public BigDecimal getBasic_qty() {
        return basic_qty;
    }

    public void setBasic_qty(BigDecimal basic_qty) {
        this.basic_qty = basic_qty;
    }

    public String getExtra_units() {
        return extra_units;
    }

    public void setExtra_units(String extra_units) {
        this.extra_units = extra_units;
    }

    public BigDecimal getExtra_qty() {
        return extra_qty;
    }

    public void setExtra_qty(BigDecimal extra_qty) {
        this.extra_qty = extra_qty;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getCurrency_type() {
        return currency_type;
    }

    public void setCurrency_type(String currency_type) {
        this.currency_type = currency_type;
    }

    public BigDecimal getCargo_space() {
        return cargo_space;
    }

    public void setCargo_space(BigDecimal cargo_space) {
        this.cargo_space = cargo_space;
    }

    public String getPack_type() {
        return pack_type;
    }

    public void setPack_type(String pack_type) {
        this.pack_type = pack_type;
    }

    public String getPack_type_nm() {
        return pack_type_nm;
    }

    public void setPack_type_nm(String pack_type_nm) {
        this.pack_type_nm = pack_type_nm;
    }

    public BigDecimal getPack_qty() {
        return pack_qty;
    }

    public void setPack_qty(BigDecimal pack_qty) {
        this.pack_qty = pack_qty;
    }

    public String getExtra_info() {
        return extra_info;
    }

    public void setExtra_info(String extra_info) {
        this.extra_info = extra_info;
    }

    public String getHs_dec_num() {
        return hs_dec_num;
    }

    public void setHs_dec_num(String hs_dec_num) {
        this.hs_dec_num = hs_dec_num;
    }

    public Date getHs_dec_date() {
        return hs_dec_date;
    }

    public void setHs_dec_date(Date hs_dec_date) {
        this.hs_dec_date = hs_dec_date;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getMethod_nm() {
        return method_nm;
    }

    public void setMethod_nm(String method_nm) {
        this.method_nm = method_nm;
    }
}
