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
public class Payment extends AbstractAuditingEntity {
    @Id
    @GeneratedValue(generator = "uuid4")
    @GenericGenerator(name = "uuid4", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(name = "id", columnDefinition = "VARCHAR(50)")
    private String id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CMDT_ID", insertable = false, updatable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Commodity commodity;

    @Column(name = "G47BASE", precision = 5, scale = 2)
    private BigDecimal g47Base;

    @Column(name = "G47ALTBASE", precision = 5, scale = 2)
    private BigDecimal g47AltBase;

    @Column(name = "G47RATE", precision = 5, scale = 2)
    private BigDecimal g47Rate;

    @Column(name = "G47ALTRATE", precision = 5, scale = 2)
    private BigDecimal g47AltRate;

    @Column(name = "G47CURRKOD", length = 3)
    private String g47CurrKod;

    @Column(name = "G47SUM", precision = 5, scale = 2)
    private BigDecimal g47Sum;

    @Column(name = "G47SP", length = 4)
    private String g47Sp;

    @Column(name = "G47CLCTYPE")
    private Integer g47clcType;

    @Column(name = "G47TYPE", length = 4)
    private String g47Type;

    @Column(name = "G47ALTBASECURRKOD", length = 3)
    private String g47AltBaseCurrKod;

    @Column(name = "G47ALTBASEEDIZM", length = 20)
    private String g47AltBaseEdIzm;

    @Column(name = "G47SUMCURRKOD", length = 3)
    private String g47SumCurrKod;

    public Payment() {
    }

    public Payment(String insUser, String updUser, Date insTime, Date updTime, int isDeleted, String id, Commodity commodity, BigDecimal g47Base, BigDecimal g47AltBase, BigDecimal g47Rate, BigDecimal g47AltRate, String g47CurrKod, BigDecimal g47Sum, String g47Sp, Integer g47clcType, String g47Type, String g47AltBaseCurrKod, String g47AltBaseEdIzm, String g47SumCurrKod) {
        super(insUser, updUser, insTime, updTime, isDeleted);
        this.id = id;
        this.commodity = commodity;
        this.g47Base = g47Base;
        this.g47AltBase = g47AltBase;
        this.g47Rate = g47Rate;
        this.g47AltRate = g47AltRate;
        this.g47CurrKod = g47CurrKod;
        this.g47Sum = g47Sum;
        this.g47Sp = g47Sp;
        this.g47clcType = g47clcType;
        this.g47Type = g47Type;
        this.g47AltBaseCurrKod = g47AltBaseCurrKod;
        this.g47AltBaseEdIzm = g47AltBaseEdIzm;
        this.g47SumCurrKod = g47SumCurrKod;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Commodity getCommodity() {
        return commodity;
    }

    public void setCommodity(Commodity commodity) {
        this.commodity = commodity;
    }

    public BigDecimal getG47Base() {
        return g47Base;
    }

    public void setG47Base(BigDecimal g47Base) {
        this.g47Base = g47Base;
    }

    public BigDecimal getG47AltBase() {
        return g47AltBase;
    }

    public void setG47AltBase(BigDecimal g47AltBase) {
        this.g47AltBase = g47AltBase;
    }

    public BigDecimal getG47Rate() {
        return g47Rate;
    }

    public void setG47Rate(BigDecimal g47Rate) {
        this.g47Rate = g47Rate;
    }

    public BigDecimal getG47AltRate() {
        return g47AltRate;
    }

    public void setG47AltRate(BigDecimal g47AltRate) {
        this.g47AltRate = g47AltRate;
    }

    public String getG47CurrKod() {
        return g47CurrKod;
    }

    public void setG47CurrKod(String g47CurrKod) {
        this.g47CurrKod = g47CurrKod;
    }

    public BigDecimal getG47Sum() {
        return g47Sum;
    }

    public void setG47Sum(BigDecimal g47Sum) {
        this.g47Sum = g47Sum;
    }

    public String getG47Sp() {
        return g47Sp;
    }

    public void setG47Sp(String g47Sp) {
        this.g47Sp = g47Sp;
    }

    public Integer getG47clcType() {
        return g47clcType;
    }

    public void setG47clcType(Integer g47clcType) {
        this.g47clcType = g47clcType;
    }

    public String getG47Type() {
        return g47Type;
    }

    public void setG47Type(String g47Type) {
        this.g47Type = g47Type;
    }

    public String getG47AltBaseCurrKod() {
        return g47AltBaseCurrKod;
    }

    public void setG47AltBaseCurrKod(String g47AltBaseCurrKod) {
        this.g47AltBaseCurrKod = g47AltBaseCurrKod;
    }

    public String getG47AltBaseEdIzm() {
        return g47AltBaseEdIzm;
    }

    public void setG47AltBaseEdIzm(String g47AltBaseEdIzm) {
        this.g47AltBaseEdIzm = g47AltBaseEdIzm;
    }

    public String getG47SumCurrKod() {
        return g47SumCurrKod;
    }

    public void setG47SumCurrKod(String g47SumCurrKod) {
        this.g47SumCurrKod = g47SumCurrKod;
    }
}
