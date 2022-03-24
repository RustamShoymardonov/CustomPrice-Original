<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 22.02.2022
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String HS_NM_FULL = "";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div id="step4" class="shadow p-3 mb-5 bg-white rounded x_panel" style="height: auto">
    <div class="x_title">
        <h2>Ариза бўйича қарор<small>4-қадам</small></h2>
        <div class="clearfix"></div>
    </div>
    <!-- Bordered tabs-->
    <div id="myTab1Content" class="tab-content border-primary">
        <div id="home1" role="tabpanel" aria-labelledby="home-tab" class="tab-pane fade py-4 show active">
            <input type="hidden" id="cmdtId" name="cmdtId" value="<c:out value="${cmdtId}"/>"/>
            <div class="col-md-6">
                <button disabled class="btn btn-outline-primary btn-block">
                    Ариза холати<br><p class="text-success">${appInfo.statusNm}</p>
                </button>
            </div>
            <div class="col-md-6">
                <button disabled class="btn btn-outline-primary btn-block">
                    Ариза келиб тушган вақт<br><p class="text-success">${appInfo.insTime}</p>
                </button>
            </div>
            <div class="col-md-6">
                <c:if test="${appInfo.status == 160}">
                    <img style="width: 40%; height: 40%;" class="rounded mx-auto d-block" src="<%=request.getContextPath()%>/resources/images/mail-download.gif">
                </c:if>
                <c:if test="${appInfo.status == 145}">
                    <img style="width: 40%; height: 40%;" class="rounded mx-auto d-block" src="<%=request.getContextPath()%>/resources/images/mail-download.gif">
                </c:if>
                <c:if test="${appInfo.status == 170}">
                    <img style="width: 40%; height: 40%;" class="rounded mx-auto d-block" src="<%=request.getContextPath()%>/resources/images/succes_mail.gif">
                </c:if>
                <c:if test="${appInfo.status == 100}">
                    <img style="width: 40%; height: 40%;" class="rounded mx-auto d-block" src="<%=request.getContextPath()%>/resources/images/e-mail.gif">
                </c:if>
                <c:if test="${appInfo.status == 110}">
                    <img style="width: 40%; height: 40%;" class="rounded mx-auto d-block" src="<%=request.getContextPath()%>/resources/images/e-mail.gif">
                </c:if>
                <c:if test="${appInfo.status != 170 && appInfo.status != 145 && appInfo.status != 160 && appInfo.status != 110 && appInfo.status != 100 }">
                    <img style="width: 50%; height: 50%;" class="rounded mx-auto d-block" src="<%=request.getContextPath()%>/resources/images/scanning.gif">
                </c:if>
            </div>
            <div class="col-md-6">
                <table class="table mt-5 text-primary">
                    <tr>
                        <th class="text-primary">Аризанинг охирги холати тасдиқланган вақт</th>
                        <th class="text-success">2022.03.05</th>
                    </tr>
                    <tr>
                        <th class="text-primary">Ариза холатини тасдиқлаган ходим</th>
                        <th class="text-success">А.Мадмуродов</th>
                    </tr>
                    <tr>
                        <th class="text-primary">Ариза холатини тасдиқлаган ходим лавозими</th>
                        <th class="text-success">ХББ тўловлар бўлими бошлиғи</th>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <!-- End bordered tabs -->
</div>

</body>
</html>




<%--<script>--%>

<%--    /* Маълумотларни тақсимлаш */--%>
<%--    function inDecToHtml(x){--%>
<%--        var dataS = {--%>
<%--            "id": x--%>
<%--        }--%>
<%--        $.ajax({--%>
<%--            type: "POST",--%>
<%--            data: dataS,--%>
<%--            url: "<%=request.getContextPath()%>/saveInDec/resources/pages/InitialDecision/Qaror",--%>
<%--            dataType: "html",--%>
<%--            header: 'Content-type: text/html; charset=utf-8',--%>
<%--            success: function (res) {--%>
<%--                $('div#div_CmdtStep_4').html(res);--%>
<%--            },--%>
<%--            error: function (res) {--%>
<%--            }--%>
<%--        });--%>
<%--    }--%>

