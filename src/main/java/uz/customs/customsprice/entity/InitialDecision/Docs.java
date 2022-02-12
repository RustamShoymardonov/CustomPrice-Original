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

    @ManyToOne
    @JoinColumn(name = "app_id")
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Apps appId;

    @Column(name = "doc_id", nullable = false)
    private String docId;

    public Docs() {
    }

    public Docs(String insUser, String updUser, Date insTime, Date updTime, int isDeleted, String id, String docNumber, Date doc_date, String docFile, Apps appId, String docId) {
        super(insUser, updUser, insTime, updTime, isDeleted);
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

    public Apps getAppId() {
        return appId;
    }

    public void setAppId(Apps appId) {
        this.appId = appId;
    }

    public String getDocId() {
        return docId;
    }

    public void setDocId(String docId) {
        this.docId = docId;
    }
}

