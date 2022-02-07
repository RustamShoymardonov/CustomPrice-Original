<!DOCTYPE html>
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
    <title>Божхона қиймати</title>
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1" name="viewport">

    <%--todo -------------------- Страницалар учун умумий link - лар (яна қўшишлиши мумкин) ------------------------- дан--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/fontawesome-free-5.15.4-web/css/all.css" type="text/css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-select.css"/>
    <%--todo -------------------- Страницалар учун умумий link - лар (яна қўшишлиши мумкин) ------------------------- гача--%>
</head>
<body class="app sidebar-mini">
<header class="app-header">
    <a aria-label="Hide Sidebar" class="app-sidebar__toggle" data-toggle="sidebar" href="#"></a>
    <a class="app-header__logo" href="<%=request.getContextPath()%>/index.jsp">Божхона қиймати</a>
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
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar" style="background-image: url('<%=request.getContextPath()%>/resources/images/archa.gif'); background-repeat: no-repeat; background-position: bottom; background-size: 90%;">
    <ul class="app-menu">
        <li>
            <a class="app-menu__item" href="#" onclick="Main(1, 1)">
                <i class="app-menu__icon fa fa-chart-line"></i><span class="app-menu__label">Товарларни тоифалаш</span>
            </a>
        </li>
        <li>
            <a class="app-menu__item" href="#" onclick="Main(2, 1)">
                <i class="app-menu__icon fa fa-calculator"></i><span class="app-menu__label">Қиймат мониторинги</span>
            </a>
        </li>
        <li>
            <a class="app-menu__item" href="#" onclick="Main(3, 1)">
                <i class="app-menu__icon fa fa-exclamation-triangle"></i><span class="app-menu__label">Мантиқий назорат</span>
            </a>
        </li>
        <li>
            <a class="app-menu__item" href="#">
                <i class="app-menu__icon fa fa-globe"></i>
                <span class="app-menu__label">Халқаро сўровномалар</span>
            </a>
        </li>
        <li>
            <a class="app-menu__item" href="#">
                <i class="app-menu__icon fa fa-envelope"></i>
                <span class="app-menu__label">Кўрсатма хатлари</span>
            </a>
        </li>
        <li>
            <a class="app-menu__item" href="#">
                <i class="app-menu__icon fa fa-table"></i>
                <span class="app-menu__label">Дастлабки қарор</span>
            </a>
        </li>
        <li>
            <a class="app-menu__item" href="#">
                <i class="app-menu__icon fa fa-indent"></i>
                <span class="app-menu__label">Справочник</span>
            </a>
        </li>
    </ul>
</aside>

<%--todo Асосий----------------------------------------------------қисми------------------------дан--%>
<main class="app-content">
    <div class="col-md-12" id="MainContent" style="padding: 0">
        <%--todo страницаларни чақириш жойи--%>
    </div>
</main>
<%--todo Асосий----------------------------------------------------қисми------------------------гача--%>

<%--todo Страницалар учун умумий script - лар (яна қўшишлиши мумкин) --- дан--%>
<%--<script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>--%>
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap-select.js"></script>

<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
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
<%--todo Страницалар учун умумий script - лар (яна қўшишлиши мумкин) --- гача--%>

<%--todo Страницаларни чақириш script командалари --- дан--%>
<script>
    $(document).ready(function () {
        var dataS = {
            "x": '0',
            "y": '0'
        };
        var tipform = '';
        tipform = "..${pageContext.request.contextPath}/resources/pages/ClassProduct/ListClassProduct.jsp";
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

    function Main(x, y) {
        var dataS = {
            "y": y
        };
        var tipform = '';
        switch (x) {
            case 1:
                <%--tipform = "..${pageContext.request.contextPath}/resources/pages/ClassProduct/ClassProduct.jsp";--%>
                tipform = "<%=request.getContextPath()%>/resources/pages/ClassProduct/ClassProduct.jsp";
                break;
            case 2:
                tipform = "<%=request.getContextPath()%>/resources/pages/CostMonitoring/CostMonitoring.jsp";
                break;
            case 3:
                tipform = "<%=request.getContextPath()%>/resources/pages/LogicalControl/LogicalControl.jsp";
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
        $('.selectpicker').selectpicker();
        $('.datepicker').datepicker();
    }
</script>
<%--todo Страницаларни чақириш script командалари --- гача--%>

</body>
</html>
