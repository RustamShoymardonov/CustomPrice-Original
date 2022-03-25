package uz.customs.customsprice.service;


import com.itextpdf.text.BadElementException;
import com.itextpdf.text.Document;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.BarcodeQRCode;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.css.CssFile;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;
import org.xhtmlrenderer.pdf.ITextRenderer;
import uz.customs.customsprice.entity.InitialDecision.Apps;
import uz.customs.customsprice.entity.InitialDecision.Commodity;
import uz.customs.customsprice.entity.InitialDecision.InDec;
import uz.customs.customsprice.entity.files.DecisionPdf;

import java.io.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.Optional;
import com.itextpdf.tool.xml.XMLWorkerHelper;


@Service
public class PdfService {
    public final String DATA_DIRECTORY = "D:\\IN_DEC_FILES\\DECISION_PDF\\";
    private final AppsService appsService;
    private final CommodityService commodityService;
    private final InDecService inDecService;
    private final DecisionPdfService decisionPdfService;

    public PdfService(AppsService appsService, CommodityService commodityService, InDecService inDecService, DecisionPdfService decisionPdfService) {
        this.appsService = appsService;
        this.commodityService = commodityService;
        this.inDecService = inDecService;
        this.decisionPdfService = decisionPdfService;
    }

    public void createPdf(String appId, String cmdtId) throws IOException, BadElementException {
        String aa="";
        Apps apps = appsService.findById(appId);
        ClassLoaderTemplateResolver templateResolver = new ClassLoaderTemplateResolver();
        templateResolver.setSuffix(".html");
        templateResolver.setTemplateMode(TemplateMode.HTML);
        TemplateEngine templateEngine = new TemplateEngine();
        templateEngine.setTemplateResolver(templateResolver);

        BarcodeQRCode qrCode = new BarcodeQRCode("http://youtube.com", 150, 150, null);
        Image img = qrCode.getImage();
        String url_qrCode = "http://youtube.com";

        Context context = new Context();
        context.setVariable("appsDate", appsService.findById(appId));
        context.setVariable("url_qrCode", url_qrCode);
        String processHtml = templateEngine.process("templates/PdfGenerate.html", context);

        String urlTTF = "TimesNewRoman.ttf";
        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String strDate = dateFormat.format(date);
        LocalDate currentDate = LocalDate.parse(strDate);
        String day = Integer.toString(currentDate.getDayOfMonth());
        String month = Integer.toString(currentDate.getMonthValue());
        String year = Integer.toString(currentDate.getYear());
        String appFolder = apps.getAppNum();
        String hash256 = "";
        File folder = new File(DATA_DIRECTORY);
        if (!folder.exists()) {
            folder.mkdirs();
        }
        File sv_dir = new File(DATA_DIRECTORY + year);
        if (!sv_dir.exists()) sv_dir.mkdir();
        sv_dir = new File(DATA_DIRECTORY + year + "\\" + month);
        if (!sv_dir.exists()) sv_dir.mkdir();
        sv_dir = new File(DATA_DIRECTORY + year + "\\" + month + "\\" + day);
        if (!sv_dir.exists()) sv_dir.mkdir();
        sv_dir = new File(DATA_DIRECTORY + year + "\\" + month + "\\" + day + "\\" + apps.getAppNum());
        if (!sv_dir.exists()) sv_dir.mkdir();

        DecisionPdf decisionPdf = new DecisionPdf();
        InDec inDec = inDecService.getByCmtdId(cmdtId);
        Optional<Commodity> commodity = commodityService.getById(cmdtId);
        String FileName = ("ID" + commodity.get().getCmdtNum() + "-" + inDec.getInDecNum() + ".pdf");
        OutputStream outputStream = new FileOutputStream(sv_dir.getPath() + "/" + FileName);
        ITextRenderer renderer = new ITextRenderer();
        renderer.getFontResolver().addFont(urlTTF, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
        renderer.setDocumentFromString(processHtml);
        renderer.layout();

        decisionPdf.setCmdtId(cmdtId);
        decisionPdf.setInDecId(inDec.getId());
        decisionPdf.setPdfPath(sv_dir.getPath() + "/" + FileName);
        String pdfFormat = "application/pdf";
        decisionPdf.setPdfFormat(pdfFormat);
        decisionPdf.setPdfName(FileName);
        decisionPdfService.saveDecisionPdf(decisionPdf);

        renderer.createPDF(outputStream, false);
        renderer.finishPDF();
        try {
            outputStream.close();
        } catch (java.io.IOException e) {
            e.printStackTrace();
        }

        /*****/

        try {
            Document document = new Document(PageSize.LETTER);
            PdfWriter pdfWriter = PdfWriter.getInstance
                    (document, new FileOutputStream("D://temp//testpdf.pdf"));
            document.open();
            document.addAuthor("Real Gagnon");
            document.addCreator("Real's HowTo");
            document.addSubject("Thanks for your support");
            document.addCreationDate();
            document.addTitle("Please read this");
//            BarcodeQRCode qrCode = new BarcodeQRCode("http://youtube.com", 150, 150, null);
//            Image img = qrCode.getImage();
            img.setAbsolutePosition(100, 20);
            document.add(img);

            XMLWorkerHelper worker = XMLWorkerHelper.getInstance();
//            CssFile css = XMLWorkerHelper.getCSS();

//            worker.getDefaultCSS();
//            XMLWorkerHelper.
            worker.parseXHtml(pdfWriter, document, new StringReader(processHtml));
            document.close();
            System.out.println("Done.");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        /****/
    }
    private static String GetHash2(InputStream fis) throws IOException, NoSuchAlgorithmException {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
//            FileInputStream fis = new FileInputStream(fileName);

            byte[] dataBytes = new byte[1024];

            int nread = 0;
            while ((nread = fis.read(dataBytes)) != -1) {
                md.update(dataBytes, 0, nread);
            }
            byte[] mdbytes = md.digest();

            //convert the byte to hex format
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < mdbytes.length; i++) {
                sb.append(Integer.toString((mdbytes[i] & 0xff) + 0x100, 16).substring(1));
            }

            fis.close();
            return sb.toString();
        } catch (Exception e) {
            return "";
        }
    }

