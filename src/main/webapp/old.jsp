<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 15.12.2021
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Божхона тўлови| Божхона қиймати</title>
    <%--todo -------------------- Страницалар учун умумий link - лар (яна қўшишлиши мумкин) ------------------------- дан--%>
    <link rel="icon" href="<%=request.getContextPath()%>/resources/images/favicon.ico" type="image/ico"/>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/resources/vendors/bootstrap/dist/css/bootstrap.min.css"
          rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%=request.getContextPath()%>/resources/vendors/font-awesome/css/font-awesome.min.css"
          rel="stylesheet">
    <!-- NProgress -->
    <link href="<%=request.getContextPath()%>/resources/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<%=request.getContextPath()%>/resources/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="<%=request.getContextPath()%>/resources/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
          rel="stylesheet">
    <!-- JQVMap -->
    <link href="<%=request.getContextPath()%>/resources/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="<%=request.getContextPath()%>/resources/vendors/bootstrap-daterangepicker/daterangepicker.css"
          rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="<%=request.getContextPath()%>/resources/build/css/custom.min.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="<%=request.getContextPath()%>/resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
          rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
          rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
          rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
          rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
          rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.buttons.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.nonblock.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/resources/vendors/cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">

    <%--todo -------------------- Страницалар учун умумий link - лар (яна қўшишлиши мумкин) ------------------------- гача--%>
</head>
<body class="nav-md">

