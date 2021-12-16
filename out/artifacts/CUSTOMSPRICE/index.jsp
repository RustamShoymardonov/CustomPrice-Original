<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 15.12.2021
  Time: 16:51
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
    <title>Божхона қиймати | Асосий сахифа</title>
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <!-- Main CSS-->
    <link href="resources/css/main.css" rel="stylesheet" type="text/css">
    <!-- Font-icon css-->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
</head>
<body class="app sidebar-mini">
<!-- Navbar-->
<header class="app-header">
    <!-- Sidebar toggle button--><a aria-label="Hide Sidebar" class="app-sidebar__toggle" data-toggle="sidebar"
                                    href="#"></a>
    <!-- Navbar Right Menu--><a class="app-header__logo" href="index.jsp">Божхона қиймати</a>
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
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"  ></div>
<aside class="app-sidebar"  style="background-image: url('resources/images/archa.gif'); background-repeat: no-repeat; background-position: bottom; background-size: 90%;">
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
            <div class="table-responsive"
                 style="background: url('resources/images/gtk_image2.png'); background-repeat: no-repeat; background-size: absolute; background-position: 65rem 10rem;">
                <div class="list-group col-lg-6">
                    <h3 class="list-group-item border-0" style="color:#0069C1; font-size: 24px">Тоифалаш турлари</h3>
                    <hr color="#0069C1" size="50" width="100%"/>
                    <a class="list-group-item list-group-item-action border-0" href="#">Божхона қийматини ўзгартириш</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Божхона қийматини ўзгартириш
                        (ишлаб чиқарувчи давлат кесимида)</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Товарлар индекси (худудлар
                        кесимида)</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Жўнатувчи мамлакат илк
                        маротабан</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Ташувчи транспорт тури илк
                        маротаба</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Қўшимча ўлчов бирлиги илк
                        маротаба</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Брутто ва нетто вазнидаги
                        тафовут</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Ишлаб чиқарувчи мамлакат илк
                        маротаба</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">ТИФ ТН кодга нисбатан товар
                        маркаси илк маротаба</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Товар оғирлиги қўшимча ўлчов
                        бирлигига нисбатан ноодатий</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Товар нархи ўзининг хомашёсига
                        нисбатан паст</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Импорт факти тўлов шакли
                        нисбатан юқори</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">Товар позициясининг ўзтача
                        қийматига нисбатан паст индекс</a>
                    <a class="list-group-item list-group-item-action border-0" href="#">ТИФ ТН га нисбатан биринчи
                        маротаба имтиёз олиш</a>
                </div>
                <div class=" list group col-lg-6">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-3">
                <div class="widget-small primary coloured-icon"><i class="icon fa fa-users fa-3x"></i>
                    <div class="info">
                        <h4>Users</h4>
                        <p><b>5</b></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="widget-small info coloured-icon"><i class="icon fa fa-thumbs-o-up fa-3x"></i>
                    <div class="info">
                        <h4>Likes</h4>
                        <p><b>25</b></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="widget-small warning coloured-icon"><i class="icon fa fa-files-o fa-3x"></i>
                    <div class="info">
                        <h4>Uploades</h4>
                        <p><b>10</b></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="widget-small danger coloured-icon"><i class="icon fa fa-star fa-3x"></i>
                    <div class="info">
                        <h4>Stars</h4>
                        <p><b>500</b></p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</main>
