package uz.customs.customsprice.entity.InitialDecision;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import uz.customs.customsprice.entity.AbstractAuditingEntity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Docs extends AbstractAuditingEntity {
    @Id
    @GeneratedValue(generator = "uuid4")
    @GenericGenerator(name = "uuid4", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(name = "id", columnDefinition = "VARCHAR(50)")
    private String id;

    @Column(name = "doc_number", nullable = false)
    private String docNumber;

    @Column(name = "doc_date", nullable = false)
    private Date doc_date;

    @Column(name = "doc_file", nullable = false)
    private String docFile;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "app_id", insertable = false, updatable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Applications appId;

    @Column(name = "doc_id", nullable = false)
    private String docId;

    public Docs() {
    }

    public Docs(String id, String docNumber, Date doc_date, String docFile, Applications appId, String docId) {
        this.id = id;
        this.docNumber = docNumber;
        this.doc_date = doc_date;
        this.docFile = docFile;
        this.appId = appId;
        this.docId = docId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDocNumber() {
        return docNumber;
    }

    public void setDocNumber(String docNumber) {
        this.docNumber = docNumber;
    }

    public Date getDoc_date() {
        return doc_date;
    }

    public void setDoc_date(Date doc_date) {
        this.doc_date = doc_date;
    }

    public String getDocFile() {
        return docFile;
    }

    public void setDocFile(String docFile) {
        this.docFile = docFile;
    }

    public Applications getAppId() {
        return appId;
    }

    public void setAppId(Applications appId) {
        this.appId = appId;
    }

    public String getDocId() {
        return docId;
    }

    public void setDocId(String docId) {
        this.docId = docId;
    }
}
