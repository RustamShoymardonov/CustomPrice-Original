<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 22.02.2022
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <%
        System.out.println("Step1");
    %>
</head>
<body>

<div id="step1" class="shadow p-3 mb-5 bg-white rounded x_panel">
    <div class="x_title">
        <h2>Умумий маълумотлар <small>1-қадам</small></h2>
        <div class="clearfix"></div>
    </div>
    <fieldset class="border-primary" style="border-style: dashed solid">
        <div class="x_content">
            <c:forEach var="var" items="${oneCommodityFor}">
                <br>
                <div class="col-md-4 col-sm-6  form-group has-feedback">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-barcode fa-lg mr-2"></i><b>ТИФ ТН коди:</b> ${var.hsCode}</h6>
                </div>

                <div class="col-md-8 col-sm-6  form-group has-feedback">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-dropbox fa-lg mr-2"></i><b>Товар номи:</b> ${var.tradeName}${var.tradeMark}${var.model}${var.article}</h6>
                </div>

                <div class="col-md-4 col-sm-6  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-flag-checkered fa-lg mr-2"></i><b>Юк жўнатувчи:</b> Россия</h6>
                </div>

                <div class="col-md-8 col-sm-6  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-building fa-lg mr-2"></i><b>Юк жўнатувчи номи:</b> «КУБАНСКАЯ КАРТОНАЖНАЯ ФАБРИКА АГ»
                    </h6>
                </div>

                <div class="col-md-4 col-sm-6  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-flag-o fa-lg mr-2"></i><b>Сотувчи:</b> Қозоғистон</h6>
                </div>

                <div class="col-md-8 col-sm-6  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-building fa-lg mr-2"></i><b>Сотувчи номи:</b> АО "АзияАгроФуд" (AAFD)</h6>
                </div>

                <div class="col-md-4 col-sm-6  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-flag fa-lg mr-2"></i><b>Ишлаб чиқарувчи:</b> Хитой</h6>
                </div>

                <div class="col-md-8 col-sm-6  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-building fa-lg mr-2"></i><b>Ишлаб чиқарувчи номи:</b> Artka Mary Ching Wingfree
                        Septwolves Me&City Haoduoyi Catasy Anta</h6>
                </div>

                <div class="col-md-4 col-sm-6  form-group has-feedback mt-4">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-truck fa-lg mr-2"></i><b>Транспорт харажатлари:</b> 500 $<i
                            class="fa fa-info-circle ml-4 fa-lg" data-toggle="modal" data-target="#exampleModalCenter"></i></h6>
                </div>

                <div class="col-md-4 col-sm-6  form-group has-feedback mt-4">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Илгари берилган дастлабки қарор:</b> ДҚ-0123301.01.2022
                    </h6>
                </div>

                <div class="col-md-4 col-sm-6  form-group has-feedback mt-4">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Илгари б.ТИФ ТН бўй.дастл.қарор:</b>
                        ДҚ-0123301.01.2022</h6>
                </div>

                <!-- Транспорт тури Modal -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle1">Транспорт харакати йўналиши ва харажатлари</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <div class="col-md-12">

                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th>Бошлағич пункт</th>
                                                <th>Тугаш пункти</th>
                                                <th>Транспорт тури</th>
                                                <th>Ҳаражатлар</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <th>Россия</th>
                                                <td>Қозоғистон</td>
                                                <td><i class="fa fa-subway fa-2x mr-3"></i>20 - ЖД</td>
                                                <td>120 $</td>
                                            </tr>
                                            <tr>
                                                <th>Қозоғистон</th>
                                                <td>Ўзбекистон</td>
                                                <td><i class="fa fa-truck fa-2x mr-3"></i>30- АВТО</td>
                                                <td>380 $</td>
                                            </tr>
                                            <tr>
                                                <th></th>
                                                <td></td>
                                                <td></td>
                                                <td>Жами: 500 $</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Ёпиш</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Транспорт тури Modal end -->
            </c:forEach>
        </div>
    </fieldset>
</div>

</body>
</html>
