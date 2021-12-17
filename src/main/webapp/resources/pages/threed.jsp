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
<aside class="app-sidebar"  style="background-image: url('/resources/images/archa.gif'); background-repeat: no-repeat; background-position: bottom; background-size: 90%;">
    <ul class="app-menu">
        <li><a class="app-menu__item" href="<%=request.getContextPath()%>/resources/pages/second.jsp"><i class="app-menu__icon fa fa-line-chart"></i><span
                class="app-menu__label">Товарларни тоифалаш</span></a></li>
        <li><a class="app-menu__item"href="<%=request.getContextPath()%>/resources/pages/threed.jsp"><i class="app-menu__icon fa fa-check-square-o"></i><span
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
<main class="app-content" >
    <div class="col-md-12">
        <div class="tile" style=" padding: 0px;">

            <div class="row">
                <div class="col-md-12">
<<<<<<< HEAD
                    <div class="background" style="
                    background-image: url('resources/images/gtk_image2.png');
                    width: 900px;
                    height: 1000px;
                    position: fixed;
                    right: 45px;
                    filter: grayscale(1);
                    background-size: contain;
                    background-position: 180px 50%;
                    background-repeat: no-repeat;
                    opacity: 0.3;
                "></div>
=======
>>>>>>> origin/master
                    <div class="col">
                        <h3>Божхона қиймати мониторинги</h3>
                        <form method="">
                            <div class="row">
                                <div class="form-group" style="margin-top: 8px;">
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Худудий бошқарма</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="fa fa-search"></i></span>
                                            <select class="selectpicker form-control">
                                                <option>A really long option to push the menu over the edget</option>
                                                <option>A really long option to push the menu over the edget</option>
                                                <option>A really long option to push the menu over the edget</option>
                                                <option>A really long option to push the menu over the edget</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Пост</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="fa fa-search"></i></span>
                                            <select class="selectpicker form-control">
                                                <option>A really long option to push the menu over the edget</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Жўнатувчи мамлакат</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="fa fa-search"></i></span>
                                            <select class="selectpicker form-control">
                                                <option>A really long option to push the menu over the edget</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Келиб чиқиш мамлакати</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="fa fa-search"></i></span>
                                            <select class="selectpicker form-control">
                                                <option>A really long option to push the menu over the edget</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Савдо қилувчи мамлакат</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="fa fa-search"></i></span>
                                            <select class="selectpicker form-control">
                                                <option>A really long option to push the menu over the edget</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Транспорт тури</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                            <select class="selectpicker form-control">
                                                <option>A really long option to push the menu over the edget</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Товар коди</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                            <select class="selectpicker form-control">
                                                <option>A really long option to push the menu over the edget</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">БЮД рақами</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                            <select class="selectpicker form-control">
                                                <option>A really long option to push the menu over the edget</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Чиқиш санаси(дан) </label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                            <input type="date" class=" form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Чиқиш санаси(гача)</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                            <input type="date" class=" form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Усул рақами</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                            <select class="selectpicker form-control">
                                                <option>A really long option to push the menu over the edget</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <label class="control-label">Режими</label>
                                        <div class="input-group">
                                            <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                            <select class="selectpicker form-control">
                                                <option>A really long option to push the menu over the edget</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 inputGroupContainer">
                                        <br>
                                        <div class="input-group">
                                            <button type="button" class="btn btn-primary"><i class="fa fa-refresh"></i>И з л а ш</button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>


                    <div class="col" style="width: 100%; padding-right: 0px; padding-left: 0px;">
                        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
                        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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
                                color: #ccc;
                            }
                        </style>

                        <span class="searchCount pull-right"></span>
                        <table class="table table-responsive table-bordered results">
                            <thead class="table-dark" style="text-align: center;">
                            <tr>
                                <th>№</th>
                                <th>БЮД рўйхат рақами</th>
                                <th>Режим</th>
                                <th>ТИФ ТН коди</th>
                                <th>
                                    Товар номи</span>
                                    <input type="text" class="searchKey form-control" placeholder="Товар номи бўйича излаш">
                                </th>
                                <th>Нетто</th>
                                <th>Божхона қиймати</th>
                                <th>Ўлчов бирлиги</th>
                                <th>Кел.чиқ мамлакат</th>
                                <th>Юк.жўн мамлакат </th>
                                <th>Сав.қил мамлакат</th>
                                <th>Тран. тури</th>
                                <th>Валюта</th>
                                <th>Усул</th>
                                <th>Божхона қиймати</th>
                                <th colspan="2">Божхона индекси</th>
                            <tr class="warning no-result">
                                <td colspan="17" style="background-color: red;"><i class="fa fa-warning"></i> Сиз киритган маълумот бўйича хечнима топилмади!</td>
                            </tr>
                            </tr>
                            </thead>
                            <tbody style="text-align: left;">
                            <tr>
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
                            $(document).ready(function() {

                                $(".searchKey").keyup(function() {
                                    var searchTerm = $(".searchKey").val().replace(/["']/g, "");
                                    var arr = searchTerm.split(/(AND|OR)/);
                                    var exprs = createExpr(arr);
                                    var searchSplit = searchTerm.replace(/AND/g, "'):containsiAND('").replace(/OR/g, "'):containsiOR('");

                                    $.extend($.expr[':'], {
                                        'containsiAND': function(element, i, match, array) {
                                            return (element.textContent || element.innerText || '').toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
                                        }
                                    });

                                    $('.results tbody tr').attr('visible', 'false');
                                    for (var expr in exprs) {
                                        $(".results tbody tr" + exprs[expr]).each(function(e) {
                                            $(this).attr('visible', 'true');
                                        });
                                    }

                                    var searchCount = $('.results tbody tr[visible="true"]').length;

                                    $('.searchCount').text('найдено ' + searchCount + ' человек');
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
</body>
</html>