<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="index.html" class="site_title"><i class="fa fa-list"></i><span>Божхона қиймати</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Хуш келибсиз!</span>
                        <h2>Абдиев Ботир</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>Асосий</h3>
                        <ul class="nav side-menu">
                            <li><a href="javascript:void(0)"><i class="fa fa-bar-chart-o"></i>Товарларни тоифалаш</a></li>
                            <li><a><i class="fa fa-edit"></i>Дастлабки қарор<span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="index.html">Тақсимлаш</a></li>
                                    <li><a href="tables_dynamic.html">Мурожаатлар</a></li>
                                    <li><a href="form_wizards.html">Хулоса</a></li>
                                </ul>
                            </li>
                            <li><a href="javascript:void(0)"><i class="fa fa-desktop"></i>Қиймат мониторинги</a></li>
                            <li><a href="javascript:void(0)"><i class="fa fa-sitemap"></i>Мантиқий назорат</a></li>
                            <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i>Халқаро сўровнома</a></li>
                            <li><a href="javascript:void(0)"><i class="fa fa-clone"></i>Кўрсатма хатлар</a></li>
                            <li><a href="javascript:void(0)"><i class="fa fa-windows"></i>Справочник</a></li>
                        </ul>
                    </div>

                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <div class="nav toggle">
                    <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>
                <nav class="nav navbar-nav">
                    <ul class=" navbar-right">
                        <li class="nav-item dropdown open" style="padding-left: 15px;">
                            <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                                <img src="images/img.jpg" alt="">Абдиев Ботир
                            </a>
                            <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item"  href="javascript:;"> Фойдаланувчи</a>
                                <a class="dropdown-item"  href="javascript:;">
                                    <span>Созлаш</span>
                                </a>
                                <a class="dropdown-item"  href="javascript:;">Ёрдам</a>
                                <a class="dropdown-item"  href="login.html"><i class="fa fa-sign-out pull-right"></i> Чиқиш</a>
                            </div>
                        </li>

                        <li role="presentation" class="nav-item dropdown open">
                            <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">6</span>
                            </a>
                            <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                                <li class="nav-item">
                                    <a class="dropdown-item">
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="dropdown-item">
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="dropdown-item">
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="dropdown-item">
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <div class="text-center">
                                        <a class="dropdown-item">
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <!-- top tiles -->
            <div class="row w-100" style="display: inline-block;" >
                <div class="tile_count w-100">

                    <!--Carusel -->

                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>
                                <div class="col-md-2 col-sm-4  tile_stats_count">
                                    <span class="count_top"><i class="fa fa-user"></i> Жами аризалар сони</span>
                                    <div class="count">25</div>
                                    <span class="count_bottom"><i class="green"><i class="fa fa-bar-chart"></i></i></span>
                                </div>

                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <!--<span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
                            <span class="sr-only">Олдинги</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <!--<span class="carousel-control-next-icon" aria-hidden="true"></span>-->
                            <span class="sr-only">Кейинги</span>
                        </a>
                    </div>

                    <!--Carusel end -->
                </div>
            </div>
            <!-- /top tiles -->

            <div class="row">
                <div class="col-md-12 col-sm-12 ">
                    <div class="x_panel">

                        <div class="x_title">

                            <div class="clearfix"></div>

                            <ul class="nav nav-tabs bar_tabs" id="myTab" role="tablist">
                                <li class="nav-item ml-5" style="width: 30%">
                                    <a class="nav-link active h4" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><i class="fa fa-folder-open mr-3"></i>Мурожаатлар</a>
                                </li>
                                <li class="nav-item ml-4" style="width: 30%">
                                    <a class="nav-link h4" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false"><i class="fa fa-folder-open mr-3"></i>Тақсимланган мурожаатлар</a>
                                </li>
                                <li class="nav-item ml-4" style="width: 30%">
                                    <a class="nav-link h4" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"><i class="fa fa-folder-open mr-3"></i>Дастлабки қарор реестри</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                    <div class="x_content">
                                        <div class="table-responsive">
                                            <table class="table table-striped jambo_table bulk_action mt-4">
                                                <thead>
                                                <tr class="headings">
                                                    <th>
                                                        <input type="checkbox" id="check-all" class="flat">
                                                    </th>
                                                    <th class="column-title">Invoice </th>
                                                    <th class="column-title">Invoice Date </th>
                                                    <th class="column-title">Order </th>
                                                    <th class="column-title">Bill to Name </th>
                                                    <th class="column-title">Status </th>
                                                    <th class="column-title">Amount </th>
                                                    <th class="column-title no-link last"><span class="nobr">Action</span>
                                                    </th>
                                                    <th class="bulk-actions" colspan="2">
                                                        <a class="antoo" style="color:#fff; font-weight:500; font-size: 18px">Танланган аризалар сони( <span class="action-cnt"> </span> )</a>
                                                    </th>
                                                    <th class="bulk-actions" colspan="4">
                                                        <select class="select2_single border-0 w-50"  tabindex="-1" style=" background: #405467; color: #fff; font-size: 18px">
                                                            <option>Инспекторни танланг</option>
                                                            <option value="AK">Alaska</option>
                                                            <option value="HI">Hawaii</option>
                                                            <option value="CA">California</option>
                                                            <option value="NV">Nevada</option>
                                                            <option value="OR">Oregon</option>
                                                        </select>
                                                    </th>
                                                    <th class="bulk-actions" colspan="1" style=>
                                                        <a type="button" class="border border-success bg-success rounded-2" style="font-size: 18px"><i class="fa fa-share ml-2 mr-2"></i>Тақсимлаш&ensp;</a>
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 23, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i></td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 26, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>

                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 27, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 28, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                    <div class="x_content">
                                        <div class="table-responsive mt-4">
                                            <table id="datatable" class="table table-striped table-bordered mt-4" style="width:100%">
                                                <thead style="background-color: #405467; color: white">
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Position</th>
                                                    <th>Office</th>
                                                    <th>Age</th>
                                                    <th>Start date</th>
                                                    <th>Salary</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>Tiger Nixon</td>
                                                    <td>System Architect</td>
                                                    <td>Edinburgh</td>
                                                    <td>61</td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>Garrett Winters</td>
                                                    <td>Accountant</td>
                                                    <td>Tokyo</td>
                                                    <td>63</td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td>Ashton Cox</td>
                                                    <td>Junior Technical Author</td>
                                                    <td>San Francisco</td>
                                                    <td>66</td>
                                                    <td>2009/01/12</td>
                                                    <td>$86,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Cedric Kelly</td>
                                                    <td>Senior Javascript Developer</td>
                                                    <td>Edinburgh</td>
                                                    <td>22</td>
                                                    <td>2012/03/29</td>
                                                    <td>$433,060</td>
                                                </tr>
                                                <tr>
                                                    <td>Airi Satou</td>
                                                    <td>Accountant</td>
                                                    <td>Tokyo</td>
                                                    <td>33</td>
                                                    <td>2008/11/28</td>
                                                    <td>$162,700</td>
                                                </tr>
                                                <tr>
                                                    <td>Brielle Williamson</td>
                                                    <td>Integration Specialist</td>
                                                    <td>New York</td>
                                                    <td>61</td>
                                                    <td>2012/12/02</td>
                                                    <td>$372,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Herrod Chandler</td>
                                                    <td>Sales Assistant</td>
                                                    <td>San Francisco</td>
                                                    <td>59</td>
                                                    <td>2012/08/06</td>
                                                    <td>$137,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Rhona Davidson</td>
                                                    <td>Integration Specialist</td>
                                                    <td>Tokyo</td>
                                                    <td>55</td>
                                                    <td>2010/10/14</td>
                                                    <td>$327,900</td>
                                                </tr>
                                                <tr>
                                                    <td>Colleen Hurst</td>
                                                    <td>Javascript Developer</td>
                                                    <td>San Francisco</td>
                                                    <td>39</td>
                                                    <td>2009/09/15</td>
                                                    <td>$205,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Sonya Frost</td>
                                                    <td>Software Engineer</td>
                                                    <td>Edinburgh</td>
                                                    <td>23</td>
                                                    <td>2008/12/13</td>
                                                    <td>$103,600</td>
                                                </tr>
                                                <tr>
                                                    <td>Jena Gaines</td>
                                                    <td>Office Manager</td>
                                                    <td>London</td>
                                                    <td>30</td>
                                                    <td>2008/12/19</td>
                                                    <td>$90,560</td>
                                                </tr>
                                                <tr>
                                                    <td>Quinn Flynn</td>
                                                    <td>Support Lead</td>
                                                    <td>Edinburgh</td>
                                                    <td>22</td>
                                                    <td>2013/03/03</td>
                                                    <td>$342,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Charde Marshall</td>
                                                    <td>Regional Director</td>
                                                    <td>San Francisco</td>
                                                    <td>36</td>
                                                    <td>2008/10/16</td>
                                                    <td>$470,600</td>
                                                </tr>
                                                <tr>
                                                    <td>Haley Kennedy</td>
                                                    <td>Senior Marketing Designer</td>
                                                    <td>London</td>
                                                    <td>43</td>
                                                    <td>2012/12/18</td>
                                                    <td>$313,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Tatyana Fitzpatrick</td>
                                                    <td>Regional Director</td>
                                                    <td>London</td>
                                                    <td>19</td>
                                                    <td>2010/03/17</td>
                                                    <td>$385,750</td>
                                                </tr>
                                                <tr>
                                                    <td>Michael Silva</td>
                                                    <td>Marketing Designer</td>
                                                    <td>London</td>
                                                    <td>66</td>
                                                    <td>2012/11/27</td>
                                                    <td>$198,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Paul Byrd</td>
                                                    <td>Chief Financial Officer (CFO)</td>
                                                    <td>New York</td>
                                                    <td>64</td>
                                                    <td>2010/06/09</td>
                                                    <td>$725,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Gloria Little</td>
                                                    <td>Systems Administrator</td>
                                                    <td>New York</td>
                                                    <td>59</td>
                                                    <td>2009/04/10</td>
                                                    <td>$237,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Bradley Greer</td>
                                                    <td>Software Engineer</td>
                                                    <td>London</td>
                                                    <td>41</td>
                                                    <td>2012/10/13</td>
                                                    <td>$132,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Dai Rios</td>
                                                    <td>Personnel Lead</td>
                                                    <td>Edinburgh</td>
                                                    <td>35</td>
                                                    <td>2012/09/26</td>
                                                    <td>$217,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Jenette Caldwell</td>
                                                    <td>Development Lead</td>
                                                    <td>New York</td>
                                                    <td>30</td>
                                                    <td>2011/09/03</td>
                                                    <td>$345,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Yuri Berry</td>
                                                    <td>Chief Marketing Officer (CMO)</td>
                                                    <td>New York</td>
                                                    <td>40</td>
                                                    <td>2009/06/25</td>
                                                    <td>$675,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Caesar Vance</td>
                                                    <td>Pre-Sales Support</td>
                                                    <td>New York</td>
                                                    <td>21</td>
                                                    <td>2011/12/12</td>
                                                    <td>$106,450</td>
                                                </tr>
                                                <tr>
                                                    <td>Doris Wilder</td>
                                                    <td>Sales Assistant</td>
                                                    <td>Sidney</td>
                                                    <td>23</td>
                                                    <td>2010/09/20</td>
                                                    <td>$85,600</td>
                                                </tr>
                                                <tr>
                                                    <td>Angelica Ramos</td>
                                                    <td>Chief Executive Officer (CEO)</td>
                                                    <td>London</td>
                                                    <td>47</td>
                                                    <td>2009/10/09</td>
                                                    <td>$1,200,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Gavin Joyce</td>
                                                    <td>Developer</td>
                                                    <td>Edinburgh</td>
                                                    <td>42</td>
                                                    <td>2010/12/22</td>
                                                    <td>$92,575</td>
                                                </tr>
                                                <tr>
                                                    <td>Jennifer Chang</td>
                                                    <td>Regional Director</td>
                                                    <td>Singapore</td>
                                                    <td>28</td>
                                                    <td>2010/11/14</td>
                                                    <td>$357,650</td>
                                                </tr>
                                                <tr>
                                                    <td>Brenden Wagner</td>
                                                    <td>Software Engineer</td>
                                                    <td>San Francisco</td>
                                                    <td>28</td>
                                                    <td>2011/06/07</td>
                                                    <td>$206,850</td>
                                                </tr>
                                                <tr>
                                                    <td>Fiona Green</td>
                                                    <td>Chief Operating Officer (COO)</td>
                                                    <td>San Francisco</td>
                                                    <td>48</td>
                                                    <td>2010/03/11</td>
                                                    <td>$850,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Shou Itou</td>
                                                    <td>Regional Marketing</td>
                                                    <td>Tokyo</td>
                                                    <td>20</td>
                                                    <td>2011/08/14</td>
                                                    <td>$163,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Michelle House</td>
                                                    <td>Integration Specialist</td>
                                                    <td>Sidney</td>
                                                    <td>37</td>
                                                    <td>2011/06/02</td>
                                                    <td>$95,400</td>
                                                </tr>
                                                <tr>
                                                    <td>Suki Burks</td>
                                                    <td>Developer</td>
                                                    <td>London</td>
                                                    <td>53</td>
                                                    <td>2009/10/22</td>
                                                    <td>$114,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Prescott Bartlett</td>
                                                    <td>Technical Author</td>
                                                    <td>London</td>
                                                    <td>27</td>
                                                    <td>2011/05/07</td>
                                                    <td>$145,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Gavin Cortez</td>
                                                    <td>Team Leader</td>
                                                    <td>San Francisco</td>
                                                    <td>22</td>
                                                    <td>2008/10/26</td>
                                                    <td>$235,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Martena Mccray</td>
                                                    <td>Post-Sales support</td>
                                                    <td>Edinburgh</td>
                                                    <td>46</td>
                                                    <td>2011/03/09</td>
                                                    <td>$324,050</td>
                                                </tr>
                                                <tr>
                                                    <td>Unity Butler</td>
                                                    <td>Marketing Designer</td>
                                                    <td>San Francisco</td>
                                                    <td>47</td>
                                                    <td>2009/12/09</td>
                                                    <td>$85,675</td>
                                                </tr>
                                                <tr>
                                                    <td>Howard Hatfield</td>
                                                    <td>Office Manager</td>
                                                    <td>San Francisco</td>
                                                    <td>51</td>
                                                    <td>2008/12/16</td>
                                                    <td>$164,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Hope Fuentes</td>
                                                    <td>Secretary</td>
                                                    <td>San Francisco</td>
                                                    <td>41</td>
                                                    <td>2010/02/12</td>
                                                    <td>$109,850</td>
                                                </tr>
                                                <tr>
                                                    <td>Vivian Harrell</td>
                                                    <td>Financial Controller</td>
                                                    <td>San Francisco</td>
                                                    <td>62</td>
                                                    <td>2009/02/14</td>
                                                    <td>$452,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Timothy Mooney</td>
                                                    <td>Office Manager</td>
                                                    <td>London</td>
                                                    <td>37</td>
                                                    <td>2008/12/11</td>
                                                    <td>$136,200</td>
                                                </tr>
                                                <tr>
                                                    <td>Jackson Bradshaw</td>
                                                    <td>Director</td>
                                                    <td>New York</td>
                                                    <td>65</td>
                                                    <td>2008/09/26</td>
                                                    <td>$645,750</td>
                                                </tr>
                                                <tr>
                                                    <td>Olivia Liang</td>
                                                    <td>Support Engineer</td>
                                                    <td>Singapore</td>
                                                    <td>64</td>
                                                    <td>2011/02/03</td>
                                                    <td>$234,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Bruno Nash</td>
                                                    <td>Software Engineer</td>
                                                    <td>London</td>
                                                    <td>38</td>
                                                    <td>2011/05/03</td>
                                                    <td>$163,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Sakura Yamamoto</td>
                                                    <td>Support Engineer</td>
                                                    <td>Tokyo</td>
                                                    <td>37</td>
                                                    <td>2009/08/19</td>
                                                    <td>$139,575</td>
                                                </tr>
                                                <tr>
                                                    <td>Thor Walton</td>
                                                    <td>Developer</td>
                                                    <td>New York</td>
                                                    <td>61</td>
                                                    <td>2013/08/11</td>
                                                    <td>$98,540</td>
                                                </tr>
                                                <tr>
                                                    <td>Finn Camacho</td>
                                                    <td>Support Engineer</td>
                                                    <td>San Francisco</td>
                                                    <td>47</td>
                                                    <td>2009/07/07</td>
                                                    <td>$87,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Serge Baldwin</td>
                                                    <td>Data Coordinator</td>
                                                    <td>Singapore</td>
                                                    <td>64</td>
                                                    <td>2012/04/09</td>
                                                    <td>$138,575</td>
                                                </tr>
                                                <tr>
                                                    <td>Zenaida Frank</td>
                                                    <td>Software Engineer</td>
                                                    <td>New York</td>
                                                    <td>63</td>
                                                    <td>2010/01/04</td>
                                                    <td>$125,250</td>
                                                </tr>
                                                <tr>
                                                    <td>Zorita Serrano</td>
                                                    <td>Software Engineer</td>
                                                    <td>San Francisco</td>
                                                    <td>56</td>
                                                    <td>2012/06/01</td>
                                                    <td>$115,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Jennifer Acosta</td>
                                                    <td>Junior Javascript Developer</td>
                                                    <td>Edinburgh</td>
                                                    <td>43</td>
                                                    <td>2013/02/01</td>
                                                    <td>$75,650</td>
                                                </tr>
                                                <tr>
                                                    <td>Cara Stevens</td>
                                                    <td>Sales Assistant</td>
                                                    <td>New York</td>
                                                    <td>46</td>
                                                    <td>2011/12/06</td>
                                                    <td>$145,600</td>
                                                </tr>
                                                <tr>
                                                    <td>Hermione Butler</td>
                                                    <td>Regional Director</td>
                                                    <td>London</td>
                                                    <td>47</td>
                                                    <td>2011/03/21</td>
                                                    <td>$356,250</td>
                                                </tr>
                                                <tr>
                                                    <td>Lael Greer</td>
                                                    <td>Systems Administrator</td>
                                                    <td>London</td>
                                                    <td>21</td>
                                                    <td>2009/02/27</td>
                                                    <td>$103,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Jonas Alexander</td>
                                                    <td>Developer</td>
                                                    <td>San Francisco</td>
                                                    <td>30</td>
                                                    <td>2010/07/14</td>
                                                    <td>$86,500</td>
                                                </tr>
                                                <tr>
                                                    <td>Shad Decker</td>
                                                    <td>Regional Director</td>
                                                    <td>Edinburgh</td>
                                                    <td>51</td>
                                                    <td>2008/11/13</td>
                                                    <td>$183,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Michael Bruce</td>
                                                    <td>Javascript Developer</td>
                                                    <td>Singapore</td>
                                                    <td>29</td>
                                                    <td>2011/06/27</td>
                                                    <td>$183,000</td>
                                                </tr>
                                                <tr>
                                                    <td>Donna Snider</td>
                                                    <td>Customer Support</td>
                                                    <td>New York</td>
                                                    <td>27</td>
                                                    <td>2011/01/25</td>
                                                    <td>$112,000</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                    <div class="x_content">
                                        <div class="table-responsive">
                                            <table class="table table-striped jambo_table bulk_action mt-4">
                                                <thead>
                                                <tr class="headings">
                                                    <th>
                                                        <input type="checkbox" id="check-all" class="flat">
                                                    </th>
                                                    <th class="column-title">Invoice </th>
                                                    <th class="column-title">Invoice Date </th>
                                                    <th class="column-title">Order </th>
                                                    <th class="column-title">Bill to Name </th>
                                                    <th class="column-title">Status </th>
                                                    <th class="column-title">Amount </th>
                                                    <th class="column-title no-link last"><span class="nobr">Action</span>
                                                    </th>
                                                    <th class="bulk-actions" colspan="7">
                                                        <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                                    </th>
                                                </tr>
                                                </thead>

                                                <tbody>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 23, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i></td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                    </td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                    </td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000038</td>
                                                    <td class=" ">May 26, 2014 10:55:33 PM</td>
                                                    <td class=" ">121000203</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$432.26</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000037</td>
                                                    <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                    <td class=" ">121000204</td>
                                                    <td class=" ">Mike Smith</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$333.21</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>

                                                <tr class="even pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000040</td>
                                                    <td class=" ">May 27, 2014 11:47:56 PM </td>
                                                    <td class=" ">121000210</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$7.45</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
                                                <tr class="odd pointer">
                                                    <td class="a-center ">
                                                        <input type="checkbox" class="flat" name="table_records">
                                                    </td>
                                                    <td class=" ">121000039</td>
                                                    <td class=" ">May 28, 2014 11:30:12 PM</td>
                                                    <td class=" ">121000208</td>
                                                    <td class=" ">John Blank L</td>
                                                    <td class=" ">Paid</td>
                                                    <td class="a-right a-right ">$741.20</td>
                                                    <td class=" last"><a href="#">View</a>
                                                    </td>
                                                </tr>
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
        </div>
    </div>
    <!-- /page content -->
    <!-- footer content -->
    <footer>
        <div class="pull-right">
            Дастлабки қарор
        </div>
        <div class="clearfix"></div>
    </footer>
    <!-- /footer content -->
