//package uz.customs.customsprice.entity.Digests;
//
//import javax.persistence.*;
//import java.math.BigDecimal;
//import java.sql.Timestamp;
//import java.util.Objects;
//
//@Entity
//@Table(name = "QIYMATCONSULT", schema = "EPIGUED", catalog = "")
//public class QiymatconsultEntity {
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    @Id
//    @Column(name = "ID")
//    private String id;
//    @Basic
//    @Column(name = "HAVOLA")
//    private String havola;
//    @Basic
//    @Column(name = "TOV_NUM")
//    private Short tovNum;
//    @Basic
//    @Column(name = "TOV_NARX")
//    private BigDecimal tovNarx;
//    @Basic
//    @Column(name = "JAMI")
//    private BigDecimal jami;
//    @Basic
//    @Column(name = "INSTIME")
//    private Timestamp instime;
//    @Basic
//    @Column(name = "UPDTIME")
//    private Timestamp updtime;
//    @Basic
//    @Column(name = "STATUS")
//    private Short status;
//    @Basic
//    @Column(name = "USER_ID")
//    private String userId;
//    @Basic
//    @Column(name = "USUL")
//    private String usul;
//    @Basic
//    @Column(name = "MANBA")
//    private Short manba;
//    @Basic
//    @Column(name = "DASTLABKI")
//    private BigDecimal dastlabki;
//    @Basic
//    @Column(name = "CURCOD")
//    private String curcod;
//    @Basic
//    @Column(name = "DECL_ID")
//    private String declId;
//    @Basic
//    @Column(name = "G32")
//    private Short g32;
//
//    public String getId() {
//        return id;
//    }
//
//    public void setId(String id) {
//        this.id = id;
//    }
//
//    public String getHavola() {
//        return havola;
//    }
//
//    public void setHavola(String havola) {
//        this.havola = havola;
//    }
//
//    public Short getTovNum() {
//        return tovNum;
//    }
//
//    public void setTovNum(Short tovNum) {
//        this.tovNum = tovNum;
//    }
//
//    public BigDecimal getTovNarx() {
//        return tovNarx;
//    }
//
//    public void setTovNarx(BigDecimal tovNarx) {
//        this.tovNarx = tovNarx;
//    }
//
//    public BigDecimal getJami() {
//        return jami;
//    }
//
//    public void setJami(BigDecimal jami) {
//        this.jami = jami;
//    }
//
//    public Timestamp getInstime() {
//        return instime;
//    }
//
//    public void setInstime(Timestamp instime) {
//        this.instime = instime;
//    }
//
//    public Timestamp getUpdtime() {
//        return updtime;
//    }
//
//    public void setUpdtime(Timestamp updtime) {
//        this.updtime = updtime;
//    }
//
//    public Short getStatus() {
//        return status;
//    }
//
//    public void setStatus(Short status) {
//        this.status = status;
//    }
//
//    public String getUserId() {
//        return userId;
//    }
//
//    public void setUserId(String userId) {
//        this.userId = userId;
//    }
//
//    public String getUsul() {
//        return usul;
//    }
//
//    public void setUsul(String usul) {
//        this.usul = usul;
//    }
//
//    public Short getManba() {
//        return manba;
//    }
//
//    public void setManba(Short manba) {
//        this.manba = manba;
//    }
//
//    public BigDecimal getDastlabki() {
//        return dastlabki;
//    }
//
//    public void setDastlabki(BigDecimal dastlabki) {
//        this.dastlabki = dastlabki;
//    }
//
//    public String getCurcod() {
//        return curcod;
//    }
//
//    public void setCurcod(String curcod) {
//        this.curcod = curcod;
//    }
//
//    public String getDeclId() {
//        return declId;
//    }
//
//    public void setDeclId(String declId) {
//        this.declId = declId;
//    }
//
//    public Short getG32() {
//        return g32;
//    }
//
//    public void setG32(Short g32) {
//        this.g32 = g32;
//    }
//
//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        QiymatconsultEntity that = (QiymatconsultEntity) o;
//        return Objects.equals(id, that.id) && Objects.equals(havola, that.havola) && Objects.equals(tovNum, that.tovNum) && Objects.equals(tovNarx, that.tovNarx) && Objects.equals(jami, that.jami) && Objects.equals(instime, that.instime) && Objects.equals(updtime, that.updtime) && Objects.equals(status, that.status) && Objects.equals(userId, that.userId) && Objects.equals(usul, that.usul) && Objects.equals(manba, that.manba) && Objects.equals(dastlabki, that.dastlabki) && Objects.equals(curcod, that.curcod) && Objects.equals(declId, that.declId) && Objects.equals(g32, that.g32);
//    }
//
//    @Override
//    public int hashCode() {
//        return Objects.hash(id, havola, tovNum, tovNarx, jami, instime, updtime, status, userId, usul, manba, dastlabki, curcod, declId, g32);
//    }
//}
