<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 22.02.2022
  Time: 16:54
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
</head>
<body>

<div id="step2" class="shadow p-3 mb-5 bg-white rounded x_panel">
    <div class="x_title ">
        <h2>Товар таснифи<small>2-қадам</small></h2>
        <div class="clearfix"></div>
    </div>
    <fieldset class="border-primary" style="border-style: dashed solid">
        <div class="x_content">
            <c:forEach var="var" items="${commodity}">
            <br>

            <div class="col-md-12">
                <div class="col-md-3 col-sm-3  form-group has-feedback">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Тижорат номи:</b> ${var.tradeName}</h6>
                </div>

                <div class="col-md-3 col-sm-3  form-group has-feedback">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Савдо белгиси:</b> ${var.tradeMark}</h6>
                </div>

                <div class="col-md-3 col-sm-3  form-group has-feedback">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Маркаси:</b> ${var.mark}</h6>
                </div>

                <div class="col-md-3 col-sm-3  form-group has-feedback">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Модели:</b> ${var.model}</h6>
                </div>
            </div>

            <div class="col-md-12">
                <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Артикули:</b> ${var.article}</h6>
                </div>

                <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Нави:</b> ${var.sort}</h6>
                </div>

                <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Стандарти:</b> ${var.standarts}</h6>
                </div>

                <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Фойдаланиш мақсади:</b> ${var.functions}</h6>
                </div>
            </div>

            <div class="col-md-12">
                <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Тижорат хусусияти:</b> ${var.comProp}</h6>
                </div>

                <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Техник хусусияти:</b> ${var.techChar}</h6>
                </div>

                <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Ўрам тури:</b> ${var.packTypeNm}</h6>
                </div>

                <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                    <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Ўрамлар сони:</b> ${var.packQty}</h6>
                </div>
            </div>

            <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Юк жойлари сони:</b> ${var.cargoSpace}</h6>
            </div>

            <div class="col-md-6 col-sm-6  form-group has-feedback mt-3">
                <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Усул:</b> ${var.methodNm}<i class="fa fa-info-circle ml-4 fa-lg" data-toggle="modal"
                                                                                                                                 data-target=".bd-example-modal-sm"></i>
                </h6>
            </div>

            <div class="col-md-12 col-sm-3  form-group has-feedback mt-3">
                <textarea readonly id="message" required="required" placeholder="Қўшимча маълумотлар " class="form-control" name="message">${var.extraInfo}</textarea>
            </div>

            <!-- Усул тури Modal -->
            <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Танланган усулдан олдинги усулни қўлламаслик сабаблари</h5>
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
                                            <th>Божхона қийматини аниқлаш усули</th>
                                            <th>Аввалги усулларни қўлламаслик сабаблари</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Олиб кириладиган товарга доир битимнинг қиймати бўйича</td>
                                            <td>Жўнатувчи мамлакатнинг экспорт божхона юк декларацияси мавжуд эмас</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <!-- Усул тури Modal end -->
        </div>
    </fieldset>
    </c:forEach>
</div>

</body>
</html>