</div>

<%--todo Асосий----------------------------------------------------қисми------------------------дан--%>
<%--todo <main class="app-content">--%>
<%--todo    <div class="col-md-12 " id="MainContent" style="padding: 0;">--%>
<%--todo страницаларни чақириш жойи--%>
<%--todo    </div>--%>
<%--todo </main>--%>
<%--todo Асосий----------------------------------------------------қисми------------------------гача--%>

<%--todo Страницалар учун умумий script - лар (яна қўшишлиши мумкин) --- дан--%>
<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/vendors/jquery/dist/jquery.min.js"></script>



<script>
    $(document).ready(function () {
        var dataS = {
            "x": '0',
            "y": '0'
        };
        var tipform = '';
        tipform = "<%=request.getContextPath()%>/resources/pages/ClassProduct/ListClassProduct.jsp";
        document.body.style.cursor = 'wait';
        $.post({
            async: false,
            url: tipform,
            data: dataS,
            dataType: "html",
            header: 'Content-type: text/html; charset=utf-8',
            success: function (res) {
                $('div#MainContent').html(res);
                document.body.style.cursor = 'default';
            },
            error: function (res) {
                if (res.status == 401) {
                    $(".logOutForm").submit();
                }
            }
        });
    });

    function CostMonitoring(x) {
        var dataS = {
            "id": x
        }
        $.ajax({
            type: "POST",
            data: dataS,
            url: "<%=request.getContextPath()%>/sent/resources/pages/CostMonitoring/CostMonitoring",
            dataType: "html",
            header: 'Content-type: text/html; charset=utf-8',
            success: function (res) {
                $('div#MainContent').html(res);
            },
            error: function (res) {
            }
        });
        // console.log("sdfsdfsdf");
        // $('.selectpicker').selectpicker();
    }

    function InitialDecision(x) {
        var dataS = {
            "id": x
        }
        $.ajax({
            type: "POST",
            data: dataS,
            url: "<%=request.getContextPath()%>/sent/resources/pages/InitialDecision/InitialDecision",
            dataType: "html",
            header: 'Content-type: text/html; charset=utf-8',
            success: function (res) {
                $('div#MainContent').html(res);
            },
            error: function (res) {
            }
        });
        // console.log("sdfsdfsdf");
        // $('.selectpicker').selectpicker();
    }

    function Main(x, y) {
        var dataS = {
            "y": y
        };
        var urlY = '';
        if (x === 2) {
            CostMonitoring(x);
        } else if (x === 66) {
            InitialDecision(x);
        } else {
            var tipform = '';
            switch (x) {
                case 1:
                <%--tipform = "<%=request.getContextPath()%>/resources/pages/ClassProduct/ClassProduct.jsp";--%>
                <%--tipform = "<%=request.getContextPath()%>/resources/pages/InitialDecision/InitialDecisionRasp.jsp";--%>
                    tipform = "<%=request.getContextPath()%>/resources/pages/ClassProduct/ClassProduct.jsp";
                    break;
                case 2:
                    tipform = "<%=request.getContextPath()%>/resources/pages/CostMonitoring/CostMonitoring.jsp";
                    break;
                case 3:
                    tipform = "<%=request.getContextPath()%>/resources/pages/LogicalControl/LogicalControl.jsp";
                    break;
                case 4:
                    tipform = "<%=request.getContextPath()%>/resources/pages/InitialDecision/InitialDecision.jsp";
                    break;
                case 6:
                    tipform = "<%=request.getContextPath()%>/resources/pages/InitialDecision/InitialDecisionRasp.jsp";
                    break;
                case 7:
                    tipform = "<%=request.getContextPath()%>/resources/pages/InitialDecision/InitialDecision.jsp";
                    break;
                case 8:
                    tipform = "<%=request.getContextPath()%>/resources/pages/InitialDecision/InitialDecisionView.jsp";
                    break;
                case 90:
                    tipform = "/Welcome";
                    break;
                default:
                    "<%=request.getContextPath()%>/";
            }
            if (x !== 100) {
                document.body.style.cursor = 'wait';
                $.post({
                    async: false,
                    url: tipform,
                    data: dataS,
                    dataType: "html",
                    header: 'Content-type: text/html; charset=utf-8',
                    success: function (res) {
                        $('div#MainContent').html(res);
                        document.body.style.cursor = 'default';
                    },
                    error: function (res) {
                        if (res.status == 401) {
                            $(".logOutForm").submit();
                        }
                    }
                });
            }

        }
        // console.log("sdf")
        // $('.selectpicker').selectpicker();
    }
