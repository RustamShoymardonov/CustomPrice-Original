<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06.02.2022
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%
    String userId = (String) request.getSession().getAttribute("userId");
    String userName = (String) request.getSession().getAttribute("userName");
    Integer userRole = (Integer) request.getSession().getAttribute("userRole");
    String userRoleName = (String) request.getSession().getAttribute("userRoleName");
    String userLocation = (String) request.getSession().getAttribute("userLocation");
    String userLocationName = (String) request.getSession().getAttribute("userLocationName");
    String userPost = (String) request.getSession().getAttribute("userPost");
%>

<!-- /top tiles -->

<div class="row">
    <div class="col-md-12 col-sm-12 ">
        <div class="x_panel shadow-lg" style="min-height: 850px">
            <div class="row w-100" style="display: inline-block;">
                <div class="tile_count w-100">
                    <div>
                        <div class="col-md-3">
                            <div class="stati bg-peter_river">
                                <i class="fa fa-folder-o"></i>
                                <div>
                                    <b>25</b>
                                    <span>Жами аризалар</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="stati bg-belize_hole">
                                <i class="fa fa-list-alt"></i>
                                <div>
                                    <b>14</b>
                                    <span>Янги аризалар</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="stati bg-peter_river">
                                <i class="fa fa-list-alt"></i>
                                <div>
                                    <b>7</b>
                                    <span>Қарор қабул қилинган</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="stati bg-belize_hole">
                                <i class="fa fa-list-alt"></i>
                                <div>
                                    <b>6</b>
                                    <span>Бекор қилинган</span>
                                </div>
                            </div>
                        </div>
                        <style>
                            body {
                                background: url("http://rybd.com/wp-content/uploads/2014/12/blue-polygon.png");
                            }

                            h1 {
                                color: white;
                                margin-top: 2em;
                            }

                            p {
                                color: white;
                            }

                            /******************************

                            Stati - minimal statistical cards

                            *******************************/
                            .stati {
                                background: #fff;
                                height: 6em;
                                padding: 1em;
                                margin: 1em 0;
                                -webkit-transition: margin 0.5s ease, box-shadow 0.5s ease; /* Safari */
                                transition: margin 0.5s ease, box-shadow 0.5s ease;
                                -moz-box-shadow: 0px 0.2em 0.4em rgb(0, 0, 0, 0.8);
                                -webkit-box-shadow: 0px 0.2em 0.4em rgb(0, 0, 0, 0.8);
                                box-shadow: 0px 0.2em 0.4em rgb(0, 0, 0, 0.8);
                            }

                            .stati:hover {
                                margin-top: 0.5em;
                                -moz-box-shadow: 0px 0.4em 0.5em rgb(0, 0, 0, 0.8);
                                -webkit-box-shadow: 0px 0.4em 0.5em rgb(0, 0, 0, 0.8);
                                box-shadow: 0px 0.4em 0.5em rgb(0, 0, 0, 0.8);
                            }

                            .stati i {
                                font-size: 3.5em;
                            }

                            .stati div {
                                width: calc(100% - 3.5em);
                                display: block;
                                float: right;
                                text-align: right;
                            }

                            .stati div b {
                                font-size: 2.2em;
                                width: 100%;
                                padding-top: 0px;
                                margin-top: -0.2em;
                                margin-bottom: -0.2em;
                                display: block;
                            }

                            .stati div span {
                                font-size: 1em;
                                width: 100%;
                                color: rgb(0, 0, 0, 0.8);
                            !important;
                                display: block;
                            }

                            .stati.left div {
                                float: left;
                                text-align: left;
                            }

                            .stati.bg-turquoise {
                                background: rgb(26, 188, 156);
                                color: white;
                            }

                            .stati.bg-emerald {
                                background: rgb(46, 204, 113);
                                color: white;
                            }

                            .stati.bg-peter_river {
                                background: rgb(52, 152, 219);
                                color: white;
                            }

                            .stati.bg-amethyst {
                                background: rgb(155, 89, 182);
                                color: white;
                            }

                            .stati.bg-wet_asphalt {
                                background: rgb(52, 73, 94);
                                color: white;
                            }

                            .stati.bg-green_sea {
                                background: rgb(22, 160, 133);
                                color: white;
                            }

                            .stati.bg-nephritis {
                                background: rgb(39, 174, 96);
                                color: white;
                            }

                            .stati.bg-belize_hole {
                                background: rgb(41, 128, 185);
                                color: white;
                            }

                            .stati.bg-wisteria {
                                background: rgb(142, 68, 173);
                                color: white;
                            }

                            .stati.bg-midnight_blue {
                                background: rgb(44, 62, 80);
                                color: white;
                            }

                            .stati.bg-sun_flower {
                                background: rgb(241, 196, 15);
                                color: white;
                            }

                            .stati.bg-carrot {
                                background: rgb(230, 126, 34);
                                color: white;
                            }

                            .stati.bg-alizarin {
                                background: rgb(231, 76, 60);
                                color: white;
                            }

                            .stati.bg-clouds {
                                background: rgb(236, 240, 241);
                                color: white;
                            }

                            .stati.bg-concrete {
                                background: rgb(149, 165, 166);
                                color: white;
                            }

                            .stati.bg-orange {
                                background: rgb(243, 156, 18);
                                color: white;
                            }

                            .stati.bg-pumpkin {
                                background: rgb(211, 84, 0);
                                color: white;
                            }

                            .stati.bg-pomegranate {
                                background: rgb(192, 57, 43);
                                color: white;
                            }

                            .stati.bg-silver {
                                background: rgb(189, 195, 199);
                                color: white;
                            }

                            .stati.bg-asbestos {
                                background: rgb(127, 140, 141);
                                color: white;
                            }


                            .stati.turquoise {
                                color: rgb(26, 188, 156);
                            }

                            .stati.emerald {
                                color: rgb(46, 204, 113);
                            }

                            .stati.peter_river {
                                color: rgb(52, 152, 219);
                            }

                            .stati.amethyst {
                                color: rgb(155, 89, 182);
                            }

                            .stati.wet_asphalt {
                                color: rgb(52, 73, 94);
                            }

                            .stati.green_sea {
                                color: rgb(22, 160, 133);
                            }

                            .stati.nephritis {
                                color: rgb(39, 174, 96);
                            }

                            .stati.belize_hole {
                                color: rgb(41, 128, 185);
                            }

                            .stati.wisteria {
                                color: rgb(142, 68, 173);
                            }

                            .stati.midnight_blue {
                                color: rgb(44, 62, 80);
                            }

                            .stati.sun_flower {
                                color: rgb(241, 196, 15);
                            }

                            .stati.carrot {
                                color: rgb(230, 126, 34);
                            }

                            .stati.alizarin {
                                color: rgb(231, 76, 60);
                            }

                            .stati.clouds {
                                color: rgb(236, 240, 241);
                            }

                            .stati.concrete {
                                color: rgb(149, 165, 166);
                            }

                            .stati.orange {
                                color: rgb(243, 156, 18);
                            }

                            .stati.pumpkin {
                                color: rgb(211, 84, 0);
                            }

                            .stati.pomegranate {
                                color: rgb(192, 57, 43);
                            }

                            .stati.silver {
                                color: rgb(189, 195, 199);
                            }

                            .stati.asbestos {
                                color: rgb(127, 140, 141);
                            }
                        </style>
                    </div>
                    <!--Carusel end -->
                </div>
            </div>
            <div class="x_title">

                <div class="clearfix"></div>

                <ul class="nav nav-tabs bar_tabs" id="myTab" role="tablist">

                    <%if (userRole == 6) {%>
                        <%--todo ------------------------------------------------------------------------------------------------------%>
                        <%--todo --------------- Мурожаатлар (Тақсимланган мурожаатлар - инспектор учун) ------------------------------%>
                        <%--todo ------------------------------------------------------------------------------------------------------%>
                        <li class="nav-item ml-4" style="width: 47%">
                            <a class="nav-link active h4" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><i class="fa fa-folder-open mr-3"></i>Мурожаатлар</a>
                        </li>

                        <%--todo ----------------------------------------------------------------------------%>
                        <%--todo --------------- Дастлабки қарор реестри  - инспектор учун ------------------%>
                        <%--todo ----------------------------------------------------------------------------%>
                        <li class="nav-item" style="width: 47%">
                            <a class="nav-link h4" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"><i class="fa fa-folder-open mr-3"></i>Дастлабки
                                қарор реестри</a>
                        </li>
                    <%}%>


                    <%if (userRole == 8) {%>
                        <%--todo ------------------------------------------------------------------------------------------------------%>
                        <%--todo --------------- Мурожаатлар (Тақсимланган мурожаатлар - инспектор учун) ------------------------------%>
                        <%--todo ------------------------------------------------------------------------------------------------------%>
                        <li class="nav-item ml-4" style="width: 47%">
                            <a class="nav-link active h4" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><i class="fa fa-folder-open mr-3"></i>Мурожаатлар</a>
                        </li>

                        <%--todo ----------------------------------------------------------------------------%>
                        <%--todo --------------- Дастлабки қарор реестри  - инспектор учун ------------------%>
                        <%--todo ----------------------------------------------------------------------------%>
                        <li class="nav-item" style="width: 47%">
                            <a class="nav-link h4" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"><i class="fa fa-folder-open mr-3"></i>Дастлабки
                                қарор реестри</a>
                        </li>
                    <%}%>
                    <%if (userRole != 8 && userRole != 6) {%>
                        <%--todo ----------------------------------------------------------%>
                        <%--todo --------------- Мурожаатлар ------------------------------%>
                        <%--todo ----------------------------------------------------------%>
                        <li class="nav-item ml-5" style="width: 30%">
                            <a class="nav-link active h4" id="home-tab" data-toggle="tab" href="#home" role="tab"
                               aria-controls="home" aria-selected="true"><i class="fa fa-folder-open mr-3"></i>Мурожаатлар</a>
                        </li>

                        <%--todo ----------------------------------------------------------%>
                        <%--todo --------------- Тақсимланган мурожаатлар -----------------%>
                        <%--todo ----------------------------------------------------------%>
                        <li class="nav-item ml-4" style="width: 30%">
                            <a class="nav-link h4" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                               aria-controls="contact" aria-selected="false"><i class="fa fa-folder-open mr-3"></i>Тақсимланган мурожаатлар
                            </a>
                        </li>
                        <%--todo ----------------------------------------------------------%>
                        <%--todo --------------- Дастлабки қарор реестри ------------------%>
                        <%--todo ----------------------------------------------------------%>
                        <li class="nav-item ml-4" style="width: 30%">
                            <a class="nav-link h4" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                               aria-controls="profile" aria-selected="false"><i class="fa fa-folder-open mr-3"></i>Дастлабки қарор реестри</a>
                        </li>
                    <%}%>

                </ul>


                <div class="tab-content" id="myTabContent">

                    <%--todo ----------------------------------------------------------------------------%>
                    <%--todo --------------- Мурожаатлар маълумотларини чиқариш жадвали -----------------%>
                    <%--todo ----------------------------------------------------------------------------%>
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="x_content">
                            <div class="table-responsive mt-4">
                                <table id="example1" class="table table-striped table-bordered border-primary table-sm"
                                       style="width:100%; border-style: dashed solid">
                                    <thead class="bg-gradient text-white" style="background-color: #0d81fe;">
                                    <tr>
                                        <th style="border-style: dotted">т/р</th>
                                        <th style="border-style: dotted">Ариза рақами</th>
                                        <th style="border-style: dotted">Мақоми</th>
                                        <th style="border-style: dotted">Ариза санаси</th>
                                        <th style="border-style: dotted">Мафаатдор шахс</th>
                                        <th style="border-style: dotted">Савдо қилувчи</th>
                                        <th style="border-style: dotted">Ишлаб чиқарувчи</th>
                                        <th style="border-style: dotted">Сотувчи мамлакат</th>
                                        <%if (userRole == 7) {%>
                                        <th style="border-style: dotted">Ходим</th>
                                        <th style="border-style: dotted">Тақсимлаш</th>
                                        <%}%>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="appId"/>
                                    <c:forEach var="notSorted" items="${notSortedList}" varStatus="i">
                                        <c:set var="appId" value="${notSorted.id}"/>
                                        <c:set var="rowCount" value="${0}"/>
                                        <tr>
                                            <td>${i.index + 1}</td>
                                            <td id="appIdF"><a href="javascript:InitialDecisionView('${notSorted.id}')"
                                                               class="text-primary font-weight-bold"><u>${notSorted.appNum}</u></a>
                                            </td>
                                            <td>${notSorted.statusNm}</td>
                                            <td>${notSorted.insTime.toLocaleString()}</td>
                                            <td>${notSorted.personFio}</td>
                                            <td>${notSorted.customerCountry}-${notSorted.customerCountryNm}</td>
                                            <td>${notSorted.customerCountry}-${notSorted.customerCountryNm}</td>
                                            <td>${notSorted.senderCountry}-${notSorted.senderCountryNm}</td>
                                            <%if (userRole == 7) {%>
                                            <td>
                                                <select class="form-control" id="userIdF_${i.index + 1}"
                                                        name="userId_${i.index + 1}">
                                                    <option value="notSelected"></option>
                                                    <c:forEach var="userSelect" items="${userSelectList}"
                                                               varStatus="iUser">
                                                        <option value="${userSelect.id}">${userSelect.userName}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                            <th style="border-style: dotted">

                                                <button type="button" class="btn btn-success btn-block"
                                                        onclick="saveInDecRaspIns('${notSorted.id}', $('#userIdF_${i.index + 1}').val(), ${i.index + 1})">
                                                    <i class="fa fa-send" style="color: #f3da35"></i><i class="fa fa-arrow-right" aria-hidden="true"></i><i class="fa fa-user" aria-hidden="true"></i>
                                                </button>

                                            </th>
                                            <%}%>
                                        </tr>
                                    </c:forEach>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                    <div id="response"></div>


                    <%--todo -----------------------------------------------------------------------------------------%>
                    <%--todo --------------- Тақсимланган мурожаатлар маълумотларини чиқариш жадвали -----------------%>
                    <%--todo -----------------------------------------------------------------------------------------%>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                        <div class="x_content h-100">
                            <div class="table-responsive mt-4">
                                <table id="example2" class="table table-striped table-bordered border-primary table-sm"
                                       style="width:100%; border-style: dashed solid">
                                    <thead class="bg-gradient text-white" style="background-color: #0d81fe;">
                                    <tr>
                                        <th style="border-style: dotted">т/р</th>
                                        <th style="border-style: dotted">Ариза рақами</th>
                                        <th style="border-style: dotted">Мақоми</th>
                                        <th style="border-style: dotted">Ариза санаси</th>
                                        <th style="border-style: dotted">Мафаатдор шахс</th>
                                        <th style="border-style: dotted">Савдо қилувчи</th>
                                        <th style="border-style: dotted">Сотувчи мамлакат</th>
                                        <th style="border-style: dotted">Кимга тақсимланган</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="sorted" items="${sortedList}" varStatus="i">
                                        <tr>
                                            <td>${i.index+1}</td>
                                            <td><a href="javascript:InitialDecisionView('${sorted[0]}')"
                                                   class="text-primary font-weight-bold"><u>${sorted[6]}</u></a></td>
                                            <td>${sorted[25]}</td>
                                            <td>${sorted[1]}</td>
                                            <td>${sorted[14]}</td>
                                            <td>${sorted[9]}-${sorted[8]}</td>
                                            <td>${sorted[21]}-${sorted[22]}</td>
                                            <td>${sorted[31]}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <%--todo ----------------------------------------------------------------------------------------%>
                    <%--todo --------------- Дастлабки қарор реестри маълумотларини чиқариш жадвали -----------------%>
                    <%--todo ----------------------------------------------------------------------------------------%>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <div class="x_content">
                            <div class="table-responsive mt-4">
                                <table id="example3" class="table table-striped table-bordered border-primary table-sm"
                                       style="width:100%; border-style: dashed solid">
                                    <thead class="bg-gradient text-white text-lg-left"
                                           style="background-color: #0d81fe;">
                                    <tr>
                                        <th style=" border-style: dotted">т/р</th>
                                        <th style=" border-style: dotted">Ариза рақами</th>
                                        <th style=" border-style: dotted">Холати</th>
                                        <th style=" border-style: dotted">Ариза санаси</th>
                                        <th style=" border-style: dotted">Манфаатдор шахс</th>
                                        <th style=" border-style: dotted">Қарор рақами</th>
                                        <th style=" border-style: dotted">Қарор санаси</th>
                                        <th style=" border-style: dotted">Амал қилиш муддати</th>
                                        <th style=" border-style: dotted">Етказиб бериш шарти</th>
                                        <th style=" border-style: dotted">Бекор қилиш санаси</th>
                                        <th style=" border-style: dotted">Инспектор</th>
                                        <th style=" border-style: dotted">Pdf</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="terms" items="${termsList}" varStatus="i">
                                        <tr>
                                            <td>${i.index+1}</td>
                                            <td><a href="javascript:InitialDecisionView('${terms[0]}')"
                                                   class="text-primary font-weight-bold"><u>${terms[6]}</u></a></td>
                                            <td>${terms[28]}</td>
                                            <td>${terms[1]}</td>
                                            <td>${terms[14]}</td>
                                            <td>${terms[9]}-${terms[8]}</td>
                                            <td>${terms[9]}-${terms[8]}</td>
                                            <td>${terms[9]}-${terms[8]}</td>
                                            <td>${terms[9]}-${terms[8]}</td>
                                            <td>${terms[9]}-${terms[8]}</td>
                                            <td>${terms[30]}</td>
                                            <td class=" "><a href="<%=request.getContextPath()%>/decisionPdfDownload?appId=${terms[0]}&cmdtId=${terms[32]}" class="btn btn-primary btn-xs"><i class="fa fa-file-pdf-o"></i></a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<link href="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">

