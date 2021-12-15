<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 15.12.2021
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular."
          name="description">
    <!-- Twitter meta-->
    <meta content="summary_large_image" property="twitter:card">
    <meta content="@pratikborsadiya" property="twitter:site">
    <meta content="@pratikborsadiya" property="twitter:creator">
    <!-- Open Graph Meta-->
    <meta content="website" property="og:type">
    <meta content="Vali Admin" property="og:site_name">
    <meta content="Vali - Free Bootstrap 4 admin theme" property="og:title">
    <meta content="http://pratikborsadiya.in/blog/vali-admin" property="og:url">
    <meta content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png" property="og:image">
    <meta content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular."
          property="og:description">
    <title>Божхона қиймати</title>
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <!-- Main CSS-->
    <link href="<%=request.getContextPath()%>/resources/css/main.css" rel="stylesheet" type="text/css">
    <!-- Font-icon css-->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"
          rel="stylesheet" type="text/css">
</head>
<body class="app sidebar-mini">
<!-- Navbar-->
<header class="app-header">
    <!-- Sidebar toggle button--><a aria-label="Hide Sidebar" class="app-sidebar__toggle" data-toggle="sidebar"
                                    href="#"></a>
    <!-- Navbar Right Menu--><a class="app-header__logo" href="<%=request.getContextPath()%>/index.jsp">Божхона қиймати</a>
    <ul class="app-nav">
        <li class="app-search">
            <input class="app-search__input" placeholder="Сайт бўйлаб излаш" type="search">
            <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
        <li class="app-search">
            <span style="color: #0069c1; font-size: 18px;">Хазратов Бобур Баходирович</span>
        </li>
        <!-- User Menu-->
        <li class="dropdown"><a aria-label="Open Profile Menu" class="app-nav__item" data-toggle="dropdown" href="#"><i
                class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <!--<li><a class="dropdown-item" href="page-user.html"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
                <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> Profile</a></li>-->
                <li><a class="dropdown-item" href="page-login.html"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
            </ul>
        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <ul class="app-menu">
        <li><a class="app-menu__item" href="<%=request.getContextPath()%>/resources/pages/second.jsp"><i class="app-menu__icon fa fa-line-chart"></i><span
                class="app-menu__label">Товарларни тоифалаш</span></a></li>
        <li><a class="app-menu__item" href="charts.html"><i class="app-menu__icon fa fa-check-square-o"></i><span
                class="app-menu__label">Қиймат мониторинги</span></a></li>
        <li><a class="app-menu__item" href="charts.html"><i class="app-menu__icon fa fa-exclamation-triangle"></i><span
                class="app-menu__label">Мантиқий назорат</span></a></li>
        <li><a class="app-menu__item" href="charts.html"><i class="app-menu__icon fa fa-globe"></i><span
                class="app-menu__label">Халқаро сўровномалар</span></a></li>
        <li><a class="app-menu__item" href="charts.html"><i class="app-menu__icon fa fa-envelope-open"></i><span
                class="app-menu__label">Кўрсатма хатлари</span></a></li>
        <li><a class="app-menu__item" href="charts.html"><i class="app-menu__icon fa fa-pencil-square-o"></i><span
                class="app-menu__label">Дастлабки қарор</span></a></li>
        <li><a class="app-menu__item" href="charts.html"><i class="app-menu__icon fa fa-indent"></i><span
                class="app-menu__label">Справочник</span></a></li>
    </ul>
