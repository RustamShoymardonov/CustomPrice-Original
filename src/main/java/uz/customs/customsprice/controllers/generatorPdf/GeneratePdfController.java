package uz.customs.customsprice.controllers.generatorPdf;


import com.lowagie.text.*;
import com.lowagie.text.Font;
import com.lowagie.text.Image;
import com.lowagie.text.pdf.PdfWriter;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import uz.customs.customsprice.entity.InitialDecision.Apps;
import uz.customs.customsprice.service.AppsService;
import uz.customs.customsprice.service.PdfService;

import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;

import static com.lowagie.text.Element.ALIGN_BOTTOM;


@Controller
public class GeneratePdfController {

    private final PdfService pdfService;
    private final AppsService appsService;


    public GeneratePdfController(PdfService pdfService, AppsService appsService) {
        this.pdfService = pdfService;
        this.appsService = appsService;
    }

    @GetMapping("/generate")
    public void generatePDF(@Param("id") String id, HttpServletResponse response) throws Exception {
        System.out.println(id);

        Optional<Apps> result = Optional.ofNullable(appsService.findById(id));
        if (result.isEmpty()) {
            throw new Exception("Ушбу ариза бўйича маълумот етарли эмас!");
        }
        String ArizaRaqam = result.get().getAppNum();


        response.setContentType("application/pdf");
        DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd:hh:mm:ss");
        String currentDateTime = dateFormatter.format(new Date());

        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filname=pdf_" + currentDateTime + ".pdf";
        response.setHeader(headerKey, headerValue);

        this.pdfService.export(response, ArizaRaqam);
    }

}
