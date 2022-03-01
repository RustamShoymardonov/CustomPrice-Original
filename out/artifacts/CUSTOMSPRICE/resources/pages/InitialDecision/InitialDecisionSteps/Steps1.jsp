<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 22.02.2022
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <%--    <%--%>
    <%--        System.out.println("Step1");--%>
    <%--    %>--%>
</head>
<body>

<div id="step1" class="shadow p-3 mb-5 bg-white rounded x_panel">
    <div class="x_title">
        <h2>Умумий маълумотлар <small>1-қадам</small></h2>
        <div class="clearfix"></div>
    </div>
    <fieldset class="border-primary" style="border-style: dashed solid">
        <div class="x_content">
            <c:forEach var="var" items="${commodity}">
                <br>
                <div class="col-md-4 col-sm-6  form-group has-feedback underlined underlined--gradient">
                    <h6 style="border-bottom: 1px solid green">
                        <i class="fa fa-barcode fa-lg mr-2"></i><b>ТИФ ТН коди:</b> ${var.hsCode}
                    </h6>
                </div>

                <div class="col-md-8 col-sm-6  form-group has-feedback underlined underlined--gradient">
                    <h6 class="hoveroverflowvisible"
                        style="border-bottom: 1px solid green; text-overflow: ellipsis; transition: .55s opacity, .55s visibility; white-space: nowrap;  overflow: hidden;">
                        <i class="fa fa-dropbox fa-lg mr-2"></i><b>Товар номи:</b>${var.hsName}
                    </h6>
                </div>

                <div class="col-md-4 col-sm-6  form-group has-feedback mt-3 underlined underlined--gradient">
                    <h6 style="border-bottom: 1px solid green">
                        <i class="fa fa-flag fa-lg mr-2"></i><b>Ишлаб чиқарувчи:</b> ${var.orignCountrNm}
                    </h6>
                </div>

                <div class="col-md-8 col-sm-6  form-group has-feedback mt-3 underlined underlined--gradient">
                    <h6 style="border-bottom: 1px solid green">
                        <i class="fa fa-building fa-lg mr-2"></i><b>Ишлаб чиқарувчи номи:</b> ${var.originOrg}
                    </h6>
                </div>

                <div class="col-md-6 col-sm-6  form-group has-feedback mt-4 underlined underlined--gradient">
                    <h6 style="border-bottom: 1px solid green">
                        <i class="fa fa-file-o fa-lg mr-2"></i><b>Илгари берилган дастлабки қарор:</b> ${var.inDecNum} / ${var.inDecDate}
                    </h6>
                </div>

                <div class="col-md-6 col-sm-6  form-group has-feedback mt-4 underlined underlined--gradient">
                    <h6 style="border-bottom: 1px solid green">
                        <i class="fa fa-file-text-o fa-lg mr-2"></i><b>Илгари б.ТИФ ТН бўй.дастл.қарор:</b> ${var.hsDecNum} / ${var.hsDecDate}
                    </h6>
                </div>
            </c:forEach>
        </div>
    </fieldset>
</div>

</body>
</html>
