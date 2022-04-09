<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 04.04.2022
  Time: 12:11
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
<head>
    <title>Title</title>
</head>
<body>
<div class="fm-search">
    <div class="mb-0">
        <div class="d-flex justify-content-center">
            <div class="col-md-3 m-2">
                <label class="text-dark">Мақоми</label>
                <select class="form-select shadow-sm" id="validationTooltip04" required="">
                    <option selected="" disabled="disabled" value=""><p class="text-muted">Ариза мақоми</p></option>
                    <option value="100">Янги</option>
                    <option value="110">Кўриб чиқиш учун тақсимланган</option>
                    <option value="145">Тасдиқлашга тайрланган</option>
                </select>
            </div>
            <div class="col-md-2 m-2">
                <div class="">
                    <label class="text-dark">ТИФ ТН коди</label>
                    <input class="result form-control shadow-sm" type="text" placeholder="Товар ТИФ ТН коди">
                </div>
            </div>
            <div class="col-md-2 m-2">
                <div class="">
                    <label class="text-dark">Шахс тури</label>
                    <select class="form-select shadow-sm" id="validationTooltip05" required="">
                        <option selected="" disabled="disabled" value=""><p class="text-muted">Барчаси</p></option>
                        <option value="100">Жисмоний шахс</option>
                        <option value="110">Юридик шахс</option>
                    </select>
                </div>
            </div>
            <div class="col-md-1 m-2">
                <div class="">
                    <label class="text-dark">Сана</label>
                    <input class="result form-control shadow-sm" type="date" id="date" placeholder="йил-ой-кун">
                </div>
            </div>
            <div class="">
                <p class="mt-5 text-dark">дан</p>
            </div>
            <div class="col-md-1 m-2">
                <div class="">
                    <label></label>
                    <input class="result form-control shadow-sm" type="date" id="date2" placeholder="йил-ой-кун">
                </div>
            </div>
            <div class="">
                <p class="mt-5 text-dark">гача</p>
            </div>
            <div class="col-md-2 m-2">
                <div class="">
                    <button type="button" class="btn btn-primary mt-3"><i class='bx bx-refresh'></i>Янгилаш</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row mt-3">
    <div class="col-12 col-lg-12">
        <div class="table-responsive">
            <table id="example3"  class="table table-striped table-bordered table-responsive">
                <thead class="bg-light-primary" style="border-color: #0a58ca; border-style: dotted">
                <tr>
                    <th style=" border-style: dotted">т/р</th>
                    <th style=" border-style: dotted">Ариза рақами</th>
                    <th style=" border-style: dotted">Холати</th>
                    <th style=" border-style: dotted">Ариза санаси</th>
                    <th style=" border-style: dotted">Хужжат (Pdf)</th>
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
                <c:forEach var="terms" items="${termsList}" varStatus="i">
                    <tr>
                        <td>${i.index+1}</td>
                        <td><a type="button" class="btn btn-primary btn-sm radius-30 px-4" href="javascript:InitialDecisionView('${terms[0]}')"
                               class="text-primary font-weight-bold"><u>${terms[6]}</u></a></td>
                        <td><div class="badge rounded-pill text-warning bg-light-warning p-2 text-uppercase px-3"><i class='bx bxs-circle align-middle me-1'></i>${terms[28]}</div></td>
                        <td>${terms[1]}</td>
                        <td align="">
                            <a href="<%=request.getContextPath()%>/decisionPdfDownload?appId=${terms[0]}&cmdtId=${terms[32]}" class="btn-xs">
                                <i class="bx bxs-file-pdf bx-sm"></i>
                            </a>
                        </td>
                        <td>${terms[14]}</td>
                        <td>${terms[9]}-${terms[8]}</td>
                        <td>${terms[9]}-${terms[8]}</td>
                        <td>${terms[9]}-${terms[8]}</td>
                        <td>${terms[9]}-${terms[8]}</td>
                        <td>${terms[9]}-${terms[8]}</td>
                        <td>${terms[30]}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    $('.datepicker').pickadate({
        selectMonths: true,
        selectYears: true
    }),
        $('.timepicker').pickatime()
</script>
<script>
    $(function () {
        $('#date-time').bootstrapMaterialDatePicker({
            format: 'DD-MM-YYYY',
            closeOnClear: false
        });
        $('#date').bootstrapMaterialDatePicker({
            time: false,
            closeOnClear: true
        });
        $('#date2').bootstrapMaterialDatePicker({
            time: false,


        });
        $('#time').bootstrapMaterialDatePicker({
            date: false,
            format: 'HH:mm',
            closeOnClear: false
        });
    });
</script>
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
</body>
</html>