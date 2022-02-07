package uz.customs.customsprice.entity.InitialDecision;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class DocType {
    @Id
//    @GeneratedValue(generator = "uuid4")
//    @GenericGenerator(name = "uuid4", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(name = "itemsno")
    private Integer itemsNo;

    @Column(name = "docfullname", length = 100, nullable = false)
    private String docFullName;

    @Column(name = "doccodename", length = 20, nullable = false)
    private String docCodeName;

    @Column(name = "mask", length = 20)
    private String mask;

    @Column(name = "isdeleted", nullable = false, columnDefinition = "SMALLINT DEFAULT 0")
    private int isDeleted;

    @Column(name = "priznak_eldoc", length = 1, nullable = false)
    private String priznakEldoc;

    @Column(name = "startdate", length = 10)
    private Date startDate;

    @Column(name = "finishdate", length = 10)
    private Date finishDate;

    public DocType() {
    }

    public DocType(Integer itemsNo, String docFullName, String docCodeName, String mask, int isDeleted, String priznakEldoc, Date startDate, Date finishDate) {
        this.itemsNo = itemsNo;
        this.docFullName = docFullName;
        this.docCodeName = docCodeName;
        this.mask = mask;
        this.isDeleted = isDeleted;
        this.priznakEldoc = priznakEldoc;
        this.startDate = startDate;
        this.finishDate = finishDate;
    }

    public Integer getItemsNo() {
        return itemsNo;
    }

    public void setItemsNo(Integer itemsNo) {
        this.itemsNo = itemsNo;
    }

    public String getDocFullName() {
        return docFullName;
    }

    public void setDocFullName(String docFullName) {
        this.docFullName = docFullName;
    }

    public String getDocCodeName() {
        return docCodeName;
    }

    public void setDocCodeName(String docCodeName) {
        this.docCodeName = docCodeName;
    }

    public String getMask() {
        return mask;
    }

    public void setMask(String mask) {
        this.mask = mask;
    }

    public int getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(int isDeleted) {
        this.isDeleted = isDeleted;
    }

    public String getPriznakEldoc() {
        return priznakEldoc;
    }

    public void setPriznakEldoc(String priznakEldoc) {
        this.priznakEldoc = priznakEldoc;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getFinishDate() {
        return finishDate;
    }

    public void setFinishDate(Date finishDate) {
        this.finishDate = finishDate;
    }
}
