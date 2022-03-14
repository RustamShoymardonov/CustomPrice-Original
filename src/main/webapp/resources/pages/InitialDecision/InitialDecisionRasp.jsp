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
        <div class="x_panel shadow-lg">
            <div class="row w-100" style="display: inline-block;">
                <div class="tile_count w-100">

                    <!--Carusel -->

                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i>${success} Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i
                                            class="fa fa-bar-chart"></i></i></span>
                                </div>

                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                           data-slide="prev">
                            <!--<span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
                            <span class="sr-only">Олдинги</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                           data-slide="next">
                            <!--<span class="carousel-control-next-icon" aria-hidden="true"></span>-->
                            <span class="sr-only">Кейинги</span>
                        </a>
                    </div>

                    <!--Carusel end -->
                </div>
            </div>
            <div class="x_title">

                <div class="clearfix"></div>

                <ul class="nav nav-tabs bar_tabs" id="myTab" role="tablist">

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

                    <%} else {%>

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
                                        <th style="border-style: dotted">Ходим</th>
                                        <th style="border-style: dotted">Тақсимлаш</th>
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
                                            <td>
                                                <%if (userRole == 7) {%>
                                                <select class="form-control" id="userIdF_${i.index + 1}"
                                                        name="userId_${i.index + 1}">
                                                    <option value="notSelected"></option>
                                                    <c:forEach var="userSelect" items="${userSelectList}"
                                                               varStatus="iUser">
                                                        <option value="${userSelect.id}">${userSelect.userName}</option>
                                                    </c:forEach>
                                                </select>
                                                <%}%>
                                            </td>
                                            <th style="border-style: dotted">
                                                <%if (userRole == 7) {%>
                                                <button type="button" class="btn btn-success btn-block"
                                                        onclick="saveInDecRaspIns('${notSorted.id}', $('#userIdF_${i.index + 1}').val(), ${i.index + 1})">
                                                    <i class="fa fa-send" style="color: #f3da35"></i><i class="fa fa-arrow-right" aria-hidden="true"></i><i class="fa fa-user" aria-hidden="true"></i>
                                                </button>
                                                <%}%>
                                            </th>
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
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%--                                    <c:forEach var="terms" items="${termsList}" varStatus="i">--%>
                                    <%--                                        <tr>--%>
                                    <%--                                            <td>${i.index+1}</td>--%>
                                    <%--                                            <td><a href="javascript:InitialDecisionView('${terms[0]}')"--%>
                                    <%--                                                   class="text-primary font-weight-bold"><u>${terms[6]}</u></a></td>--%>
                                    <%--                                            <td>${terms[28]}</td>--%>
                                    <%--                                            <td>${terms[1]}</td>--%>
                                    <%--                                            <td>${terms[14]}</td>--%>
                                    <%--                                            <td>${terms[9]}-${terms[8]}</td>--%>
                                    <%--                                            <td>${terms.originCountry}-${terms.orignCountrNm}</td>--%>
                                    <%--                                            <td>${terms.customer_country}-${terms.customerCountryNm}</td>--%>
                                    <%--                                            <td>${terms.terms}-${terms.termsAddr}</td>--%>
                                    <%--                                            <td>${terms.originCountry}-${terms.orignCountrNm}</td>--%>
                                    <%--                                            <td>ст.инспектор Ж.Халилов</td>--%>
                                    <%--                                        </tr>--%>
                                    <%--                                    </c:forEach>--%>
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

<%--<button id="messageSucces" style="display: none;" class="btn btn-secondary source" onclick="new PNotify({--%>
<%--                                  title: 'Ариза муваффақиятли тақсимланди',--%>
<%--                                  text: 'That thing that you were trying to do worked!',--%>
<%--                                  type: 'success',--%>
<%--                                  styling: 'bootstrap3'--%>
<%--                              });">Success--%>
<%--</button>--%>

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
                if (inspectorId == 'notSelected') {
                    typeMessage = 'error';
                } else {
                    typeMessage = 'success';
                }
                $('div#MainContent').html(res);
                // $('button#messageSucces').css({'display': ''});
                // $('button#messageSucces').click();
                new PNotify({
                    title: 'Ариза муваффақиятли тақсимланди',
                    text: 'That thing that you were trying to do worked!',
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