<script src="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.buttons.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.nonblock.js"></script>

<script>

    function saveInDecRaspIns(appId, inspectorId, rowNum) {
        var inspectorName = $('#userIdF_' + rowNum + ' option:selected').text();
        // alert(appId + ', ' + inspectorId + ', ' + inspectorName);
        var dataS = {
            "appId": appId,
            "inspectorId": inspectorId,
            "inspectorName": inspectorName
        }
        $.ajax({
            type: "POST",
            data: dataS,
            url: "<%=request.getContextPath()%>/apps/resources/pages/InitialDecision/InitialDecisionRasp1",
            dataType: "html",
            header: 'Content-type: text/html; charset=utf-8',
            success: function (res) {
                var typeMessage = '';
                var titletexts = '';
                var textText = '';
                if (inspectorId == 'notSelected') {
                    typeMessage = 'error';
                    titletexts = 'Ариза тақсиманишида хатолик!';
                    textText = 'Тақсимлаш учун ходим танланмаган';
                } else {
                    typeMessage = 'success';
                    titletexts = 'Ариза мувофақиятли сақланди!';
                    textText = 'Ариза ' +inspectorName+' га тақсимланди';
                }
                $('div#MainContent').html(res);
                // $('button#messageSucces').css({'display': ''});
                // $('button#messageSucces').click();
                new PNotify({
                    title: titletexts,
                    text: textText,
                    type: typeMessage,
                    styling: 'bootstrap3'
                });
            },
            error: function (res) {
            }
        });
    }

    $(document).ready(function () {
        $('#example1').DataTable({
            "language": {
                "zeroRecords": "Сиз излаган маълумот мавжуд эмас!",
                "infoFiltered": "(_MAX_ та маълумот сараланди)",
                "infoEmpty": "Маълумотлар топилмади",
                "info": "Жами _PAGES_ та, _PAGE_-сахифа ",
                "lengthMenu": "Кўрсатилмоқда _MENU_ та ариза",
                "Show": "Кўрсатилмоқда",
                "search": "Излаш",
                "paginate": {
                    "next": "Кейинги",
                    "previous": "Олдинги",
                }
            }
        });
    });
    $(document).ready(function () {
        $('#example2').DataTable({
            "language": {
                "zeroRecords": "Сиз излаган маълумот мавжуд эмас!",
                "infoFiltered": "(_MAX_ та маълумот сараланди)",
                "infoEmpty": "Маълумотлар топилмади",
                "info": "Жами _PAGES_ та, _PAGE_-сахифа ",
                "lengthMenu": "Кўрсатилмоқда _MENU_ та ариза",
                "Show": "Кўрсатилмоқда",
                "search": "Излаш",
                "paginate": {
                    "next": "Кейинги",
                    "previous": "Олдинги",
                }
            }
        });
    });
    $(document).ready(function () {
        $('#example3').DataTable({
            "language": {
                "zeroRecords": "Сиз излаган маълумот мавжуд эмас!",
                "infoFiltered": "(_MAX_ та маълумот сараланди)",
                "infoEmpty": "Маълумотлар топилмади",
                "info": "Жами _PAGES_ та, _PAGE_-сахифа ",
                "lengthMenu": "Кўрсатилмоқда _MENU_ та ариза",
                "Show": "Кўрсатилмоқда",
                "search": "Излаш",
                "paginate": {
                    "next": "Кейинги",
                    "previous": "Олдинги",
                }
            }
        });
    });
</script>