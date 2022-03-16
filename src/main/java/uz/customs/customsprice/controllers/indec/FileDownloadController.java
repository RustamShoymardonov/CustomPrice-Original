package uz.customs.customsprice.controllers.indec;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLConnection;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

//@Controller
//@RequestMapping("/download")
//public class FileDownloadController {
//
//    private final String DOWNLOADFILE = "/resources/pages/InitialDecision/InitialDecisionSteps/Steps3/{fileName}";
//
////    private static final String EXTERNAL_FILE_PATH = "C:/fileDownloadExample/";
//    private static final String EXTERNAL_FILE_PATH = "D:\\IN_DEC_FILES\\2022\\03\\16\\220316000001\\";
//
//    @RequestMapping(DOWNLOADFILE)
//    public void downloadPDFResource(HttpServletRequest request, HttpServletResponse response, @PathVariable("fileName") String fileName) throws IOException {
//        fileName = "16032022142816734.pdf";
//        File file = new File(EXTERNAL_FILE_PATH + fileName);
//        if (file.exists()) {
//
//            //get the mimetype
//            String mimeType = URLConnection.guessContentTypeFromName(file.getName());
//            if (mimeType == null) {
//                //unknown mimetype so set the mimetype to application/octet-stream
//                mimeType = "application/octet-stream";
//            }
//
//            response.setContentType(mimeType);
//
//            /**
//             * In a regular HTTP response, the Content-Disposition response header is a
//             * header indicating if the content is expected to be displayed inline in the
//             * browser, that is, as a Web page or as part of a Web page, or as an
//             * attachment, that is downloaded and saved locally.
//             *
//             */
//
//            /**
//             * Here we have mentioned it to show inline
//             */
//            response.setHeader("Content-Disposition", String.format("inline; filename=\"" + file.getName() + "\""));
//
//            //Here we have mentioned it to show as attachment
//            //response.setHeader("Content-Disposition", String.format("attachment; filename=\"" + file.getName() + "\""));
//
//            response.setContentLength((int) file.length());
//
//            InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
//
//            FileCopyUtils.copy(inputStream, response.getOutputStream());
//
//        }
//    }
//}



