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
<div id="step4" class="shadow p-3 mb-5 bg-white rounded x_panel" style="height: auto">
    <div class="x_title">
        <h2>Ариза бўйича қарор<small>4-қадам</small></h2>
        <div class="clearfix"></div>
    </div>
    <ul id="myTab1" role="tablist" class="nav nav-tabs nav-pills with-arrow flex-column flex-sm-row text-center">
        <li class="nav-item flex-sm-fill">
            <a id="home1-tab" data-toggle="tab" href="#home1" role="tab" aria-controls="home1" aria-selected="true"
               class="nav-link text-uppercase font-weight-normal mr-sm-3 rounded-0 border active">Дастлабки қарор қабул
                қилиш</a>
        </li>
        <li class="nav-item flex-sm-fill">
            <a id="profile1-tab" data-toggle="tab" href="#profile1" role="tab" aria-controls="profile1"
               aria-selected="false"
               class="nav-link text-uppercase font-weight-normal mr-sm-3 rounded-0 border">Аризани қайтариш</a>
        </li>
        <li class="nav-item flex-sm-fill">
            <a id="contact1-tab" data-toggle="tab" href="#contact1" role="tab" aria-controls="contact1"
               aria-selected="false"
               class="nav-link text-uppercase font-weight-normal rounded-0 border">Аризани тузатиш учун қайтариш</a>
        </li>
    </ul>
    <div id="myTab1Content" class="tab-content border-primary">
        <div id="home1" role="tabpanel" aria-labelledby="home-tab" class="tab-pane fade py-4 show active">
            <h4 style="text-align: center">Божхона тўловлари ва йиғимлари тўғрисида маълумот<a class="btn btn-primary rounded-0 pull-right" id="insertRow" href="#">Қўшиш</a></h4>
            <input type="hidden" id="cmdtId" name="cmdtId" value="<c:out value="${cmdtId}"/>"/>
            <div class="table-responsive">
                <table class="table tolovlar border-primary" style="border-style: dashed double none">
                    <thead>
                    <tr>
                        <td>
                            <textarea rows="10" cols="80" class="form form-group" style="width: 50%" id="outputVal"></textarea>
                        </td>
                    </tr>
                    </thead>
                </table>
                <table class="table tolovlar border-primary" style="border-style: dashed double none">
                    <thead>
                    <tr>
                        <th scope="col">Тўлов тури</th>
                        <th scope="col">Хисоблаш асоси</th>
                        <th scope="col">Адвалор ставка</th>
                        <th scope="col">Хос ставка</th>
                        <th scope="col">Хос ставка миқдори</th>
                        <th scope="col">Доллар курси</th>
                        <th scope="col">Қўш.ўл.бир.миқ.</th>
                        <th scope="col">Қўш.ўл.бир</th>
                        <th scope="col">Ҳисобланган</th>
                        <th scope="col">Тўлов тури</th>
                        <th scope="col">Ўчириш</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class='12'>
                    </tr>
                    </tbody>
                </table>
            </div>
            <select class="d-none myselect">
                <option value=""></option>
                <c:forEach var="val" items="${paymenttype}" varStatus="i">
                    <option value="${val.id}">${val.id}</option>
                    ${val.name}
                </c:forEach>
            </select>
            <select class="d-none myselect2">
                <option value=""></option>
                <c:forEach var="val" items="${paymttype}" varStatus="i">
                    <option value="${val.id}">${val.id}</option>
                    ${val.spname}
                </c:forEach>
            </select>
            <button type="button" class="btn btn-success ml-2" onclick="javascript:InDecConfirm('145')">Жўнатиш</button>
            <!-- Add rows button-->
            <script>
                $(function () {
                    // Start counting from the third row
                    var counter = 1;
                    $("#insertRow").on("click", function (event) {
                        event.preventDefault();
                        var newRow = $("table.tolovlar tbody");
                        var cols = '<tr>';
                        // Table columns
                        cols +=
                            '<td><select style="width: 120%;" id="paymentType' + counter + '" onchange="changePaymentType(' + counter +
                            ');" class="form-control rounded-0" type="text" placeholder="Тўлов турини танланг">' +
                            $(".myselect").html()
                            + '</select></td>';
                        cols += '<td><input id="g47Base' + counter + '" type="text" class="form-control rounded-0" placeholder="Қиритинг" readonly></td>';
                        cols += '<td><input id="g47AltBase' + counter + '" type="text" class="form-control rounded-0" placeholder="Адвалор ставка" readonly></td>';
                        cols += '<td><input id="altRate' + counter + '" type="text" class="form-control rounded-0" placeholder="Хос ставка" readonly></td>';
                        cols += '<td><input id="g47AltRate' + counter + '" type="number" class="form-control rounded-0" placeholder="Хос ставка миқдори" readonly></td>';
                        cols += '<td><input id="rate840' + counter + '" type="number" class="form-control rounded-0" placeholder="Доллар курси" readonly>' +
                            '<input id="typeRate' + counter + '" type="hidden" class="form-control rounded-0" placeholder="Ҳисоблаш шакли"></td>';
                        cols += '<td><input id="g47Rate' + counter + '" type="number" class="form-control rounded-0" placeholder="Ҳисоблаш шакли" onkeyup="calculate2(' + counter + ');"></td>';
                        // cols += '<td><input id="typeRate' + counter + '" type="hidden" class="form-control rounded-0" placeholder="Ҳисоблаш шакли"></td>';
                        cols += '<td><input id="g47AltBaseEdIzm' + counter + '" size="10" maxlength="10" class="form-control rounded-0 w-75" type="text" placeholder="Қўш.ўл.бир" readonly></td>';
                        cols += '<td><input id="g47Sum' + counter + '" class="form-control rounded-0 bg-orange text-white" type="text" placeholder="Ҳисобланган бож.тўл" readonly></td>';
                        cols += '<td><select id="g47Sp' + counter + '" class="form-control rounded-0" type="text" placeholder="Тўлов турини танланг">' + $(".myselect2").html() + '</select></td>';
                        cols += '<td><button class="btn btn-danger rounded-0" id ="deleteRow"><i class="fa fa-trash"></i></button</td>';
                        cols += '<tr>';
                        newRow.append(cols);
                        counter++;
                    });
                    $("table").on("click", "#deleteRow", function (event) {
                        $(this).closest("tr").remove();
                        counter -= 1
                    });
                });
            </script>
            <!-- -->
        </div>
        <div id="profile1" role="tabpanel" aria-labelledby="profile-tab" class="tab-pane fade py-4">
            <!-- Text editor -->
            <h4 style="text-align: center">Аризани қайтариш сабаблари</h4>
            <form method="post" class="border-primary" id="fm1" name="fm1">
                <br>
                <div class="col-md-9 col-sm-9  form-group has-feedback">
                    <div class="form-group pmd-textfield pmd-textfield-floating-label border border-primary">
                        <select placeholder="Сана: дан" class="form-control" type="text" name="HS_NM" id="HS_NM">
                            <option></option>
                            <c:forEach var="val" items="${rollbackInfo}" varStatus="i">
                                <option value="${val.id}">${val.id} - ${val.rollbackName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group" style="float: left; clear: none;">
                    <button class="btn btn-primary" style="padding: 5px 5px;" type="button"
                            onclick="addT_HS_NM(/*$('#HS_NM').val() + ' - ' + */$('#HS_NM option:selected').text())">
                        <i class="fa fa-save icons" style="color:#ffffff;font-size:13px;"></i> <span class="lang">Сабабни Қўшиш</span>
                    </button>
                    <button class="btn btn-primary" style="padding: 5px 5px;" type="button"
                            onclick="ClearT_HS_NM()">
                        <i class="fa fa-eraser icons" style="color:#ffffff;font-size:13px;"></i> <span class="lang">Тозалаш</span>
                    </button>
                    <button class="btn btn-danger" type="button" id="gtkXTButton" style=""><i
                            class="fa fa-trash"></i></button>
                </div>
                <div class="form-group W100" style="margin-top:2px; display: none;">
                    <label class="sr-only" for="HS_NM_FULL">Страна-транзит</label>
                    <textarea class="form-control input-sm" rows="4" id="HS_NM_FULL" name="HS_NM_FULL" maxlength="150"
                              style="width:85%"><%=HS_NM_FULL%></textarea>
                    <textarea class="form-control input-sm" rows="2" id="HS_CD_FULL" name="HS_CD_FULL" maxlength="150"
                              style="width:85%"><%--<%=HS_CD_FULL%>--%></textarea>
                </div>
                <div class="col-md-6 border-primary" style="border-style: dashed double none">
                    <textarea class="form-control input-sm mt-1" rows="4" id="HS_NM_FULLS" name="HS_NM_FULLS" maxlength="150"
                              style="width:100%" readonly></textarea>
                </div>
                <div class="col-md-6 border-primary" style="border-style: dashed double none">
                    <textarea class="resizable_textarea form-control mt-1" placeholder="Қўшимча маълумот киритиш учун... " rows="4"
                              style="max-height: 300px;width:100%" id="commentRollback" name="commentRollback"></textarea>
                </div>
            </form>
            <button type="button" class="btn btn-success mt-3" onclick="javascript:appRollback('120');">Жўнатиш</button>
            <!-- Text editor end-->
        </div>
        <div id="contact1" role="tabpanel" aria-labelledby="contact-tab" class="tab-pane fade py-4">
            <!-- Text editor -->
            <h4 style="text-align: center">Аризани қайтариш сабаблари ва тузатиш киритиладиган бўлимлар</h4>
            <form method="post" class="border-primary" id="fm2" name="fm2">
                <br>
                <div class="col-md-9 col-sm-9  form-group has-feedback">
                    <div class="form-group pmd-textfield pmd-textfield-floating-label border border-primary">
                        <select placeholder="Сана: дан" class="form-control" type="text" name="HS_NM" id="HS_NM2">
                            <option></option>
                            <c:forEach var="val" items="${rollbackInfo}" varStatus="i">
                                <option value="${val.id}">${val.id} - ${val.rollbackName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group" style="float: left; clear: none;">
                    <button class="btn btn-primary" style="padding: 5px 5px;" type="button"
                            onclick="addT_HS_NM2(/*$('#HS_NM').val() + ' - ' + */$('#HS_NM2 option:selected').text())">
                        <i class="fa fa-save icons" style="color:#ffffff;font-size:13px;"></i> <span class="lang">Сабабни Қўшиш</span>
                    </button>
                    <button class="btn btn-primary" style="padding: 5px 5px;" type="button"
                            onclick="ClearT_HS_NM2()">
                        <i class="fa fa-eraser icons" style="color:#ffffff;font-size:13px;"></i> <span class="lang">Тозалаш</span>
                    </button>
                    <button class="btn btn-danger" type="button" id="gtkXTButton2" style=""><i
                            class="fa fa-trash"></i></button>
                </div>
                <div class="form-group W100" style="margin-top:2px; display: none;">
                    <label class="sr-only" for="HS_NM_FULL">Страна-транзит</label>
                    <textarea class="form-control input-sm" rows="4" id="HS_NM_FULL2" name="HS_NM_FULL" maxlength="150"
                              style="width:85%"><%=HS_NM_FULL%></textarea>
                    <textarea class="form-control input-sm" rows="2" id="HS_CD_FULL2" name="HS_CD_FULL" maxlength="150"
                              style="width:85%"><%--<%=HS_CD_FULL%>--%></textarea>
                </div>
                <div class="col-md-6 border-primary" style="border-style: dashed double none">
                        <textarea class="form-control input-sm mt-1" rows="4" id="HS_NM_FULLS2" name="HS_NM_FULLS" maxlength="150"
                                  style="width:100%" readonly></textarea>
                </div>
                <div class="col-md-6 border-primary" style="border-style: dashed double none">
                        <textarea class="resizable_textarea form-control mt-1" placeholder="Қўшимча маълумот киритиш учун... " rows="4"
                                  style="max-height: 300px;width:100%" id="commentRollback2" name="commentRollback"></textarea>
                </div>
            </form>
            <button type="button" class="btn btn-success mt-3" onclick="javascript:appRollbackToFix('125');">Жўнатиш</button>
            <!-- Text editor end-->
        </div>
    </div>
    <!-- End bordered tabs -->
</div>

<link href="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">

<script src="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.buttons.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.nonblock.js"></script>

<script>
    function appRollback(statusApp) {
        // alert($('#appId').val() + ', \n ' + $.trim($('#commentRollback').val()));

        var log_f = true;
        var log_n = '';
        var arr = [];
        var vN = '';

        if ($.trim($('#HS_NM_FULLS').val()) == null || $.trim($('#HS_NM_FULLS').val()) == '') {
            $('#HS_NM_FULLS').css({'border': '1px solid #FF0000'});
            arr[0] = ' Аризани қайтариш сабабини рўйхатдан танланг ! ';
            log_f = false;
        } else {
            $('#HS_NM_FULLS').css({'border': '1px solid #a6c9e2'});
            arr[0] = '';
        }

        if ($.trim($('#commentRollback').val()) == null || $.trim($('#commentRollback').val()) == '') {
            $('#commentRollback').css({'border': '1px solid #FF0000'});
            arr[1] = ' Аризани қайтариш бўйича қўшимча маълумот киритилмаган, илтимос майдонни тўлдиринг ! ';
            log_f = false;
        } else if ($.trim($('#commentRollback').val()).length > 200) {
            $('#commentRollback').css({'border': '1px solid #FF0000'});
            arr[1] = ' Аризани қайтариш сабаби майдонининг узунлиги 250 та белгидан ошмаслиги лозим ! ';
            log_f = false;
        } else {
            $('#commentRollback').css({'border': '1px solid #a6c9e2'});
            arr[1] = '';
        }


        for (var i = 0; i <= 1; i++) {
            if (arr[i] != '' && !log_f) {
                log_n = log_n + arr[i] + '\n\n';
            }
        }

        if (log_n != '') {
            alert(log_n + '');
        }

        if (log_f) {

            var dataS = {
                "appId": $('#appId').val(),
                "commentRollback": $.trim($('#commentRollback').val()),
                "rollback_ids": $.trim($('#HS_CD_FULL').val()),
                "rollback_names": $.trim($('#HS_NM_FULL').val()),
                "statusApp": statusApp
            }

            /*-------------------------------*/

            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                    confirmButton: 'btn btn-success',
                    cancelButton: 'btn btn-danger'
                },
                buttonsStyling: false
            })

            swalWithBootstrapButtons.fire({
                title: 'Аризани қайтаришни хоҳлайсизми?',
                text: "Сиз ушбу ариза бўйича қарор қабул қилмоқдасиз!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Ха, ариза қайтарилади!',
                cancelButtonText: 'Йўқ, қайта кўриб чиқаман!',
                reverseButtons: true
            }).then((result) => {
                if (result.isConfirmed) {
                    swalWithBootstrapButtons.fire(
                        'Ариза қайтарилди!',
                        'Ушбу ариза божхона қонуни талабларига мос эмас деб топилди',
                        'success'
                    )
                    $.ajax({
                        type: "POST",
                        data: dataS,
                        url: "<%=request.getContextPath()%>/apps/resources/pages/InitialDecision/InitialDecisionRollBack",
                        dataType: "html",
                        header: 'Content-type: text/html; charset=utf-8',
                        success: function (res) {
                            var typeMessage = '';
                            $('div#MainContent').html(res);
                        },
                        error: function (res) {
                        }
                    });
                } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire(
                        'Амал рад этилди!',
                        'Сақлаш амалга оширилмади',
                        'error'
                    )
                }
            })

        } else return false;

        /*------------------------------*/
    }

    function appRollbackToFix(statusApp) {
        // alert($('#appId').val() + ', \n ' + $.trim($('#commentRollback').val()));

        var log_f = true;
        var log_n = '';
        var arr = [];
        var vN = '';

        if ($.trim($('#HS_NM_FULLS2').val()) == null || $.trim($('#HS_NM_FULLS2').val()) == '') {
            $('#HS_NM_FULLS2').css({'border': '1px solid #FF0000'});
            arr[0] = ' Аризани қайтариш сабабини рўйхатдан танланг ! ';
            log_f = false;
        } else {
            $('#HS_NM_FULLS2').css({'border': '1px solid #a6c9e2'});
            arr[0] = '';
        }

        if ($.trim($('#commentRollback2').val()) == null || $.trim($('#commentRollback2').val()) == '') {
            $('#commentRollback2').css({'border': '1px solid #FF0000'});
            arr[1] = ' Аризани қайтариш бўйича қўшимча маълумот киритилмаган, илтимос майдонни тўлдиринг ! ';
            log_f = false;
        } else if ($.trim($('#commentRollback2').val()).length > 200) {
            $('#commentRollback2').css({'border': '1px solid #FF0000'});
            arr[1] = ' Аризани қайтариш сабаби майдонининг узунлиги 250 та белгидан ошмаслиги лозим ! ';
            log_f = false;
        } else {
            $('#commentRollback2').css({'border': '1px solid #a6c9e2'});
            arr[1] = '';
        }


        for (var i = 0; i <= 1; i++) {
            if (arr[i] != '' && !log_f) {
                log_n = log_n + arr[i] + '\n\n';
            }
        }

        if (log_n != '') {
            alert(log_n + '');
        }

        if (log_f) {

            var dataS = {
                "appId": $('#appId').val(),
                "commentRollback": $.trim($('#commentRollback2').val()),
                "rollback_ids": $.trim($('#HS_CD_FULL2').val()),
                "rollback_names": $.trim($('#HS_NM_FULL2').val()),
                "statusApp": statusApp
            }

            /*-------------------------------*/

            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                    confirmButton: 'btn btn-success',
                    cancelButton: 'btn btn-danger'
                },
                buttonsStyling: false
            })

            swalWithBootstrapButtons.fire({
                title: 'Аризани қайтаришни хоҳлайсизми?',
                text: "Сиз ушбу ариза бўйича қарор қабул қилмоқдасиз!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Ха, ариза қайтарилади!',
                cancelButtonText: 'Йўқ, қайта кўриб чиқаман!',
                reverseButtons: true
            }).then((result) => {
                if (result.isConfirmed) {
                    swalWithBootstrapButtons.fire(
                        'Ариза қайтарилди!',
                        'Ушбу ариза божхона қонуни талабларига мос эмас деб топилди',
                        'success'
                    )
                    $.ajax({
                        type: "POST",
                        data: dataS,
                        url: "<%=request.getContextPath()%>/apps/resources/pages/InitialDecision/InitialDecisionRollBack",
                        dataType: "html",
                        header: 'Content-type: text/html; charset=utf-8',
                        success: function (res) {
                            $('div#MainContent').html(res);
                        },
                        error: function (res) {
                        }
                    });
                } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire(
                        'Амал рад этилди!',
                        'Сақлаш амалга оширилмади',
                        'error'
                    )
                }
            })

        } else return false;

        /*------------------------------*/
    }


    var HS_NM_FULL_C = "";

    function addT_HS_NM(x) {
        // alert(x);
        var y = x.replaceAll(' ', '');
        var ta = document.getElementById('HS_NM_FULL').value;
        var ta2 = document.getElementById('HS_NM_FULLS').value;
        var tacd = document.getElementById('HS_CD_FULL').value;
        if (ta.length > 2) {
            if (ta.indexOf(x.substring(0, 2)) < 0) {
                document.getElementById('HS_NM_FULL').value = ta + '~' + x;
                document.getElementById('HS_NM_FULLS').value = ta2 + '\n' + x;
                HS_NM_FULL_C = y.substring('~', y.indexOf('-'));
                if (document.getElementById('HS_CD_FULL').value == null || document.getElementById('HS_CD_FULL').value == '') {
                    document.getElementById('HS_CD_FULL').value = HS_NM_FULL_C;
                } else {
                    document.getElementById('HS_CD_FULL').value = tacd + '~' + HS_NM_FULL_C;
                    // document.getElementById('HS_CD_FULL').value = tacd + '\n' + HS_NM_FULL_C;
                }
            }
        } else {
            document.getElementById('HS_NM_FULL').value = x;
            document.getElementById('HS_NM_FULLS').value = x;
            HS_NM_FULL_C = y.substring(0, y.indexOf('-'));
            if (document.getElementById('HS_CD_FULL').value == null || document.getElementById('HS_CD_FULL').value == '') {
                document.getElementById('HS_CD_FULL').value = HS_NM_FULL_C;
            } else {
                document.getElementById('HS_CD_FULL').value = tacd + '~' + HS_NM_FULL_C;
            }
        }
        document.getElementById('HS_NM').value = '';
    }

    function addT_HS_NM2(x) {
        // alert(x);
        var y = x.replaceAll(' ', '');
        var ta = document.getElementById('HS_NM_FULL2').value;
        var ta2 = document.getElementById('HS_NM_FULLS2').value;
        var tacd = document.getElementById('HS_CD_FULL2').value;
        if (ta.length > 2) {
            if (ta.indexOf(x.substring(0, 2)) < 0) {
                document.getElementById('HS_NM_FULL2').value = ta + '~' + x;
                document.getElementById('HS_NM_FULLS2').value = ta2 + '\n' + x;
                HS_NM_FULL_C = y.substring('~', y.indexOf('-'));
                if (document.getElementById('HS_CD_FULL2').value == null || document.getElementById('HS_CD_FULL2').value == '') {
                    document.getElementById('HS_CD_FULL2').value = HS_NM_FULL_C;
                } else {
                    document.getElementById('HS_CD_FULL2').value = tacd + '~' + HS_NM_FULL_C;
                    // document.getElementById('HS_CD_FULL').value = tacd + '\n' + HS_NM_FULL_C;
                }
            }
        } else {
            document.getElementById('HS_NM_FULL2').value = x;
            document.getElementById('HS_NM_FULLS2').value = x;
            HS_NM_FULL_C = y.substring(0, y.indexOf('-'));
            if (document.getElementById('HS_CD_FULL2').value == null || document.getElementById('HS_CD_FULL2').value == '') {
                document.getElementById('HS_CD_FULL2').value = HS_NM_FULL_C;
            } else {
                document.getElementById('HS_CD_FULL2').value = tacd + '~' + HS_NM_FULL_C;
            }
        }
        document.getElementById('HS_NM2').value = '';
    }

    function ClearT_HS_NM() {
        document.getElementById("HS_NM").value = "";
    }

    function ClearT_HS_NM2() {
        document.getElementById("HS_NM2").value = "";
    }

    var gtkXTButton = document.querySelector("#gtkXTButton");
    var HS_NM_FULL = document.querySelector("#HS_NM_FULL");
    var HS_NM_FULLS = document.querySelector("#HS_NM_FULLS");
    var HS_CD_FULL = document.querySelector("#HS_CD_FULL");
    gtkXTButton.onclick = function () {
        HS_NM_FULL.value = "";
        HS_NM_FULLS.value = "";
        HS_CD_FULL.value = "";
    };

    var gtkXTButton2 = document.querySelector("#gtkXTButton2");
    var HS_NM_FULL2 = document.querySelector("#HS_NM_FULL2");
    var HS_NM_FULLS2 = document.querySelector("#HS_NM_FULLS2");
    var HS_CD_FULL2 = document.querySelector("#HS_CD_FULL2");
    gtkXTButton2.onclick = function () {
        HS_NM_FULL2.value = "";
        HS_NM_FULLS2.value = "";
        HS_CD_FULL2.value = "";
    };

    /*------------------------------*/
    /* Ариза тафсилоти */
    function InDecConfirm(status) {
        var dataS = {
            "cmdtId": $('#cmdtId').val(),
            "appId": $('#appId').val(),
            "status": status
        }

        /*-------------------------------*/

        const swalWithBootstrapButtons = Swal.mixin({
            customClass: {
                confirmButton: 'btn btn-success',
                cancelButton: 'btn btn-danger'
            },
            buttonsStyling: false
        })

        swalWithBootstrapButtons.fire({
            title: 'Аризани тасдиқлаш учун жўнатишни хоҳлайсизми?',
            text: "Сиз ушбу ариза бўйича қарор қабул қилмоқдасиз!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Ха, жўнатишни тасдиқлайман!',
            cancelButtonText: 'Йўқ, қайта кўриб чиқаман!',
            reverseButtons: true
        }).then((result) => {
            if (result.isConfirmed) {
                swalWithBootstrapButtons.fire(
                    'Ариза тасдиқлаш учун жўнатилди!',
                    'Ушбу ариза худудий бошқарма тўловлар бўлими бошлиғига тасдиқлаш учун юборилди',
                    'success'
                )
                $.ajax({
                    type: "POST",
                    data: dataS,
                    url: "<%=request.getContextPath()%>/saveInDec/resources/pages/InitialDecision/InitialDecisionConfirm",
                    dataType: "html",
                    header: 'Content-type: text/html; charset=utf-8',
                    success: function (res) {
                        $('div#MainContent').html(res);
                    },
                    error: function (res) {
                    }
                });
            } else if (
                /* Read more about handling dismissals below */
                result.dismiss === Swal.DismissReason.cancel
            ) {
                swalWithBootstrapButtons.fire(
                    'Амал рад этилди!',
                    'Сақлаш амалга оширилмади',
                    'error'
                )
            }
        })

    }

    function changePaymentType(rowNum) {
        var paymentType = $('#paymentType' + rowNum).val();
        var dataS = {
            "x": '4',
            "cmdt_id": $('#cmdtId').val(),
            "appId": $('#appId').val(),
            "paymentType": paymentType
        }
        $.ajax({
            type: "POST",
            data: dataS,
            url: "<%=request.getContextPath()%>/commodity/resources/pages/InitialDecision/InitialDecisionSteps/Steps44",
            // dataType: "json",
            header: 'Content-type: application/json; charset=utf-8',
            success: function (res) {
                console.log(res);
                $('#g47Base' + rowNum).val((res.g47Base).toLocaleString());
                $('#g47AltBase' + rowNum).val(res.advRate);
                // alert(res.altRate);
                $('#altRate' + rowNum).val(res.altRate);
                $('#g47Rate' + rowNum).val(res.g47Rate);
                $('#g47AltRate' + rowNum).val(res.g47AltRate);
                $('#g47AltBaseEdIzm' + rowNum).val(res.unitRate);
                $('#rate840' + rowNum).val(res.rate840);
                $('#typeRate' + rowNum).val(res.typeRate);

                var typeRate = parseInt(res.typeRate);
                var g47Rate = res.g47Rate;

                if (paymentType == 20 || paymentType == 27) {
                    if (typeRate == 0) {
                        $('#g47Sum' + rowNum).val(res.g47Sum);
                        $('#g47Rate' + rowNum + ',#rate840' + rowNum + ',#g47AltRate' + rowNum + ',#altRate' + rowNum + ',#unitRate' + rowNum + ',#g47AltBaseEdIzm' + rowNum).val('');
                        $('#g47Rate' + rowNum + ',#rate840' + rowNum + ',#g47AltRate' + rowNum + ',#altRate' + rowNum + ',#unitRate' + rowNum + ',#g47AltBaseEdIzm' + rowNum).attr('placeholder', '---');
                        $('#g47Rate' + rowNum + ',#rate840' + rowNum + ',#g47AltRate' + rowNum + ',#altRate' + rowNum + ',#unitRate' + rowNum + ',#g47AltBaseEdIzm' + rowNum).attr('readonly', true);
                    }

                    if (typeRate == 1 || typeRate == 2) {
                        if (g47Rate == 0.0) {
                            $('#g47Sum' + rowNum).val('Қўш.ўл.бир.миқ.киритинг!');
                            $('#g47Rate' + rowNum).attr('readonly', false);
                        } else {
                            $('#g47Sum' + rowNum).val(res.g47Sum);
                            $('#g47Rate' + rowNum).attr('readonly', true);
                            $('#g47Rate' + rowNum).val('');
                            $('#g47Rate' + rowNum).attr('placeholder', '---');
                        }
                    }
                } else {
                    $('#g47Sum' + rowNum).val(res.g47Sum);
                    $('#g47Rate' + rowNum + ',#rate840' + rowNum + ',#g47AltRate' + rowNum + ',#altRate' + rowNum + ',#unitRate' + rowNum + ',#g47AltBaseEdIzm' + rowNum).val('');
                    $('#g47Rate' + rowNum + ',#rate840' + rowNum + ',#g47AltRate' + rowNum + ',#altRate' + rowNum + ',#unitRate' + rowNum + ',#g47AltBaseEdIzm' + rowNum).attr('placeholder', '---');
                    $('#g47Rate' + rowNum + ',#rate840' + rowNum + ',#g47AltRate' + rowNum + ',#altRate' + rowNum + ',#unitRate' + rowNum + ',#g47AltBaseEdIzm' + rowNum).attr('readonly', true);
                }


                $('#outputVal').val(
                    ' g47Base (Хисоблаш асоси) ===> ' + res.g47Base.toLocaleString() +
                    '\n g47AltBase (Адвалор ставка) ===> ' + res.advRate +
                    '\n g47Rate (Хос ставка) ===> ' + res.g47Rate +
                    '\n g47AltRate (Хос ставка миқдори) ===> ' + res.g47AltRate +
                    '\n g47AltBaseEdIzm (Қўшимча ўлчов бирлиги коди) ===> ' + res.unitRate +
                    '\n rate840 (Ақш доллар суммаси) ===> ' + res.rate840 +
                    '\n typeRate (Ҳисоблаш шакли) ===> ' + res.typeRate +
                    '\n unitRate (Хос ставканинг Қўшимча ўлчов бирлигидаги коди) ===> ' + res.unitRate +
                    '\n altRate (Хос ставка миқдорининг бирлик (1 - лик) миқдори) ===> ' + res.altRate +
                    '\n advRate (Адвалор ставка фоиздаги миқдори) ===> ' + res.advRate +
                    '\n g47Sum (Ҳисобланган тўловлар) ===> ' + res.g47Sum
                );

            },
            error: function (res) {
            }
        });
    }

    function calculate2(rowNum) {
        // if (event.keyCode === 13) {// } else return false;

        var sum = 0.0;
        var sum1 = 0.0;
        var sum2 = 0.0;
        var g47Base = $('#g47Base' + rowNum).val();
        var g47AltBase = $('#g47AltBase' + rowNum).val();

        var g47Rate = $('#g47Rate' + rowNum).val();
        var g47AltRate = $('#g47AltRate' + rowNum).val();
        var rate840 = $('#rate840' + rowNum).val();
        var altRate = $('#altRate' + rowNum).val();

        var typeRate = parseInt($('#typeRate' + rowNum).val());

        if (typeRate === 1) {
            sum1 = (g47Base * g47AltBase) / 100;
            sum2 = g47Rate * g47AltRate * rate840 * altRate;
            if (sum1 > sum2) sum = sum1;
            else sum = sum2;
        }

        if (typeRate === 2) {
            sum1 = (g47Base * g47AltBase) / 100;
            sum2 = g47Rate * g47AltRate * rate840 * altRate;
            sum = sum1 + sum2;
        }

        // if (typeRate === 1 || typeRate === 2) {
        //     g47AltRate = g47AltRate * g47Rate * rate840
        // }

        var g47Sum = sum;
        $('#g47Sum' + rowNum).val(g47Sum);
    }


</script>
<script src="<%=request.getContextPath()%>/resources/build/js/alertMessages.js"></script>
