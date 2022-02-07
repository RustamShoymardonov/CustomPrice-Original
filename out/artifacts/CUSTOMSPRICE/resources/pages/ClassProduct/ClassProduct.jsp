<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20.12.2021
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>

<%--todo Тоифалаш тури (график) саҳифаси----------------------------------------------------қисми------------------------дан--%>
<div class="tile" style=" padding: 0px; height: 90vh;">
    <div class="row">
        <div class="col-md-9 border-right">
            <div class="col">
                <div class="container ml-4" style="margin-top: 1rem;">
                    <form method="GET" class="form-inline">

                        <div class="">
                            <div class="form-row mb-4">
                                <div class="form-group col-sm-5">
                                    <div>
                                        <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Тоифалаш тури</label>
                                    </div>
                                    <select data-live-search="true"  data-live-search-style="startsWith" class="selectpicker w-100">
                                        <option value="4444">Тоифани танланг</option>
                                        <option value="Fedex">Божхона қийматини ўзгартириш</option>
                                        <option value="Elite">Божхона қийматини ўзгартириш (ишлаб чиқарувчи давлат кесимида)</option>
                                        <option value="Interp"> Товарлар индекси (худудлар кесимида)</option>
                                        <option value="Test">Test</option>
                                    </select>
                                </div>
                                <div class="form-group col-sm-3">
                                    <div>
                                        <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Божхона режими</label>
                                    </div>
                                    <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker">
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
                                <div class="form-group col-sm-3">
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
                            </div>
                            <div class="form-row">
                                <div class="form-group col-sm-3">
                                    <div>
                                        <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Ишлаб чиқарувчи мамлакат</label>
                                    </div>
                                    <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker">
                                        <option></option>
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
                                <div class="form-group col-sm-3">
                                    <div>
                                        <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Транспорт тури</label>
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
                                <div class="form-group col-sm-2">
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Оралиқ давр(дан)</label>
                                    <input class="form-control" type="date" value="2012-04-05">
                                </div>
                                <div class="form-group col-sm-2">
                                    <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; font-weight: 700;">Оралиқ давр(гача)</label>
                                    <input class="form-control" data-live-search-style="startsWith" type="date" value="2012-04-05">
                                </div>
                                <div class="form-group col-sm-2">
                                    <div>
                                        <label style="display: inline-block;max-width: 100%; margin-bottom: 5px; color: #fff; font-weight: 700;">Излаш</label>
                                    </div>
                                    <button type="submit" class="btn"><i class="fa fa-search"></i> Излаш</button>
                                </div>
                            </div>
                        </div>

                    </form>
                </div>
            </div>

            <div class="col">
                <div class="tile">
                    <div class="embed-responsive embed-responsive-16by9">
                        <canvas class="embed-responsive-item" height="100%" id="lineChartDemo"
                                style="width: 100%; height: 100%;" width="200px"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <style>

                table {
                    width: 716px; /* 140px * 5 column + 16px scrollbar width */
                    border-spacing: 0;
                }

                tbody, thead tr {
                    display: block;
                }

                tbody {
                    height: 35vh;
                    overflow-y: auto;
                    overflow-x: hidden;
                    border-color: #fff;
                }

                tbody td, thead th {
                    width: 150px;
                }

                thead th:last-child {
                    width: 200px; /* 140px + 16px scrollbar width */
                }

            </style>
            <div class="wrapper">
                <h3><b>Самарқанд(август 2021)</b></h3>
            </div>
            <span style="font-size: 20px;"><b>индекс</b></span><span
                style="font-size: 20px; margin-left: 1rem;"><b>20 $</b></span><span
                style="font-size: 20px; margin-left: 12rem; color: red;"><b>-65%</b></span>
            <table class="table-sm" style="width: 100%;">
                <thead>
                <tr >
                    <th style="text-align: center">т/р</th>
                    <th style="text-align: center">БЮД рақами</th>
                    <th style="text-align: center">Фоизи</th>
                </tr>
                <tr align="center" colspan="3" style="background-color:  #eee; color: #000">
                    <th >Нарҳ пасайиши бўйича</th>
                </tr>
                </thead>
                <tbody>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">1</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001177</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-75%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">2</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001180</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-33%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">3</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001178</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-28%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">4</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001181</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-19%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">5</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001179</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-75%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">6</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-33%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">7</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001178</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-28%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">8</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001181</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-19%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">9</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001179</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-75%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">10</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-33%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">11</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001180</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-28%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">12</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001183</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-19%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">13</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001179</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-75%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">14</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-33%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001180</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-28%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">16</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001183</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-19%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">17</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001181</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-75%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">18</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001184</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-33%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">19</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001180</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-28%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">20</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001183</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-19%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">21</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001181</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-75%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">22</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001184</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-33%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">23</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-28%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">24</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001185</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-19%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">25</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001181</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-75%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001184</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-33%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">27</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-28%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">28</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001185</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-19%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">29</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001183</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-75%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">30</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001186</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-33%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">31</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">-33%<i
                            class="fa fa-caret-down" style="color: red; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                </tbody>
            </table>
            <table class="table-sm" style="width: 100%;">
                <thead>
                <tr align="center" colspan="3" style="background-color:  #eee; color: #000">
                    <th>Нарҳни ошиши бўйича</th>
                </tr>
                </thead>
                <tbody>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">1</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001177</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+75%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">2</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001180</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+33%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">3</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001178</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+28%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">4</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001181</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+19%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">5</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001179</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+75%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">6</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+33%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">7</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001178</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+28%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">8</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001181</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+19%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font
                            style="vertical-align: inherit;">9</font></font></td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001179</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+75%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">10</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+33%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">11</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001180</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+28%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">12</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001183</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+19%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">13</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001179</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+75%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">14</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+33%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001180</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+28%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">16</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001183</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+19%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">17</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001181</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+75%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">18</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001184</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+33%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">19</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001180</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+28%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">20</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001183</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+19%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">21</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001181</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+75%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">22</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001184</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+33%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">23</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+28%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">24</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001185</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+19%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">25</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001181</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+75%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001184</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+33%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">27</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001182</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+28%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">28</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001185</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+19%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">29</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001183</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+75%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                <tr align="center">
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">30</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/13.11.2021/0001186</font></font>
                    </td>
                    <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+33%<i
                            class="fa fa-caret-up" style="color: greenyellow; font-size: 22px;"
                            aria-hidden="true"></i></font></font></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%--todo Тоифалаш тури (график) саҳифаси----------------------------------------------------қисми------------------------гача--%>