<%--    function appRollback(statusApp) {--%>
<%--        // alert($('#appId').val() + ', \n ' + $.trim($('#commentRollback').val()));--%>

<%--        var log_f = true;--%>
<%--        var log_n = '';--%>
<%--        var arr = [];--%>
<%--        var vN = '';--%>

<%--        if ($.trim($('#HS_NM_FULLS').val()) == null || $.trim($('#HS_NM_FULLS').val()) == '') {--%>
<%--            $('#HS_NM_FULLS').css({'border': '1px solid #FF0000'});--%>
<%--            arr[0] = ' Аризани қайтариш сабабини рўйхатдан танланг ! ';--%>
<%--            log_f = false;--%>
<%--        } else {--%>
<%--            $('#HS_NM_FULLS').css({'border': '1px solid #a6c9e2'});--%>
<%--            arr[0] = '';--%>
<%--        }--%>

<%--        if ($.trim($('#commentRollback').val()) == null || $.trim($('#commentRollback').val()) == '') {--%>
<%--            $('#commentRollback').css({'border': '1px solid #FF0000'});--%>
<%--            arr[1] = ' Аризани қайтариш бўйича қўшимча маълумот киритилмаган, илтимос майдонни тўлдиринг ! ';--%>
<%--            log_f = false;--%>
<%--        } else if ($.trim($('#commentRollback').val()).length > 200) {--%>
<%--            $('#commentRollback').css({'border': '1px solid #FF0000'});--%>
<%--            arr[1] = ' Аризани қайтариш сабаби майдонининг узунлиги 250 та белгидан ошмаслиги лозим ! ';--%>
<%--            log_f = false;--%>
<%--        } else {--%>
<%--            $('#commentRollback').css({'border': '1px solid #a6c9e2'});--%>
<%--            arr[1] = '';--%>
<%--        }--%>


<%--        for (var i = 0; i <= 1; i++) {--%>
<%--            if (arr[i] != '' && !log_f) {--%>
<%--                log_n = log_n + arr[i] + '\n\n';--%>
<%--            }--%>
<%--        }--%>

<%--        if (log_n != '') {--%>
<%--            alert(log_n + '');--%>
<%--        }--%>

<%--        if (log_f) {--%>

<%--            var dataS = {--%>
<%--                "appId": $('#appId').val(),--%>
<%--                "commentRollback": $.trim($('#commentRollback').val()),--%>
<%--                "rollback_ids": $.trim($('#HS_CD_FULL').val()),--%>
<%--                "rollback_names": $.trim($('#HS_NM_FULL').val()),--%>
<%--                "statusApp": statusApp--%>
<%--            }--%>

<%--            /*-------------------------------*/--%>

<%--            const swalWithBootstrapButtons = Swal.mixin({--%>
<%--                customClass: {--%>
<%--                    confirmButton: 'btn btn-success',--%>
<%--                    cancelButton: 'btn btn-danger'--%>
<%--                },--%>
<%--                buttonsStyling: false--%>
<%--            })--%>

<%--            swalWithBootstrapButtons.fire({--%>
<%--                title: 'Аризани қайтаришни хоҳлайсизми?',--%>
<%--                text: "Сиз ушбу ариза бўйича қарор қабул қилмоқдасиз!",--%>
<%--                icon: 'warning',--%>
<%--                showCancelButton: true,--%>
<%--                confirmButtonText: 'Ха, ариза қайтарилади!',--%>
<%--                cancelButtonText: 'Йўқ, қайта кўриб чиқаман!',--%>
<%--                reverseButtons: true--%>
<%--            }).then((result) => {--%>
<%--                if (result.isConfirmed) {--%>
<%--                    swalWithBootstrapButtons.fire(--%>
<%--                        'Ариза қайтарилди!',--%>
<%--                        'Ушбу ариза божхона қонуни талабларига мос эмас деб топилди',--%>
<%--                        'success'--%>
<%--                    )--%>
<%--                    $.ajax({--%>
<%--                        type: "POST",--%>
<%--                        data: dataS,--%>
<%--                        url: "<%=request.getContextPath()%>/apps/resources/pages/InitialDecision/InitialDecisionRollBack",--%>
<%--                        dataType: "html",--%>
<%--                        header: 'Content-type: text/html; charset=utf-8',--%>
<%--                        success: function (res) {--%>
<%--                            var typeMessage = '';--%>
<%--                            $('div#MainContent').html(res);--%>
<%--                        },--%>
<%--                        error: function (res) {--%>
<%--                        }--%>
<%--                    });--%>
<%--                } else if (--%>
<%--                    /* Read more about handling dismissals below */--%>
<%--                    result.dismiss === Swal.DismissReason.cancel--%>
<%--                ) {--%>
<%--                    swalWithBootstrapButtons.fire(--%>
<%--                        'Амал рад этилди!',--%>
<%--                        'Сақлаш амалга оширилмади',--%>
<%--                        'error'--%>
<%--                    )--%>
<%--                }--%>
<%--            })--%>

<%--        } else return false;--%>

<%--        /*------------------------------*/--%>
<%--    }--%>

