package uz.customs.customsprice.entity.InitialDecision;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.springframework.format.annotation.DateTimeFormat;
import uz.customs.customsprice.entity.entityConfig.AbstractAuditingEntity;

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
    @JoinColumn(name = "APP_ID", insertable = false, updatable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Apps apps;

    @Column(name = "app_id", length = 50)
    private String appId;

    @Column(name = "TRADE_NAME", columnDefinition = "VARCHAR(765) CCSID 1208")
    private String tradeName;

    @Column(name = "TRADE_MARK", columnDefinition = "VARCHAR(765) CCSID 1208")
    private String tradeMark;

    @Column(name = "MARK", columnDefinition = "VARCHAR(765) CCSID 1208")
    private String mark;

    @Column(name = "MODEL", columnDefinition = "VARCHAR(765) CCSID 1208")
    private String model;

    @Column(name = "ARTICLE", columnDefinition = "VARCHAR(765) CCSID 1208")
    private String article;

    @Column(name = "SORT", columnDefinition = "VARCHAR(765) CCSID 1208")
    private String sort;

    @Column(name = "STANDARTS", columnDefinition = "VARCHAR(1500) CCSID 1208")
    private String standarts;

    @Column(name = "FUNCTIONS", columnDefinition = "VARCHAR(1500) CCSID 1208")
    private String functions;

    @Column(name = "COM_PROP", columnDefinition = "VARCHAR(4000) CCSID 1208")
    private String comProp;

    @Column(name = "TECH_CHAR", columnDefinition = "VARCHAR(2000) CCSID 1208")
    private String techChar;

    @Column(name = "PRODUCT_GOAL", columnDefinition = "VARCHAR(900) CCSID 1208")
    private String productGoal;

    @Column(name = "HS_CODE", length = 10)
    private String hsCode;

    @Column(name = "BRUTTO", precision = 5, scale = 2)
    private BigDecimal brutto;

    @Column(name = "NETTO", precision = 5, scale = 2)
    private BigDecimal netto;

    @Column(name = "BASIC_QTY", precision = 5, scale = 2)
    private BigDecimal basicQty;

    @Column(name = "EXTRA_UNITS", length = 3)
    private String extraUnits;

    @Column(name = "EXTRA_QTY", precision = 5, scale = 2)
    private BigDecimal extraQty;

    @Column(name = "PRICE", precision = 5, scale = 2)
    private BigDecimal price;

    @Column(name = "CURRENCY_TYPE", length = 3)
    private String currencyType;

    @Column(name = "CARGO_SPACE", precision = 5, scale = 2)
    private BigDecimal cargoSpace;

    @Column(name = "PACK_TYPE", length = 3)
    private String packType;

    @Column(name = "PACK_TYPE_NM", columnDefinition = "VARCHAR(90) CCSID 1208")
    private String packTypeNm;

    @Column(name = "PACK_QTY", precision = 5, scale = 2)
    private BigDecimal packQty;

    @Column(name = "EXTRA_INFO", columnDefinition = "VARCHAR(2000) CCSID 1208")
    private String extraInfo;

    @Column(name = "HS_DEC_NUM", length = 20)
    private String hsDecNum;

    @Column(name = "HS_DEC_DATE")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
//    @NotNull(message = "")
    @Temporal(TemporalType.DATE)
    private Date hsDecDate;

    @Column(name = "METHOD", length = 2)
    private String method;

    @Column(name = "METHOD_NM", columnDefinition = "VARCHAR(90) CCSID 1208")
    private String methodNm;

    public Commodity() {
    }

    public Commodity(String insUser, String updUser, Date insTime, Date updTime, int isDeleted, String id, Apps apps, String appId, String tradeName, String tradeMark, String mark, String model, String article, String sort, String standarts, String functions, String comProp, String techChar, String productGoal, String hsCode, BigDecimal brutto, BigDecimal netto, BigDecimal basicQty, String extraUnits, BigDecimal extraQty, BigDecimal price, String currencyType, BigDecimal cargoSpace, String packType, String packTypeNm, BigDecimal packQty, String extraInfo, String hsDecNum, Date hsDecDate, String method, String methodNm) {
        super(insUser, updUser, insTime, updTime, isDeleted);
        this.id = id;
        this.apps = apps;
        this.appId = appId;
        this.tradeName = tradeName;
        this.tradeMark = tradeMark;
        this.mark = mark;
        this.model = model;
        this.article = article;
        this.sort = sort;
        this.standarts = standarts;
        this.functions = functions;
        this.comProp = comProp;
        this.techChar = techChar;
        this.productGoal = productGoal;
        this.hsCode = hsCode;
        this.brutto = brutto;
        this.netto = netto;
        this.basicQty = basicQty;
        this.extraUnits = extraUnits;
        this.extraQty = extraQty;
        this.price = price;
        this.currencyType = currencyType;
        this.cargoSpace = cargoSpace;
        this.packType = packType;
        this.packTypeNm = packTypeNm;
        this.packQty = packQty;
        this.extraInfo = extraInfo;
        this.hsDecNum = hsDecNum;
        this.hsDecDate = hsDecDate;
        this.method = method;
        this.methodNm = methodNm;
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

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getTradeName() {
        return tradeName;
    }

    public void setTradeName(String tradeName) {
        this.tradeName = tradeName;
    }

    public String getTradeMark() {
        return tradeMark;
    }

    public void setTradeMark(String tradeMark) {
        this.tradeMark = tradeMark;
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

    public String getComProp() {
        return comProp;
    }

    public void setComProp(String comProp) {
        this.comProp = comProp;
    }

    public String getTechChar() {
        return techChar;
    }

    public void setTechChar(String techChar) {
        this.techChar = techChar;
    }

    public String getProductGoal() {
        return productGoal;
    }

    public void setProductGoal(String productGoal) {
        this.productGoal = productGoal;
    }

    public String getHsCode() {
        return hsCode;
    }

    public void setHsCode(String hsCode) {
        this.hsCode = hsCode;
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

    public BigDecimal getBasicQty() {
        return basicQty;
    }

    public void setBasicQty(BigDecimal basicQty) {
        this.basicQty = basicQty;
    }

    public String getExtraUnits() {
        return extraUnits;
    }

    public void setExtraUnits(String extraUnits) {
        this.extraUnits = extraUnits;
    }

    public BigDecimal getExtraQty() {
        return extraQty;
    }

    public void setExtraQty(BigDecimal extraQty) {
        this.extraQty = extraQty;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getCurrencyType() {
        return currencyType;
    }

    public void setCurrencyType(String currencyType) {
        this.currencyType = currencyType;
    }

    public BigDecimal getCargoSpace() {
        return cargoSpace;
    }

    public void setCargoSpace(BigDecimal cargoSpace) {
        this.cargoSpace = cargoSpace;
    }

    public String getPackType() {
        return packType;
    }

    public void setPackType(String packType) {
        this.packType = packType;
    }

    public String getPackTypeNm() {
        return packTypeNm;
    }

    public void setPackTypeNm(String packTypeNm) {
        this.packTypeNm = packTypeNm;
    }

    public BigDecimal getPackQty() {
        return packQty;
    }

    public void setPackQty(BigDecimal packQty) {
        this.packQty = packQty;
    }

    public String getExtraInfo() {
        return extraInfo;
    }

    public void setExtraInfo(String extraInfo) {
        this.extraInfo = extraInfo;
    }

    public String getHsDecNum() {
        return hsDecNum;
    }

    public void setHsDecNum(String hsDecNum) {
        this.hsDecNum = hsDecNum;
    }

    public Date getHsDecDate() {
        return hsDecDate;
    }

    public void setHsDecDate(Date hsDecDate) {
        this.hsDecDate = hsDecDate;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getMethodNm() {
        return methodNm;
    }

    public void setMethodNm(String methodNm) {
        this.methodNm = methodNm;
    }
}

/*
"id":"id",
"apps":"apps",
"tradeName": "Тижорат номи",
"tradeMark": "Савдо белгиси",
"mark": "Маркаси",
"model": "Модел",
"article": "артикул",
"sort": "Нави",
"standarts": "стандартлар",
"functions": "Вазифаси",
"comProp": "тижорат ҳусусияти",
"techChar": "техник ҳусусияти",
"productGoal": "фойдаланиш мақсади",
"hsCode": "0101210000",
"brutto": "77887.23",
"netto": "88787.96",
"basicQty": "57887.96",
"extraUnits": "840",
"extraQty": "97887.96",
"price": "37887.96",
"currencyType": "840",
"cargoSpace": "47887.96",
"packType": "018",
"packTypeNm": "картонли коробкалар",
"packQty": "41187.96",
"extraInfo": "қўшимча маълумот ва изоҳлар",
"hsDecNum": "220017895",
"hsDecDate": "2022-01-11",
"method": "01",
"methodNm": "олиб кириладиган товарга доир битимнинг қиймати бўйича"*/
