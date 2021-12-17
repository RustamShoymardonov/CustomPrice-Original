<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 17.12.2021
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<html>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
%>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
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
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <!-- Main CSS-->
    <link href="<%=request.getContextPath()%>/resources/css/main.css" rel="stylesheet" type="text/css">
    <!-- Font-icon css-->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <title>Божхона қиймати</title>
</head>

<body class="app sidebar-mini">
<form name="f1" method="post">
    <header class="app-header">

        <!-- Sidebar toggle button--><a aria-label="Hide Sidebar" class="app-sidebar__toggle" data-toggle="sidebar"
                                        href="#"></a>
        <!-- Navbar Right Menu--><a class="app-header__logo" href="<%=request.getContextPath()%>/resources/pages/base.jsp">Божхона қиймати</a>
        <ul class="app-nav">
            <li class="app-search">
                <input class="app-search__input" placeholder="Search" type="search">
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
</form>
</body>
</html>