<%--    function appRollbackToFix(statusApp) {--%>
<%--        // alert($('#appId').val() + ', \n ' + $.trim($('#commentRollback').val()));--%>

<%--        var log_f = true;--%>
<%--        var log_n = '';--%>
<%--        var arr = [];--%>
<%--        var vN = '';--%>

<%--        if ($.trim($('#HS_NM_FULLS2').val()) == null || $.trim($('#HS_NM_FULLS2').val()) == '') {--%>
<%--            $('#HS_NM_FULLS2').css({'border': '1px solid #FF0000'});--%>
<%--            arr[0] = ' Аризани қайтариш сабабини рўйхатдан танланг ! ';--%>
<%--            log_f = false;--%>
<%--        } else {--%>
<%--            $('#HS_NM_FULLS2').css({'border': '1px solid #a6c9e2'});--%>
<%--            arr[0] = '';--%>
<%--        }--%>

<%--        if ($.trim($('#commentRollback2').val()) == null || $.trim($('#commentRollback2').val()) == '') {--%>
<%--            $('#commentRollback2').css({'border': '1px solid #FF0000'});--%>
<%--            arr[1] = ' Аризани қайтариш бўйича қўшимча маълумот киритилмаган, илтимос майдонни тўлдиринг ! ';--%>
<%--            log_f = false;--%>
<%--        } else if ($.trim($('#commentRollback2').val()).length > 200) {--%>
<%--            $('#commentRollback2').css({'border': '1px solid #FF0000'});--%>
<%--            arr[1] = ' Аризани қайтариш сабаби майдонининг узунлиги 250 та белгидан ошмаслиги лозим ! ';--%>
<%--            log_f = false;--%>
<%--        } else {--%>
<%--            $('#commentRollback2').css({'border': '1px solid #a6c9e2'});--%>
<%--            arr[1] = '';--%>
<%--        }--%>


<%--        for (var i = 0; i <= 1; i++) {--%>
<%--            if (arr[i] != '' && !log_f) {--%>
<%--                log_n = log_n + arr[i] + '\n\n';--%>
<%--            }--%>
<%--        }--%>

<%--        if (log_n != '') {--%>
<%--            alert(log_n + '');--%>
<%--        }--%>

<%--        if (log_f) {--%>

<%--            var dataS = {--%>
<%--                "appId": $('#appId').val(),--%>
<%--                "commentRollback": $.trim($('#commentRollback2').val()),--%>
<%--                "rollback_ids": $.trim($('#HS_CD_FULL2').val()),--%>
<%--                "rollback_names": $.trim($('#HS_NM_FULL2').val()),--%>
<%--                "statusApp": statusApp--%>
<%--            }--%>

<%--            /*-------------------------------*/--%>

<%--            const swalWithBootstrapButtons = Swal.mixin({--%>
<%--                customClass: {--%>
<%--                    confirmButton: 'btn btn-success',--%>
<%--                    cancelButton: 'btn btn-danger'--%>
<%--                },--%>
<%--                buttonsStyling: false--%>
<%--            })--%>

<%--            swalWithBootstrapButtons.fire({--%>
<%--                title: 'Аризани қайтаришни хоҳлайсизми?',--%>
<%--                text: "Сиз ушбу ариза бўйича қарор қабул қилмоқдасиз!",--%>
<%--                icon: 'warning',--%>
<%--                showCancelButton: true,--%>
<%--                confirmButtonText: 'Ха, ариза қайтарилади!',--%>
<%--                cancelButtonText: 'Йўқ, қайта кўриб чиқаман!',--%>
<%--                reverseButtons: true--%>
<%--            }).then((result) => {--%>
<%--                if (result.isConfirmed) {--%>
<%--                    swalWithBootstrapButtons.fire(--%>
<%--                        'Ариза қайтарилди!',--%>
<%--                        'Ушбу ариза божхона қонуни талабларига мос эмас деб топилди',--%>
<%--                        'success'--%>
<%--                    )--%>
<%--                    $.ajax({--%>
<%--                        type: "POST",--%>
<%--                        data: dataS,--%>
<%--                        url: "<%=request.getContextPath()%>/apps/resources/pages/InitialDecision/InitialDecisionRollBack",--%>
<%--                        dataType: "html",--%>
<%--                        header: 'Content-type: text/html; charset=utf-8',--%>
<%--                        success: function (res) {--%>
<%--                            var typeMessage = '';--%>
<%--                            $('div#MainContent').html(res);--%>
<%--                        },--%>
<%--                        error: function (res) {--%>
<%--                        }--%>
<%--                    });--%>
<%--                } else if (--%>
<%--                    /* Read more about handling dismissals below */--%>
<%--                    result.dismiss === Swal.DismissReason.cancel--%>
<%--                ) {--%>
<%--                    swalWithBootstrapButtons.fire(--%>
<%--                        'Амал рад этилди!',--%>
<%--                        'Сақлаш амалга оширилмади',--%>
<%--                        'error'--%>
<%--                    )--%>
<%--                }--%>
<%--            })--%>

<%--        } else return false;--%>

<%--        /*------------------------------*/--%>
<%--    }--%>