</aside>
<main class="app-content">
    <div class="col-md-12">
        <div class="tile">
            <div class="table-responsive">
                <div class="row">
                    <div class="col-md-9 border-right">
                        <div class="col-auto">

                            <div class="container">
                                <p>Тоифалаш тури</p>
                                <form action="/action_page.php" class="form-inline">
                                    <div class="form-group">
                                        <select class="form-control" id="exampleSelect1" style="width: 750px;">
                                            <option><font style="vertical-align: inherit;"><font
                                                    style="vertical-align: inherit;">1</font></font></option>
                                            <option><font style="vertical-align: inherit;"><font
                                                    style="vertical-align: inherit;">2</font></font></option>
                                            <option><font style="vertical-align: inherit;"><font
                                                    style="vertical-align: inherit;">3</font></font></option>
                                            <option><font style="vertical-align: inherit;"><font
                                                    style="vertical-align: inherit;">4</font></font></option>
                                            <option><font style="vertical-align: inherit;"><font
                                                    style="vertical-align: inherit;">5</font></font></option>
                                            <option><font style="vertical-align: inherit;"><font
                                                    style="vertical-align: inherit;">5</font></font></option>
                                            <option><font style="vertical-align: inherit;"><font
                                                    style="vertical-align: inherit;">5</font></font></option>
                                            <option><font style="vertical-align: inherit;"><font
                                                    style="vertical-align: inherit;">5</font></font></option>
                                        </select>
                                    </div>
                                    <button class="btn btn-info" style="margin-left: 3rem;" type="button">
                                        <font style="vertical-align: inherit; margin-left: 2rem; margin-right: 2rem;">
                                            <font style="vertical-align: inherit;">И з л а ш</font>
                                        </font>
                                    </button>
                                    <div class="input-group">
                                        <div>
                                            <label>ТИФ ТН коди</label>
                                            <input aria-describedby="search-addon" aria-label="Search"
                                                   class="form-control rounded" placeholder="00000000"
                                                   type="search"/><i class="fa fa-search"></i></div>
                                    </div>
                                    <div>
                                        <label style="margin-left: 2rem;">Божхона режими</label>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" id="inlineCheckbox1"
                                                   style="margin-left: 2rem;" type="checkbox" value="option1">
                                            <label class="form-check-label" for="inlineCheckbox1">40</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" id="inlineCheckbox2"
                                                   style="margin-left: 2rem;" type="checkbox" value="option2">
                                            <label class="form-check-label" for="inlineCheckbox2">42</label>
                                        </div>
                                    </div>
                                    <div class="input-group input-daterange">
                                        <div>
                                            <label>Оралиқ давр</label>
                                            <input class="form-control" style="margin-left: 3rem;" type="date"
                                                   value="2012-04-05">
                                            <span>дан</span>
                                            <input class="form-control" type="date" value="2012-04-19">
                                            <span>гача</span>
                                        </div>
                                    </div>

                                </form>

                            </div>
                        </div>

                        <div class="col-auto">
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

                        <h5><font style="vertical-align: inherit; color: red;">Самарқанд (август 2021)</font></h5>
                        <span style="font-size: 20px;"><b>индекс</b></span><span
                            style="font-size: 20px; margin-left: 1rem;"><b>20 $</b></span><span
                            style="font-size: 20px; margin-left: 12rem; color: red;"><b>-65%</b></span>
                        <table ; ; cellpadding="0" cellspacing="0" class="table-bordered" style="width: 100%;">
                            <thead>
                            <tr align="center">
                                <th><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">т/р</font></font></th>
                                <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">БЮД
                                    рақами</font></font></th>
                                <th><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Фоизи</font></font></th>
                            </tr>
                            <tr align="center" colspan="3" style="background-color: #eee">
                                <th>Нарҳни пасайиши бўйича</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">1</font></font></td>
                                <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001177</font></font>
                                </td>
                                <td>
                                    <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">
                                            -75
                                        </font>
                                    </font>
                                </td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">2</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Иаков</font></font></td>
                                <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Торнтон</font></font>
                                </td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="table-bordered" style="width: 100%;">
                            <thead>
                            <tr align="center" colspan="3" style="background-color: #eee">
                                <th>Нарҳни ошиши бўйича</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">1</font></font></td>
                                <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">26002/11.10.2021/0001177</font></font>
                                </td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">-75%</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">2</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Иаков</font></font></td>
                                <td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Торнтон</font></font>
                                </td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            <tr align="center">
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">3</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Ларри</font></font></td>
                                <td><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">птица</font></font></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>


</main>
<!-- Essential javascripts for application to work-->
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="<%=request.getContextPath()%>/resources/js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<script src="<%=request.getContextPath()%>/resources/js/plugins/chart.js" type="text/javascript"></script>
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
                data: [50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50]
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

    var ctxp = $("#pieChartDemo").get(0).getContext("2d");
    var pieChart = new Chart(ctxp).Pie(pdata);
</script>
<!-- Google analytics script-->
<script type="text/javascript">
    if (document.location.hostname == 'pratikborsadiya.in') {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
</script>
</body>
</html>