    public static String format(double bytes, int digits) {
        String[] dictionary = {"bytes", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"};
        int index = 0;
        for (index = 0; index < dictionary.length; index++) {
            if (bytes < 1024) {
                break;
            }
            bytes = bytes / 1024;
        }
        return String.format("%." + digits + "f", bytes) + " " + dictionary[index];
    }

    private String str_prb(String par1) {
        int n = 1;
        String chck_fn = "qwertyuiopasdfghjklzxcvbnm1234567890-йцукенгшщзхъфывапролджэячсмитьбюёў. ~!@#$%^&*()_+=/|\\';:,№?<>[]{}";
        String par2 = "";
        for (n = 0; n < par1.length(); n++) {
            if (chck_fn.indexOf(par1.substring(n, n + 1).toLowerCase()) > -1) {
                par2 = par2 + par1.substring(n, n + 1);
            } else {
                par2 = par2 + "%";
            }
        }
        return par2;
    }

//        private final AppsService appsService;
//
//        public PdfService(AppsService appsService) {
//                this.appsService = appsService;
//        }
//
//        public void export(HttpServletResponse response, String arizaRaqam, String arizaId) throws IOException, DocumentException {
//
//                Apps apps = new Apps();
//                apps = appsService.findById(arizaId);
//                Document document =  new Document(PageSize.A4);
//                PdfWriter.getInstance(document, response.getOutputStream());
//                document.open();
//                Font fontTitle  = FontFactory.getFont("uz/customs/customsprice/fonts/DejaVuSans.ttf", "cp1251", 24);
//                Paragraph paragraph = new Paragraph("DASTLABKI QAROR", fontTitle);
//                paragraph.setAlignment(Paragraph.ALIGN_CENTER);
//
//                Image image = Image.getInstance("src/main/webapp/resources/images/gtk.jpg");
//                image.scaleAbsolute(50, 50);
//                image.setAbsolutePosition(70, 760);
//
//                BarcodeQRCode qrCode = new BarcodeQRCode("http://youtube.com", 150, 150, null);
//                Image img = qrCode.getImage();
//                img.setAbsolutePosition(100, 20);
//
//                PdfPTable table = new PdfPTable(3);
//                PdfPCell cell1 = new PdfPCell(new Paragraph(apps.getStatusNm()));
//                PdfPCell cell2 = new PdfPCell(new Paragraph("Cell 2"));
//                PdfPCell cell3 = new PdfPCell(new Paragraph("Cell 3"));
//                table.addCell(cell1);
//                table.addCell(cell2);
//                table.addCell(cell3);
//                table.setSpacingBefore(30f);
//                table.setSpacingAfter(10f);
//                document.add(image);
//                document.add(paragraph);
//                document.add(table);
//                document.add(img);
//                document.close();
//        }
}
