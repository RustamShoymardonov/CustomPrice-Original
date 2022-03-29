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
                        <div class="header-body">
                            <div class="row">
                                <div class="col-xl-3 col-lg-6">
                                    <div class="card card-stats mb-4 mb-xl-0">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h5 class="card-title text-uppercase text-muted mb-0">Жами аризалар</h5>
                                                    <span class="h2 font-weight-bold mb-0">350,897</span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                                                        <i class="fa fa-area-chart"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mt-3 mb-0 text-muted text-sm">
                                                <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
                                                <span class="text-nowrap">Since last month</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6">
                                    <div class="card card-stats mb-4 mb-xl-0">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h5 class="card-title text-uppercase text-muted mb-0">Янги аризалар</h5>
                                                    <span class="h2 font-weight-bold mb-0">2,356</span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                                                        <i class="fa fa-bar-chart"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mt-3 mb-0 text-muted text-sm">
                                                <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 3.48%</span>
                                                <span class="text-nowrap">Since last week</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6">
                                    <div class="card card-stats mb-4 mb-xl-0">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h5 class="card-title text-uppercase text-muted mb-0">Қарор қабул қилинган</h5>
                                                    <span class="h2 font-weight-bold mb-0">924</span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                                                        <i class="fa fa-line-chart"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mt-3 mb-0 text-muted text-sm">
                                                <span class="text-warning mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                                                <span class="text-nowrap">Since yesterday</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6">
                                    <div class="card card-stats mb-4 mb-xl-0">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h5 class="card-title text-uppercase text-muted mb-0">Бекор қилинган</h5>
                                                    <span class="h2 font-weight-bold mb-0">49,65%</span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-info text-white rounded-circle shadow">
                                                        <i class="fa fa-pie-chart"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mt-3 mb-0 text-muted text-sm">
                                                <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                                                <span class="text-nowrap">Since last month</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <style>

                            h2,
                            h5,
                            .h2,
                            .h5 {
                                font-family: inherit;
                                font-weight: 600;
                                line-height: 1.5;
                                margin-bottom: .5rem;
                                color: #32325d;
                            }

                            h5,
                            .h5 {
                                font-size: .8125rem;
                            }

                            @media (min-width: 992px) {

                                .col-lg-6 {
                                    max-width: 50%;
                                    flex: 0 0 50%;
                                }
                            }

                            @media (min-width: 1200px) {

                                .col-xl-3 {
                                    max-width: 25%;
                                    flex: 0 0 25%;
                                }

                                .col-xl-6 {
                                    max-width: 50%;
                                    flex: 0 0 50%;
                                }
                            }


                            .bg-danger {
                                background-color: #f5365c !important;
                            }



                            @media (min-width: 1200px) {

                                .justify-content-xl-between {
                                    justify-content: space-between !important;
                                }
                            }


                            .pt-5 {
                                padding-top: 3rem !important;
                            }

                            .pb-8 {
                                padding-bottom: 8rem !important;
                            }

                            @media (min-width: 768px) {

                                .pt-md-8 {
                                    padding-top: 8rem !important;
                                }
                            }

                            @media (min-width: 1200px) {

                                .mb-xl-0 {
                                    margin-bottom: 0 !important;
                                }
                            }




                            .font-weight-bold {
                                font-weight: 600 !important;
                            }


                            a.text-success:hover,
                            a.text-success:focus {
                                color: #24a46d !important;
                            }

                            .text-warning {
                                color: #fb6340 !important;
                            }

                            a.text-warning:hover,
                            a.text-warning:focus {
                                color: #fa3a0e !important;
                            }

                            .text-danger {
                                color: #f5365c !important;
                            }

                            a.text-danger:hover,
                            a.text-danger:focus {
                                color: #ec0c38 !important;
                            }

                            .text-white {
                                color: #fff !important;
                            }

                            a.text-white:hover,
                            a.text-white:focus {
                                color: #e6e6e6 !important;
                            }

                            .text-muted {
                                color: #8898aa !important;
                            }

                            @media print {
                                *,
                                *::before,
                                *::after {
                                    box-shadow: none !important;
                                    text-shadow: none !important;
                                }

                                a:not(.btn) {
                                    text-decoration: underline;
                                }

                                p,
                                h2 {
                                    orphans: 3;
                                    widows: 3;
                                }

                                h2 {
                                    page-break-after: avoid;
                                }

                            @ page {
                                  size: a3;
                              }

                                body {
                                    min-width: 992px !important;
                                }
                            }

                            figcaption,
                            main {
                                display: block;
                            }

                            main {
                                overflow: hidden;
                            }

                            .bg-yellow {
                                background-color: #ffd600 !important;
                            }






                            .icon {
                                width: 3rem;
                                height: 3rem;
                            }

                            .icon i {
                                font-size: 2.25rem;
                            }

                            .icon-shape {
                                display: inline-flex;
                                padding: 12px;
                                text-align: center;
                                border-radius: 50%;
                                align-items: center;
                                justify-content: center;
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