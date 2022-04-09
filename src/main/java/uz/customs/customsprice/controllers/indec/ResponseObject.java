package uz.customs.customsprice.controllers.indec;

import java.math.BigDecimal;

public class ResponseObject {
    private String paymentType;
    private BigDecimal g47Base;
    private BigDecimal g47AltBase;
    private BigDecimal altRate;
    private BigDecimal g47AltRate;
    private BigDecimal rate840;
    private String typeRate;
    private BigDecimal g47Rate;
    private String g47AltBaseEdIzm;
    private BigDecimal g47Sum;
    private String g47Sp;
    private int g47ClcType;
    private String g47Type;

    public ResponseObject() {
    }

    public ResponseObject(String paymentType, BigDecimal g47Base, BigDecimal g47AltBase, BigDecimal altRate, BigDecimal g47AltRate, BigDecimal rate840, String typeRate, BigDecimal g47Rate, String g47AltBaseEdIzm, BigDecimal g47Sum, String g47Sp, int g47ClcType, String g47Type) {
        this.paymentType = paymentType;
        this.g47Base = g47Base;
        this.g47AltBase = g47AltBase;
        this.altRate = altRate;
        this.g47AltRate = g47AltRate;
        this.rate840 = rate840;
        this.typeRate = typeRate;
        this.g47Rate = g47Rate;
        this.g47AltBaseEdIzm = g47AltBaseEdIzm;
        this.g47Sum = g47Sum;
        this.g47Sp = g47Sp;
        this.g47ClcType = g47ClcType;
        this.g47Type = g47Type;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
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

    public BigDecimal getAltRate() {
        return altRate;
    }

    public void setAltRate(BigDecimal altRate) {
        this.altRate = altRate;
    }

    public BigDecimal getG47AltRate() {
        return g47AltRate;
    }

    public void setG47AltRate(BigDecimal g47AltRate) {
        this.g47AltRate = g47AltRate;
    }

    public BigDecimal getRate840() {
        return rate840;
    }

    public void setRate840(BigDecimal rate840) {
        this.rate840 = rate840;
    }

    public String getTypeRate() {
        return typeRate;
    }

    public void setTypeRate(String typeRate) {
        this.typeRate = typeRate;
    }

    public BigDecimal getG47Rate() {
        return g47Rate;
    }

    public void setG47Rate(BigDecimal g47Rate) {
        this.g47Rate = g47Rate;
    }

    public String getG47AltBaseEdIzm() {
        return g47AltBaseEdIzm;
    }

    public void setG47AltBaseEdIzm(String g47AltBaseEdIzm) {
        this.g47AltBaseEdIzm = g47AltBaseEdIzm;
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

    public int getG47ClcType() {
        return g47ClcType;
    }

    public void setG47ClcType(int g47ClcType) {
        this.g47ClcType = g47ClcType;
    }

    public String getG47Type() {
        return g47Type;
    }

    public void setG47Type(String g47Type) {
        this.g47Type = g47Type;
    }

    @Override
    public String toString() {
        return "ResponseObject{" +
                "paymentType='" + paymentType + '\'' +
                ", g47Base=" + g47Base +
                ", g47AltBase=" + g47AltBase +
                ", altRate=" + altRate +
                ", g47AltRate=" + g47AltRate +
                ", rate840=" + rate840 +
                ", typeRate='" + typeRate + '\'' +
                ", g47Rate=" + g47Rate +
                ", g47AltBaseEdIzm='" + g47AltBaseEdIzm + '\'' +
                ", g47Sum=" + g47Sum +
                ", g47Sp='" + g47Sp + '\'' +
                ", g47ClcType=" + g47ClcType +
                ", g47Type='" + g47Type + '\'' +
                '}';
    }
}