<%--    var HS_NM_FULL_C = "";--%>

<%--    function addT_HS_NM(x) {--%>
<%--        // alert(x);--%>
<%--        var y = x.replaceAll(' ', '');--%>
<%--        var ta = document.getElementById('HS_NM_FULL').value;--%>
<%--        var ta2 = document.getElementById('HS_NM_FULLS').value;--%>
<%--        var tacd = document.getElementById('HS_CD_FULL').value;--%>
<%--        if (ta.length > 2) {--%>
<%--            if (ta.indexOf(x.substring(0, 2)) < 0) {--%>
<%--                document.getElementById('HS_NM_FULL').value = ta + '~' + x;--%>
<%--                document.getElementById('HS_NM_FULLS').value = ta2 + '\n' + x;--%>
<%--                HS_NM_FULL_C = y.substring('~', y.indexOf('-'));--%>
<%--                if (document.getElementById('HS_CD_FULL').value == null || document.getElementById('HS_CD_FULL').value == '') {--%>
<%--                    document.getElementById('HS_CD_FULL').value = HS_NM_FULL_C;--%>
<%--                } else {--%>
<%--                    document.getElementById('HS_CD_FULL').value = tacd + '~' + HS_NM_FULL_C;--%>
<%--                    // document.getElementById('HS_CD_FULL').value = tacd + '\n' + HS_NM_FULL_C;--%>
<%--                }--%>
<%--            }--%>
<%--        } else {--%>
<%--            document.getElementById('HS_NM_FULL').value = x;--%>
<%--            document.getElementById('HS_NM_FULLS').value = x;--%>
<%--            HS_NM_FULL_C = y.substring(0, y.indexOf('-'));--%>
<%--            if (document.getElementById('HS_CD_FULL').value == null || document.getElementById('HS_CD_FULL').value == '') {--%>
<%--                document.getElementById('HS_CD_FULL').value = HS_NM_FULL_C;--%>
<%--            } else {--%>
<%--                document.getElementById('HS_CD_FULL').value = tacd + '~' + HS_NM_FULL_C;--%>
<%--            }--%>
<%--        }--%>
<%--        document.getElementById('HS_NM').value = '';--%>
<%--    }--%>