</script>
<!-- gauge.js -->

<script src="<%=request.getContextPath()%>/resources/vendors/gauge.js/dist/gauge.min.js"></script>
<!-- bootstrap-progressbar -->
<script src="<%=request.getContextPath()%>/resources/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- Skycons -->
<script src="<%=request.getContextPath()%>/resources/vendors/skycons/skycons.js"></script>
<!-- Flot -->
<script src="<%=request.getContextPath()%>/resources/vendors/Flot/jquery.flot.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/Flot/jquery.flot.pie.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/Flot/jquery.flot.time.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/Flot/jquery.flot.stack.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/Flot/jquery.flot.resize.js"></script>

<!-- Flot plugins -->
<script src="<%=request.getContextPath()%>/resources/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/flot.curvedlines/curvedLines.js"></script>
<!-- JQVMap -->
<script src="<%=request.getContextPath()%>/resources/vendors/jqvmap/dist/jquery.vmap.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="<%=request.getContextPath()%>/resources/vendors/moment/min/moment.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="<%=request.getContextPath()%>/resources/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<!-- FastClick -->
<script src="<%=request.getContextPath()%>/resources/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="<%=request.getContextPath()%>/resources/vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="<%=request.getContextPath()%>/resources/vendors/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/jszip/dist/jszip.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/pdfmake/build/vfs_fonts.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

<script src="<%=request.getContextPath()%>/resources/vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.buttons.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendors/pnotify/dist/pnotify.nonblock.js"></script>
<!-- Custom Theme Scripts -->
<script src="<%=request.getContextPath()%>/resources/build/js/custom.min.js"></script>

<%--todo Страницалар учун умумий script - лар (яна қўшишлиши мумкин) --- гача--%>

<%--todo Страницаларни чақириш script командалари --- дан--%>

<%--todo Страницаларни чақириш script командалари --- гача--%>

</body>
</html>
