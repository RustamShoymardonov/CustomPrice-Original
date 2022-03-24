package uz.customs.customsprice.service;


import com.itextpdf.text.*;
import com.itextpdf.text.pdf.*;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Service
public class PdfService {
    private final StatusService statusService;

    public PdfService(StatusService statusService) {
        this.statusService = statusService;
    }

    public void export(HttpServletResponse response, String arizaRaqam) throws IOException, DocumentException {

        Document document =  new Document(PageSize.A4);
        PdfWriter.getInstance(document, response.getOutputStream());

        document.open();

        Font fontTitle  = FontFactory.getFont("arialuni.ttf", "cp1251", 14);

        Paragraph paragraph = new Paragraph("Ўзбекистон Республикасига олиб кириладиган товарлар бўйича тўланиши лозим бўлган божхона тўловлари миқдорини аниқлаш бўйича дастлабки қарор", fontTitle);
        paragraph.setAlignment(Paragraph.ALIGN_JUSTIFIED_ALL);

//        Chunk id = new Chunk("Text", fontTitle);
//        id.setBackground(BaseColor.RED, 1f, 0.5f, 1f, 1.5f);

        Image image = Image.getInstance("src/main/webapp/resources/images/gtk.jpg");
        image.scaleAbsolute(50, 50);
        image.setAbsolutePosition(70, 760);

        BarcodeQRCode qrCode = new BarcodeQRCode("http://youtube.com", 70, 70, null);
        Image img = qrCode.getImage();;
        img.setAbsolutePosition(500, 800);


        PdfPTable table1 = new PdfPTable(2);
        PdfPTable table2 = new PdfPTable(2);

        PdfPCell cell11 = new PdfPCell(new Paragraph("1. Дастлабки қарорни рўйхатга олиш рақами ва санаси"));
        PdfPCell cell12 = new PdfPCell(new Paragraph(arizaRaqam));
        PdfPCell cell21 = new PdfPCell(new Paragraph("2. Дастлабки қарорни қабул қилган божхона органининг номи"));
        PdfPCell cell22 = new PdfPCell(new Paragraph(arizaRaqam));

        /******/
        /******/


        table1.addCell(cell11);
        table1.addCell(cell12);
        table2.addCell(cell21);
        table2.addCell(cell22);
        table1.setSpacingBefore(30f);



        document.add(image);
        document.add(paragraph);
        document.add(table1);
        document.add(table2);
        document.add(img);
        document.close();

    }
}
