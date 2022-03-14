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
               class="nav-link text-uppercase font-weight-normal mr-sm-3 rounded-0 border active">Дастлабки қарор қабул қилиш</a>
        </li>
        <li class="nav-item flex-sm-fill">
            <a id="profile1-tab" data-toggle="tab" href="#profile1" role="tab" aria-controls="profile1" aria-selected="false"
               class="nav-link text-uppercase font-weight-normal mr-sm-3 rounded-0 border">Аризани қайтариш</a>
        </li>
        <li class="nav-item flex-sm-fill">
            <a id="contact1-tab" data-toggle="tab" href="#contact1" role="tab" aria-controls="contact1" aria-selected="false"
               class="nav-link text-uppercase font-weight-normal rounded-0 border">Аризани тузатиш учун қайтариш</a>
        </li>
    </ul>

    <div id="myTab1Content" class="tab-content border-primary">
        <div id="home1" role="tabpanel" aria-labelledby="home-tab" class="tab-pane fade py-4 show active">
            <h4 style="text-align: center">Божхона тўловлари ва йиғимлари тўғрисида маълумот<a class="btn btn-primary rounded-0 pull-right" id="insertRow"
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
            <form method="" class="border-primary" style="border-style: dashed double none">
                <textarea class="resizable_textarea form-control" placeholder="Киритинг... " style="height: 150px; max-height: 300px;" id="commentRollback" name="commentRollback"></textarea>
            </form>
            <button type="button" class="btn btn-success mt-3" onclick="appRollback();">Жўнатиш</button>
            <!-- Text editor end-->
        </div>
        <div id="contact1" role="tabpanel" aria-labelledby="contact-tab" class="tab-pane fade py-4">
            <!-- Text editor -->
            <h4 style="text-align: center">Аризани қайтариш сабаблари ва тузатиш киритиладиган бўлимлар</h4>
            <form method="" class="border-primary" style="border-style: dashed double none">
                <textarea class="resizable_textarea form-control" placeholder="Киритинг... " style="height: 150px; max-height: 300px;"></textarea>
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
        // alert($('#appId').val() + ', \n ' + $.trim($('#commentRollback').val()));
        var dataS = {
            "appId": $('#appId').val(),
            "commentRollback": $.trim($('#commentRollback').val())
        }
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
    }

    function appRollbackToFix() {
    }
</script>