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
                <div class="col-md-5 col-sm-5  form-group has-feedback">
                    <h6 style="border-bottom: 1px solid green; text-overflow: ellipsis; transition: .55s opacity, .55s visibility; white-space: nowrap;  overflow: hidden;">
                        <b>ТИФ ТН коди:</b><br>${var.hsCode}
                    </h6>
                </div>

                <div class="col-md-7 col-sm-7  form-group has-feedback">
                    <h6 class="hoveroverflowvisible"
                        style="border-bottom: 1px solid green; text-overflow: ellipsis; transition: .55s opacity, .55s visibility; white-space: nowrap;  overflow: hidden;">
                        </i><b>Товар номи:</b><br>${var.hsName}
                    </h6>
                </div>

                <div class="col-md-5 col-sm-5  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green">
                        <b>Ишлаб чиқарувчи:</b><br>${var.orignCountrNm}
                    </h6>
                </div>

                <div class="col-md-7 col-sm-7  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green">
                        <b>Ишлаб чиқарувчи номи:</b><br>${var.originOrg}
                    </h6>
                </div>

                <div class="col-md-5 col-sm-5  form-group has-feedback mt-4">
                    <h6 style="border-bottom: 1px solid green">
                        <b>Илгари берилган дастлабки қарор:</b><br>${var.inDecNum} / ${var.inDecDate}
                    </h6>
                </div>

                <div class="col-md-7 col-sm-7  form-group has-feedback mt-4">
                    <h6 style="border-bottom: 1px solid green">
                        <b>Илгари б.ТИФ ТН бўй.дастл.қарор:</b><br>${var.hsDecNum} / ${var.hsDecDate}
                    </h6>
                </div>
            </c:forEach>
        </div>
    </fieldset>
</div>

</body>
</html>
