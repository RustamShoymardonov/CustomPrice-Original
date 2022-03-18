package uz.customs.customsprice.service;


import com.itextpdf.text.*;
import com.itextpdf.text.pdf.*;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Service
public class PdfService {

    public void export(HttpServletResponse response, String arizaRaqam) throws IOException, DocumentException {

        Document document =  new Document(PageSize.A4);
        PdfWriter.getInstance(document, response.getOutputStream());

        document.open();

        Font fontTitle  = FontFactory.getFont("uz/customs/customsprice/fonts/DejaVuSans.ttf", "cp1251", 24);

        Paragraph paragraph = new Paragraph("DASTLABKI QAROR", fontTitle);
        paragraph.setAlignment(Paragraph.ALIGN_CENTER);
//        Chunk id = new Chunk("Text", fontTitle);
//        id.setBackground(BaseColor.RED, 1f, 0.5f, 1f, 1.5f);

        Image image = Image.getInstance("src/main/webapp/resources/images/gtk.jpg");
        image.scaleAbsolute(50, 50);
        image.setAbsolutePosition(70, 760);

        BarcodeQRCode qrCode = new BarcodeQRCode("http://youtube.com", 150, 150, null);
        Image img = qrCode.getImage();
        img.setAbsolutePosition(100, 20);


        PdfPTable table = new PdfPTable(3);

        PdfPCell cell1 = new PdfPCell(new Paragraph("Cell 1"));
        PdfPCell cell2 = new PdfPCell(new Paragraph("Cell 2"));
        PdfPCell cell3 = new PdfPCell(new Paragraph("Cell 3"));

        table.addCell(cell1);
        table.addCell(cell2);
        table.addCell(cell3);
        table.setSpacingBefore(30f);
        table.setSpacingAfter(10f);



        document.add(image);
        document.add(paragraph);
        document.add(table);
        document.add(img);
        document.close();

    }
}
