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
            <h4 style="text-align: center">Божхона тўловлари ва йиғимлари тўғрисида маълумот<a
                    class="btn btn-primary rounded-0 pull-right" id="insertRow"
                    href="#">Қўшиш</a></h4>
            <!-- -->
            <!--  Bootstrap table-->
            <div class="table-responsive">
                <table class="table tolovlar border-primary" style="border-style: dashed double none">
                    <thead>
                    <tr>
                        <th scope="col">Тўлов тури</th>
                        <th scope="col">Хисоблаш асоси</th>
                        <th scope="col">Ставка</th>
                        <th scope="col">Миқдори</th>
                        <th scope="col">Тўлов тури</th>
                        <th scope="col">Амал</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class='12'>
                    </tr>
                    </tbody>
                </table>
            </div>
            <button type="button" class="btn btn-success ml-2">Жўнатиш</button>
            <!-- Add rows button-->

            <script>
                $(function () {

                    // Start counting from the third row
                    var counter = 3;

                    $("#insertRow").on("click", function (event) {
                        event.preventDefault();

                        var newRow = $("table.tolovlar tbody");
                        var cols = '<tr>';

                        // Table columns
                        cols += '<td><select class="form-control rounded-0" type="text" name="firstname" placeholder="Тўлов турини танланг"><option selected>10</option><option value="1">41</option><option value="2">29</option><option value="3">71</option></select></td>';
                        cols += '<td><input type="number" class="form-control rounded-0" type="text" name="lastname" placeholder="Қиритинг"></td>';
                        cols += '<td><input type="number" class="form-control rounded-0" type="text" name="handle" placeholder="Ставкани киритинг"></td>';
                        cols += '<td><input disabled="disabled" class="form-control rounded-0" type="text" name="handle" placeholder="Миқдор"></td>';
                        cols += '<td><select class="form-control rounded-0" type="text" name="handle" placeholder="Тўлов турини танланг"><option selected>БН</option><option value="1">ОО</option></select></td>';
                        cols += '<td><button class="btn btn-danger rounded-0" id ="deleteRow"><i class="fa fa-trash"></i></button</td>';
                        cols += '<tr>';
                        // Insert the columns inside a row
                        newRow.append(cols);

                        // Insert the row inside a table
                        ///$("table").append(newRow);

                        // Increase counter after each row insertion
                        counter++;
                    });

                    // Remove row when delete btn is clicked
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
            <form method="post" class="border-primary">
                <br>
                <div class="col-md-8 col-sm-8  form-group has-feedback">
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
                        <i class="fa fa-save icons" style="color:#ffffff;font-size:13px;"></i> <span class="lang">Қўшиш</span>
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
                <div class="col-md-6">
                    <textarea class="form-control input-sm" rows="4" id="HS_NM_FULLS" name="HS_NM_FULLS" maxlength="150"
                              style="width:100%" readonly></textarea>
                </div>
                <div class="col-md-6">
                    <textarea class="resizable_textarea form-control" placeholder="Қўшимча маълумот киритиш учун... " rows="4"
                              style="max-height: 300px;width:100%" id="commentRollback" name="commentRollback"></textarea>
                </div>
            </form>
            <button type="button" class="btn btn-success mt-3" onclick="javascript:appRollback();">Жўнатиш</button>
            <!-- Text editor end-->
        </div>
        <div id="contact1" role="tabpanel" aria-labelledby="contact-tab" class="tab-pane fade py-4">
            <!-- Text editor -->
            <h4 style="text-align: center">Аризани қайтариш сабаблари ва тузатиш киритиладиган бўлимлар</h4>
            <form method="" class="border-primary" style="border-style: dashed double none">
                <textarea class="resizable_textarea form-control" placeholder="Киритинг... "
                          style="height: 150px; max-height: 300px;"></textarea>
            </form>
            <button type="button" class="btn btn-success mt-3" onclick="appRollbackToFix();">Жўнатиш</button>
            <!-- Text editor end-->
        </div>
    </div>
    <!-- End bordered tabs -->
</div>

</body>
</html>

<script>
    function appRollback() {
        alert($('#appId').val() + ', \n ' + $.trim($('#commentRollback').val()));
        var dataS = {
            "appId": $('#appId').val(),
            "commentRollback": $.trim($('#commentRollback').val()),
            "rollback_ids": $.trim($('#HS_CD_FULL').val()),
            "rollback_names": $.trim($('#HS_NM_FULL').val())
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
            title: 'Аризани қайтаришни хохлайсизми?',
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

        /*------------------------------*/
    }

    function appRollbackToFix() {
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

    function ClearT_HS_NM() {
        document.getElementById("HS_NM").value = "";
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

</script>
<script src="<%=request.getContextPath()%>/resources/build/js/alertMessages.js"></script>