<%--    function addT_HS_NM2(x) {--%>
<%--        // alert(x);--%>
<%--        var y = x.replaceAll(' ', '');--%>
<%--        var ta = document.getElementById('HS_NM_FULL2').value;--%>
<%--        var ta2 = document.getElementById('HS_NM_FULLS2').value;--%>
<%--        var tacd = document.getElementById('HS_CD_FULL2').value;--%>
<%--        if (ta.length > 2) {--%>
<%--            if (ta.indexOf(x.substring(0, 2)) < 0) {--%>
<%--                document.getElementById('HS_NM_FULL2').value = ta + '~' + x;--%>
<%--                document.getElementById('HS_NM_FULLS2').value = ta2 + '\n' + x;--%>
<%--                HS_NM_FULL_C = y.substring('~', y.indexOf('-'));--%>
<%--                if (document.getElementById('HS_CD_FULL2').value == null || document.getElementById('HS_CD_FULL2').value == '') {--%>
<%--                    document.getElementById('HS_CD_FULL2').value = HS_NM_FULL_C;--%>
<%--                } else {--%>
<%--                    document.getElementById('HS_CD_FULL2').value = tacd + '~' + HS_NM_FULL_C;--%>
<%--                    // document.getElementById('HS_CD_FULL').value = tacd + '\n' + HS_NM_FULL_C;--%>
<%--                }--%>
<%--            }--%>
<%--        } else {--%>
<%--            document.getElementById('HS_NM_FULL2').value = x;--%>
<%--            document.getElementById('HS_NM_FULLS2').value = x;--%>
<%--            HS_NM_FULL_C = y.substring(0, y.indexOf('-'));--%>
<%--            if (document.getElementById('HS_CD_FULL2').value == null || document.getElementById('HS_CD_FULL2').value == '') {--%>
<%--                document.getElementById('HS_CD_FULL2').value = HS_NM_FULL_C;--%>
<%--            } else {--%>
<%--                document.getElementById('HS_CD_FULL2').value = tacd + '~' + HS_NM_FULL_C;--%>
<%--            }--%>
<%--        }--%>
<%--        document.getElementById('HS_NM2').value = '';--%>
<%--    }--%>

<%--    function ClearT_HS_NM() {--%>
<%--        document.getElementById("HS_NM").value = "";--%>
<%--    }--%>

<%--    function ClearT_HS_NM2() {--%>
<%--        document.getElementById("HS_NM2").value = "";--%>
<%--    }--%>

<%--    var gtkXTButton = document.querySelector("#gtkXTButton");--%>
<%--    var HS_NM_FULL = document.querySelector("#HS_NM_FULL");--%>
<%--    var HS_NM_FULLS = document.querySelector("#HS_NM_FULLS");--%>
<%--    var HS_CD_FULL = document.querySelector("#HS_CD_FULL");--%>
<%--    gtkXTButton.onclick = function () {--%>
<%--        HS_NM_FULL.value = "";--%>
<%--        HS_NM_FULLS.value = "";--%>
<%--        HS_CD_FULL.value = "";--%>
<%--    };--%>

<%--    var gtkXTButton2 = document.querySelector("#gtkXTButton2");--%>
<%--    var HS_NM_FULL2 = document.querySelector("#HS_NM_FULL2");--%>
<%--    var HS_NM_FULLS2 = document.querySelector("#HS_NM_FULLS2");--%>
<%--    var HS_CD_FULL2 = document.querySelector("#HS_CD_FULL2");--%>
<%--    gtkXTButton2.onclick = function () {--%>
<%--        HS_NM_FULL2.value = "";--%>
<%--        HS_NM_FULLS2.value = "";--%>
<%--        HS_CD_FULL2.value = "";--%>
<%--    };--%>

<%--    /* Ариза тафсилоти */--%>
<%--    function InDecConfirmToXBB() {--%>
<%--        var dataS = {--%>
<%--            "cmdtId": $('#cmdtId').val(),--%>
<%--            "appId": $('#appId').val(),--%>
<%--        }--%>
<%--        // alert(status + ',\n appId == ' + $('#appId').val() + ',\n cmdtId == ' + $('#cmdtId').val());--%>
<%--        $.ajax({--%>
<%--            type: "POST",--%>
<%--            data: dataS,--%>
<%--            url: "<%=request.getContextPath()%>/saveInDec/resources/pages/InitialDecision/InitialDecisionConfirToXBB",--%>
<%--            dataType: "html",--%>
<%--            header: 'Content-type: text/html; charset=utf-8',--%>
<%--            success: function (res) {--%>
<%--                $('div#MainContent').html(res);--%>
<%--            },--%>
<%--            error: function (res) {--%>
<%--            }--%>
<%--        });--%>
<%--    }--%>

<%--</script>--%>
<script src="<%=request.getContextPath()%>/resources/build/js/alertMessages.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
