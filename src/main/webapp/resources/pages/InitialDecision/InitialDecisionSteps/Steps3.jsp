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

<div id="step3" class="shadow p-3 mb-5 bg-white rounded x_panel">
    <div class="x_title">
        <h2>Товарнинг юк-кузатув хужжатлари<small>3-қадам</small></h2>
        <div class="clearfix"></div>
    </div>
    <div class="x_content">
        <%--        <c:forEach var="var" items="${commodity}">--%>
        <div class="table-responsive">
            <table id="example" class="table table-bordered border-primary table-sm" style="width:100%; border-style: dashed solid">
                <thead class="bg-gradient text-black" style="background-color: #B5CAF9;">
                <tr class="">
                    <th style="border-style: dotted" class="column-title">№</th>
                    <th style="border-style: dotted" class="column-title">Хужжат тури</th>
                    <th style="border-style: dotted" class="column-title">Хужжат рақами</th>
                    <th style="border-style: dotted" class="column-title">Хужжат санаси</th>
                    <th style="border-style: dotted" class="column-title">Хужжат файли</th>
                </tr>
                </thead>
                <tbody>
                <tr class="even pointer">

                    <td class=" ">1</td>
                    <td class=" ">220-ИНВ</td>
                    <td class=" ">ИНВ202120/1325<i class="success fa fa-long-arrow-up"></i></td>
                    <td class=" ">20.10.2021</td>
                    <td class=" "><a href="#" class="btn btn-primary btn-xs"><i class="fa fa-download"></i></a></td>
                </tr>
                <tr class="odd pointer">

                    <td class=" ">2</td>
                    <td class=" ">105-СМР</td>
                    <td class=" ">ИНВ202125/1325<i class="success fa fa-long-arrow-up"></i></td>
                    <td class=" ">15.10.2022</td>
                    <td class=" "><a href="#" class="btn btn-primary btn-xs"><i class="fa fa-download"></i></a></td>
                </tr>
                <tr class="even pointer">

                    <td class=" ">3</td>
                    <td class=" ">15-СМР</td>
                    <td class=" ">ИНВ202125/1388<i class="success fa fa-long-arrow-up"></i></td>
                    <td class=" ">05.10.2022</td>
                    <td class=" "><a href="#" class="btn btn-primary btn-xs"><i class="fa fa-download"></i></a></td>
                </tr>

                </tbody>
            </table>
            <script>
                $(document).ready(function () {
                    $('#example').DataTable({
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
        </div>
        <%--        </c:forEach>--%>
    </div>
</div>


</body>
</html>
