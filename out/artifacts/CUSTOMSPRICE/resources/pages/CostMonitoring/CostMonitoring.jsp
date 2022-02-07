<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20.12.2021
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%--todo Қиймат мониторинги саҳифаси----------------------------------------------------қисми------------------------дан--%>
<div class="tile" style=" padding: 0px; height: 90vh;">

    <div class="background" style="
            background-image: url('<%=request.getContextPath()%>/resources/images/gtk_image2.png');
            width: 600px;
            height: 100%;
            position: fixed;
            right: 45px;
            filter: grayscale(1);
            background-size: contain;
            background-position: 100px 105%;
            background-repeat: no-repeat;
            opacity: 0.2;">
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="col mb-4">
                <h3>Божхона қиймати мониторинги</h3>
                <form method="GET" class="form-inline">
                    <div class="col-md-12">
                        <div class="form-row mb-4">
                            <style>
                                .bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) {
                                    width: 80%;
                                }
                            </style>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Худудий бошқарма</label>
                                </div>
                                <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker" style="width: fit-content;">
                                    <option></option>
                                    <option value="Fedex">40-Импорт</option>
                                    <option value="Elite">42-Реимпор</option>
                                    <option value="Interp">11-Экспорт</option>
                                </select>
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-search"></i>
                                            </span>
                            </div>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Пост</label>
                                </div>
                                <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker" style="width: fit-content;">
                                    <option></option>
                                    <option value="Fedex">40-Импорт</option>
                                    <option value="Elite">42-Реимпор</option>
                                    <option value="Interp">11-Экспорт</option>
                                </select>
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-search"></i>
                                            </span>
                            </div>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Жўнат.мамлакат</label>
                                </div>
                                <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker" style="width: fit-content;">
                                    <option></option>
                                    <option value="Fedex">40-Импорт</option>
                                    <option value="Elite">42-Реимпор</option>
                                    <option value="Interp">11-Экспорт</option>
                                </select>
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-search"></i>
                                            </span>
                            </div>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Кел.чиқ.мамлакат</label>
                                </div>
                                <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker" style="width: fit-content;">
                                    <option></option>
                                    <option value="Fedex">40-Импорт</option>
                                    <option value="Elite">42-Реимпор</option>
                                    <option value="Interp">11-Экспорт</option>
                                </select>
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-search"></i>
                                            </span>
                            </div>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Сав.қил.мамлакат</label>
                                </div>
                                <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker" style="width: fit-content;">
                                    <option></option>
                                    <option value="Fedex">40-Импорт</option>
                                    <option value="Elite">42-Реимпор</option>
                                    <option value="Interp">11-Экспорт</option>
                                </select>
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-search"></i>
                                            </span>
                            </div>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Транспорт тури</label>
                                </div>
                                <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker" style="width: fit-content;">
                                    <option></option>
                                    <option value="Fedex">40-Импорт</option>
                                    <option value="Elite">42-Реимпор</option>
                                    <option value="Interp">11-Экспорт</option>
                                </select>
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-search"></i>
                                            </span>
                            </div>
                        </div>
                        <div class="form-row">
                            <style>
                                .bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) {
                                    width: 80%;
                                }
                            </style>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">ТИФ ТН коди</label>
                                </div>
                                <input aria-describedby="search-addon" aria-label="Search" class="form-control rounded" placeholder="00000000" type="search"/>
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-search"></i>
                                            </span>
                            </div>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">БЮД рақами</label>
                                </div>
                                <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker" style="width: fit-content;">
                                    <option></option>
                                    <option value="Fedex">40-Импорт</option>
                                    <option value="Elite">42-Реимпор</option>
                                    <option value="Interp">11-Экспорт</option>
                                </select>
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-search"></i>
                                            </span>
                            </div>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Усул рақами</label>
                                </div>
                                <select data-live-search="true" placeholder="00000000" data-live-search-style="startsWith" class="selectpicker">
                                    <option></option>
                                    <option value="4444">4444</option>
                                    <option value="Fedex">Fedex</option>
                                    <option value="Elite">Elite</option>
                                    <option value="Interp">Interp</option>
                                    <option value="Test">Test</option>
                                </select>
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-search"></i>
                                            </span>
                            </div>
                            <div class="col-sm-2">
                                <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Чиқиш санаси(дан)</label>
                                <input class="form-control" type="date" value="2012-04-05">
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-calendar"></i>
                                            </span>
                            </div>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Чиқиш санаси(гача)</label>
                                </div>
                                <input class="form-control" data-live-search-style="startsWith" type="date" value="2012-04-05">
                                <span style="
                                                position: absolute;
                                                max-width: 100%;
                                                margin-left: 0px;
                                                padding: 9px 12px;
                                                font-size: 14px;
                                                font-weight: 400;
                                                line-height: 1;
                                                color: #fff;
                                                text-align: center;
                                                background-color: #0069C1;
                                                border: 1px solid #ccc;
                                                border-radius: 4px;}">
                                                <i class="fa fa-calendar"></i>
                                            </span>
                            </div>
                            <div class="col-sm-2">
                                <div>
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; color: #fff; font-weight: 700;">Излаш</label>
                                </div>
                                <button type="button" class="btn"><i class="fa fa-search"></i> Излаш</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="col">
                <style>
                    .results tr[visible='false'],
                    .no-result {
                        display: none;
                    }

                    .results tr[visible='true'] {
                        display: table-row;
                    }

                    .searchCount {
                        padding: 8px;
                        color: #000;
                        text-align: left;
                    }
                </style>

                <table class="table table-responsive results" style="font-size: 14px;">
                    <thead class="table-dark">
                    <tr>
                        <th>№</th>
                        <th>БЮД рўйхат рақами</th>
                        <th>Режим</th>
                        <th>ТИФ ТН коди</th>
                        <th>Товар номи
                            <input type="text" class="searchKey form-control" placeholder="Товар номи">
                        </th>
                        <th>Нетто</th>
                        <th>Божхона қиймати</th>
                        <th>Ўлчов бирлиги</th>
                        <th>Кел.чиқ мамлакат</th>
                        <th>Юк.жўн мамлакат</th>
                        <th>Сав.қил мамлакат</th>
                        <th>Тран. тури</th>
                        <th>Валюта</th>
                        <th>Усул</th>
                        <th>Божхона қиймати</th>
                        <th colspan="2">Божхона индекси</th>
                    </tr>
                    </thead>
                    <tbody style="text-align: left;">
                    <tr class="warning no-result">
                        <td colspan="17" style="background-color: red;"><i class="fa fa-warning"></i> Сиз киритган маълумот бўйича хечнима топилмади!</td>
                    </tr>
                    <tr style="border: none;">
                        <td>1</td>
                        <td>27006/11.10.2021/0001517</td>
                        <td>им-40</td>
                        <td>4011100000</td>
                        <td>
                            Автомабильные шины Мишлен
                            65ч185 R15/. производства Турсия
                        </td>
                        <td>22875</td>
                        <td>43754</td>
                        <td>кг</td>
                        <td>Хитой</td>
                        <td>Хитой</td>
                        <td>Хитой</td>
                        <td>20</td>
                        <td>840</td>
                        <td>6.3</td>
                        <td>22121</td>
                        <td>1.317</td>
                        <td><i class="fa fa-exclamation-triangle"></i></td>

                    </tr>
                    <tr>
                        <td>2</td>
                        <td>27006/11.10.2021/0001517</td>
                        <td>им-40</td>
                        <td>4011100000</td>
                        <td>
                            Автомабильные шины Мишлен
                            65ч185 R15/. производства Турсия
                        </td>
                        <td>22875</td>
                        <td>43754</td>
                        <td>кг</td>
                        <td>Хитой</td>
                        <td>Хитой</td>
                        <td>Хитой</td>
                        <td>20</td>
                        <td>840</td>
                        <td>6.3</td>
                        <td>22121</td>
                        <td>1.317</td>
                        <td><i class="fa fa-exclamation-triangle"></i></td>

                    </tr>
                    <tr>
                        <td>3</td>
                        <td>27006/11.10.2021/0001517</td>
                        <td>им-40</td>
                        <td>4011100000</td>
                        <td>
                            Автомабильные шины Мишлен
                            65ч185 R15/. производства Турсия
                        </td>
                        <td>22875</td>
                        <td>43754</td>
                        <td>кг</td>
                        <td>Хитой</td>
                        <td>Африка</td>
                        <td>Хитой</td>
                        <td>20</td>
                        <td>840</td>
                        <td>6.3</td>
                        <td>22121</td>
                        <td>1.317</td>
                        <td><i class="fa fa-exclamation-triangle"></i></td>
                    </tr>
                    </tbody>
                </table>
                <h1 class="searchCount pull-right">
                </h1>
                <script>
                    function createExpr(arr) {
                        var index = 0;
                        var expr = [":containsiAND('" + arr[0] + "')"];
                        for (var i = 1; i < arr.length; i++) {
                            if (arr[i] === 'AND') {
                                expr[index] += ":containsiAND('" + arr[i + 1] + "')";
                                i++;
                            } else if (arr[i] === 'OR') {
                                index++;
                                expr[index] = ":containsiOR('" + arr[i + 1] + "')";
                                i++;
                            }
                        }
                        return expr;
                    }

                    $(document).ready(function () {

                        $(".searchKey").keyup(function () {
                            var searchTerm = $(".searchKey").val().replace(/["']/g, "");
                            var arr = searchTerm.split(/(AND|OR)/);
                            var exprs = createExpr(arr);
                            var searchSplit = searchTerm.replace(/AND/g, "'):containsiAND('").replace(/OR/g, "'):containsiOR('");

                            $.extend($.expr[':'], {
                                'containsiAND': function (element, i, match, array) {
                                    return (element.textContent || element.innerText || '').toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
                                }
                            });

                            $('.results tbody tr').attr('visible', 'false');
                            for (var expr in exprs) {
                                $(".results tbody tr" + exprs[expr]).each(function (e) {
                                    $(this).attr('visible', 'true');
                                });
                            }

                            var searchCount = $('.results tbody tr[visible="true"]').length;

                            $('.searchCount').text('Топилган маълумотлар ' + searchCount + 'та');
                            if (searchCount == '0') {
                                $('.no-result').show();
                            } else {
                                $('.no-result').hide();
                            }
                            if ($('.searchKey').val().length == 0) {
                                $('.searchCount').hide();
                            } else {
                                $('.searchCount').show();
                            }
                        });
                    });
                </script>
            </div>
        </div>
    </div>
</div>
<%--todo Қиймат мониторинги саҳифаси----------------------------------------------------қисми------------------------гача--%>