<script type="text/javascript">
    var data = {
        labels: ["Yanvar", "Fevral", "Mart", "Aprel", "May", "Iyun", "Iyul", "Avgust", "Sentabr", "Oktabr", "Noyabr", "Dekabr"],
        datasets: [
            {
                label: "My First dataset",
                fillColor: "rgba(220,220,220,0.2)",
                strokeColor: "green",
                pointColor: "rgba(220,220,220,1)",
                pointStrokeColor: "green",
                pointHighlightFill: "green",
                pointHighlightStroke: "rgba(220,220,220,1)",
                data: [40, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50]
            },
            {
                label: "My Second dataset",
                fillColor: "rgba(0,0,0,0.0)",
                strokeColor: "orange",
                pointColor: "rgba(220,220,220,1)",
                pointStrokeColor: "orange",
                pointHighlightFill: "orange",
                pointHighlightStroke: "rgba(220,220,220,1)",
                data: [100, 59, 80, 81, 56, 40, 65, 59, 80, 81, 56, 40]
            },
            {
                label: "My Threed dataset",
                fillColor: "rgba(0,0,0,0.0)",
                strokeColor: "red",
                pointColor: "rgba(220,220,220,1)",
                pointStrokeColor: "red",
                pointHighlightFill: "red",
                pointHighlightStroke: "rgba(151,187,205,1)",
                data: [100, 48, 40, 29, 16, 20, 35, 49, 50, 41, 26, 30]
            }
        ]
    };
    var pdata = [
        {
            value: 300,
            color: "#46BFBD",
            highlight: "#5AD3D1",
            label: "Complete" + "%"
        },
        {
            value: 100,
            color: "#F7464A",
            highlight: "#FF5A5E",
            label: "In-Progress" + "%"
        },
        {
            value: 50,
            color: "#F7464A",
            highlight: "#FF5A5E",
            label: "In-Progress" + "%"
        }
    ]

    var ctxl = $("#lineChartDemo").get(0).getContext("2d");
    var lineChart = new Chart(ctxl).Line(data);
</script>