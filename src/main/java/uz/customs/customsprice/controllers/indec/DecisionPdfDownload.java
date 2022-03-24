package uz.customs.customsprice.controllers.indec;


import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.entity.files.DecisionPdf;
import uz.customs.customsprice.service.AppsService;
import uz.customs.customsprice.service.DecisionPdfService;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Optional;

@Controller
@RequestMapping("/decisionPdfDownload")
public class DecisionPdfDownload {
    private final AppsService appsService;
    private final DecisionPdfService decisionPdfService;

    public DecisionPdfDownload(AppsService appsService, DecisionPdfService decisionPdfService) {
        this.appsService = appsService;
        this.decisionPdfService = decisionPdfService;
    }


    @GetMapping
    public void downloadFile(@Param("appId") String appId, @Param("cmdtId") String cmdtId, HttpServletRequest request, HttpServletResponse response) throws Exception {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

        Optional<DecisionPdf> decisionPdf = Optional.ofNullable(decisionPdfService.getByCmdtId(cmdtId));
        String pdfId = "";
        String pdfName = "";
        String pdfPath = "";
        String pdfFormat = "";
        if (decisionPdf.isPresent()) {
            pdfId = decisionPdf.get().getId();
            pdfName = decisionPdf.get().getPdfName();
            pdfPath = decisionPdf.get().getPdfPath();
            pdfFormat = decisionPdf.get().getPdfFormat();


            BufferedInputStream buf = null;
            ServletOutputStream out = null;
            String fileName = "";

            try {
                out = response.getOutputStream();
                File zipFile = new File(pdfPath);
                fileName = URLEncoder.encode(pdfName.trim(), StandardCharsets.UTF_8);
                response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
                FileInputStream input = new FileInputStream(zipFile);
                buf = new BufferedInputStream(input);
                byte[] bytes = new byte[buf.available()];
                int readBytes = -1;
                while ((readBytes = buf.read(bytes)) != -1) {
                    out.write(bytes, 0, readBytes);
                }
                out.close();
                buf.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            response.getWriter().println("<body onLoad=\"alert('Документ не найден!');window.opener=window.location.href;window.open('','_parent','');window.close()\">" +
                    "<h1>Документ не найден!</h1>" +
                    "</body>");
        }
    }
}

