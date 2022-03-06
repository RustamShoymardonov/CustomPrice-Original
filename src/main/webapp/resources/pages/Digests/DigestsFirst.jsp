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

<div id="ModalSentMess" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel" aria-hidden="true"></div>
<div class="row">
    <div class="col-md-12 col-sm-12 ">
        <div class="x_panel shadow-lg">
            <div class="row w-100" style="display: inline-block;">
                <p>filter</p>
            </div>
            <div class="x_title">
                <div class="clearfix"></div>
                <ul class="nav nav-tabs bar_tabs" id="myTab" role="tablist">
                    <li class="nav-item ml-5" style="width: 30%">
                        <a class="nav-link active h4" id="home-tab" data-toggle="tab" href="#home" role="tab"
                           aria-controls="home" aria-selected="true"><i
                                class="fa fa-folder-open mr-3"></i>РАД ЭТИЛГАН БЮД</a>
                    </li>
                    <li class="nav-item ml-4" style="width: 30%">
                        <a class="nav-link h4" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                           aria-controls="contact" aria-selected="false"><i class="fa fa-folder-open mr-3"></i>МАСЛАХАТЛАШУВ
                        </a>
                    </li>
                    <li class="nav-item ml-4" style="width: 30%">
                        <a class="nav-link h4" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                           aria-controls="profile" aria-selected="false"><i class="fa fa-folder-open mr-3"></i>ШАРТЛИ ЧИҚАРИЛГАН ТОВАРЛАР
                        </a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="x_content">
                            <div class="table-responsive mt-4">
                                <table id="example1" class="table table-striped table-bordered border-primary table-sm" style="width:100%; border-style: dashed solid">
                                    <thead class="bg-gradient text-black" style="background-color: #0d81fe;">
                                    <tr>
                                        <th style="border-style: dotted">т/р</th>
                                        <th style="border-style: dotted">БЮД рақами</th>
                                        <th style="border-style: dotted">Қарор рақами</th>
                                        <th style="border-style: dotted">Сана</th>
                                        <th style="border-style: dotted">Товарлар сони</th>
                                        <th style="border-style: dotted">Товарлар бруттоси(кг)</th>
                                        <th style="border-style: dotted">Рад этиш сабаблари</th>
                                        <th style="border-style: dotted">Инспектор</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="val" items="${qiymatReject}" varStatus="i">
                                        <c:set var = "timefm1" value = "${val[3]}"/>
                                        <c:set var = "brutto1" value = "${val[12]}"/>
                                        <tr>
                                            <td>${i.index + 1}</td>
                                            <td><a href="#" class="text-primary font-weight-bold"><u>${val[0]}</u></a></td>
                                            <td>${val[1]}</td>
                                            <td><fmt:formatDate pattern = "yyyy-MM-dd"  value = "${timefm1}" /></td>
                                            <td>
                                                <button onclick="javascript:QiymatRejects('${val[15]}')" class="btn btn-light border-warning rounded text-dark text-bold">
                                                        ${val[14]}   <i class="fa fa-list fa-beat"></i>
                                                </button>
                                            </td>
                                            <td><fmt:formatNumber value = "${brutto1}"  pattern="#.##"/></td>
                                            <td>${val[5]} ${val[6]} ${val[7]} ${val[8]}</td>
                                            <td>ИМОМУДДИНОВ БАҲОДИР СУЛТОНБОЙ ЎҒЛИ${val[4]}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                        <div class="x_content h-100">
                            <div class="table-responsive mt-4">
                                <table id="example2" class="table table-striped table-bordered border-primary table-sm" style="width:100%; border-style: dashed solid">
                                    <thead class="bg-gradient text-black" style="background-color: #0d81fe;">
                                    <tr>
                                        <th style="border-style: dotted">т/р</th>
                                        <th style="border-style: dotted">БЮД рақами</th>
                                        <th style="border-style: dotted">Қарор рақами</th>
                                        <th style="border-style: dotted">Сана</th>
                                        <th style="border-style: dotted">Товарлар сони</th>
                                        <th style="border-style: dotted">БЮД да ҳисобланган бож. тўл.(млн. сўмда)</th>
                                        <th style="border-style: dotted">Жами ҳисобланган бож. тўл.(млн. сўмда)</th>
                                        <th style="border-style: dotted">Қўшимча ҳисобланган бож. тўл.(млн. сўмда)</th>
                                        <th style="border-style: dotted">Товарлар бруттоси(кг)</th>
                                        <th style="border-style: dotted">Инспектор</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="val" items="${qiymatconsult}" varStatus="i">
                                        <c:set var="total2" value="${val[5]-val[6]}"/>
                                        <c:set var = "timefm2" value = "${val[3]}"/>
                                        <c:set var = "sum3" value = "${val[6]}"/>
                                        <c:set var = "sum4" value = "${val[5]}"/>
                                    <tr>
                                        <td>${i.index + 1}</td>
                                        <td><a href="#" class="text-primary font-weight-bold"><u>${val[0]}</u></a></td>
                                        <td>${val[1]}</td>
                                        <td><fmt:formatDate pattern = "yyyy-MM-dd"  value = "${timefm2}" /></td>
                                        <td>
                                        <button onclick="javascript:QiymatConsult('${val[10]}')" class="btn btn-light border-warning rounded text-dark text-bold">
                                                ${val[9]}   <i class="fa fa-list fa-beat"></i>
                                        </button>
                                        </td>
                                        <td><fmt:formatNumber value = "${sum3}" maxFractionDigits="3" /></td>
                                        <td><fmt:formatNumber value = "${sum4}" maxFractionDigits="3" /></td>
                                        <td><fmt:formatNumber value = "${total2}" maxFractionDigits="3" /></td>
                                        <td><fmt:formatNumber value = "${val[8]}"  pattern="#.##"/></td>
                                        <td>Машарипов Жамшид(${val[4]})</td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <div class="x_content">
                            <div class="table-responsive mt-4">

                                <table id="example3" class="table table-striped table-bordered border-primary table-sm" style="width:100%; border-style: dashed solid">
                                    <thead class="bg-gradient text-black text-lg-left" style="background-color: #0d81fe;">
                                    <tr>
                                        <th style="border-style: dotted">т/р</th>
                                        <th style="border-style: dotted">БЮД рақами</th>
                                        <th style="border-style: dotted">Қарор рақами</th>
                                        <th style="border-style: dotted">Сана</th>
                                        <th style="border-style: dotted">Товарлар сони</th>
                                        <th style="border-style: dotted">БЮД да ҳисобланган бож. тўл.(млн. сўмда)</th>
                                        <th style="border-style: dotted">Жами ҳисобланган бож. тўл.(млн. сўмда)</th>
                                        <th style="border-style: dotted">Қўшимча ҳисобланган бож. тўл.(млн. сўмда)</th>
                                        <th style="border-style: dotted">Товарлар бруттоси(кг)</th>
                                        <th style="border-style: dotted">Амал қилиш санаси</th>
                                        <th style="border-style: dotted">Амал қилиш муддати</th>
                                        <th style="border-style: dotted">Инспектор</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="val" items="${qiymatshartli}" varStatus="i">
                                        <c:set var="total" value="${val[5]-val[6]}"/>
                                        <c:set var = "timefm3" value = "${val[3]}"/>
                                        <c:set var = "timefm4" value = "${val[10]}"/>
                                        <c:set var = "num" value = "${val[8]}"/>
                                        <c:set var = "sum" value = "${val[6]}"/>
                                        <c:set var = "sum2" value = "${val[5]}"/>
                                        <tr>
                                            <td>${i.index + 1}</td>
                                            <td><a href="#" class="text-primary font-weight-bold"><u>${val[0]}</u></a></td>
                                            <td>${val[1]}</td>
                                            <td><fmt:formatDate pattern = "yyyy-MM-dd"  value = "${timefm3}" /></td>
                                            <td>
                                            <button onclick="javascript:QiymatShartli('${val[12]}')" class="btn btn-light border-warning rounded text-dark text-bold">
                                                    ${val[9]}   <i class="fa fa-list fa-beat"></i>
                                            </button>
                                            </td>
                                            <td><fmt:formatNumber value = "${sum}" maxFractionDigits="3" /></td>
                                            <td><fmt:formatNumber value = "${sum2}" maxFractionDigits="3" /></td>
                                            <td><fmt:formatNumber value = "${total}" maxFractionDigits="3" /></td>
                                            <td><fmt:formatNumber value = "${num}"  pattern="#.##"/></td>
                                            <td><fmt:formatDate pattern = "yyyy-mm-dd"  value = "${timefm4}" /></td>
                                            <td>${val[11]} кун</td>
                                            <td>Машарипов Жамшид(${val[4]})</td>
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
<script>
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