<script>

    2
    3
    4
    5
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    21
    22
    23
    24
    25
    26
    27
    28
    29
    30
    31
    32
    33
    34
    35
    36
    37
    38
    39
    40
    41
    42
    43
    44
    45
    46
    47
    48
    49
    50
    51
    52
    53
    54
    55
    56
    57
    58
    59
    60
    61
    62
    63
    64
    65
    66
    67
    68
    69
    70
    71
    72
    73
    74
    75
    76
    77
    78
    79
    80
    81
    82
    83
    84
    85
    86
    87
    88
    89
    90
    91
    92
    93
    ////////////////////////
    ///////// Настройки
    ////////////////////////

    // количество снежинок, которое будет на экране одновременно.
    let snowmax=40

    // Цвета для снежинок. Для каждой конкретной снежинки цвет выбирается случайно из этого массива.
    let snowcolor=new Array("#b9dff5","#7fc7ff","#7fb1ff","#7fc7ff","#b9dff5")

    // Шрифт для снежинок
    let snowtype=new Array("Times")

    // Символ (*) и есть снежинка, в место нее можно вставить любой другой символ.
    let snowletter="&#10052;"

    // Скорость движения снежинок (от 0.3 до 2)
    let sinkspeed=0.4

    // Максимальный размер для снежинок
    let snowmaxsize=40

    // Минимальный размер для снежинок
    let snowminsize=10

    // Зона для снежинок
    // 1 для всей страницы, 2 в левой части страницы
    // 3 в центральной части, 4 в правой части страницы
    let snowingzone=1

    ////////////////////////
    ///////// Конец настроек
    ////////////////////////

    let snow=new Array()
    let marginbottom
    let marginright
    let timer
    let i_snow=0
    let x_mv=new Array();
    let crds=new Array();
    let lftrght=new Array();
    function randommaker(range) {
        rand=Math.floor(range*Math.random())
        return rand
    }
    function initsnow() {
        marginbottom = document.documentElement.clientHeight+50
        marginright = document.body.clientWidth-15
        let snowsizerange=snowmaxsize-snowminsize
        for (i=0;i<=snowmax;i++) {
            crds[i] = 0;
            lftrght[i] = Math.random()*15;
            x_mv[i] = 0.03 + Math.random()/10;
            snow[i]=document.getElementById("s"+i)
            snow[i].style.fontFamily=snowtype[randommaker(snowtype.length)]
            snow[i].size=randommaker(snowsizerange)+snowminsize
            snow[i].style.fontSize=snow[i].size+'px';
            snow[i].style.color=snowcolor[randommaker(snowcolor.length)]
            snow[i].style.zIndex=1000
            snow[i].sink=sinkspeed*snow[i].size/5
            if (snowingzone==1) {snow[i].posx=randommaker(marginright-snow[i].size)}
            if (snowingzone==2) {snow[i].posx=randommaker(marginright/2-snow[i].size)}
            if (snowingzone==3) {snow[i].posx=randommaker(marginright/2-snow[i].size)+marginright/4}
            if (snowingzone==4) {snow[i].posx=randommaker(marginright/2-snow[i].size)+marginright/2}
            snow[i].posy=randommaker(2*marginbottom-marginbottom-2*snow[i].size)
            snow[i].style.left=snow[i].posx+'px';
            snow[i].style.top=snow[i].posy+'px';
        }
        movesnow()
    }
    function movesnow() {
        for (i=0;i<=snowmax;i++) {
            crds[i] += x_mv[i];
            snow[i].posy+=snow[i].sink
            snow[i].style.left=snow[i].posx+lftrght[i]*Math.sin(crds[i])+'px';
            snow[i].style.top=snow[i].posy+'px';

            if (snow[i].posy>=marginbottom-2*snow[i].size || parseInt(snow[i].style.left)>(marginright-3*lftrght[i])){
                if (snowingzone==1) {snow[i].posx=randommaker(marginright-snow[i].size)}
                if (snowingzone==2) {snow[i].posx=randommaker(marginright/2-snow[i].size)}
                if (snowingzone==3) {snow[i].posx=randommaker(marginright/2-snow[i].size)+marginright/4}
                if (snowingzone==4) {snow[i].posx=randommaker(marginright/2-snow[i].size)+marginright/2}
                snow[i].posy=0
            }
        }
        let timer=setTimeout("movesnow()",50)
    }

    for (i=0;i<=snowmax;i++) {
        document.body.insertAdjacentHTML('beforeend', "<span id='s"+i+"' style='user-select:none;position:fixed;top:-"+snowmaxsize+"'>"+snowletter+"</span>")
    }
    window.onload=initsnow
</script>
<!-- Essential javascripts for application to work-->
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="<%=request.getContextPath()%>/resources/js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<script src="<%=request.getContextPath()%>/resources/js/plugins/chart.js" type="text/javascript"></script>
<!-- Google analytics script-->


</body>
</html>
