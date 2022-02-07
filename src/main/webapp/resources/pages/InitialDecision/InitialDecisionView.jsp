<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06.02.2022
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<div class="">
    <div class="page-title">
        <div class="title_left">
            <!--<h3>Form Wizards</h3>-->
        </div>

        <div class="title_right">
            <div class="col-md-5 col-sm-5  form-group row pull-right top_search">
                <!--<div class="input-group">
                  <input type="text" class="form-control" placeholder="Search for...">
                  <span class="input-group-btn">
                      <button class="btn btn-secondary" type="button">Go!</button>
                  </span>
                </div>-->
            </div>
        </div>
    </div>
    <div class="clearfix"></div>

    <div class="row">

        <div class="col-md-12 col-sm-12 ">
            <div class="x_panel bg-light">
                <div class="x_title">
                    <h4>
                        <i class="fa fa-edit"></i>АРИЗА
                        <small>№:01-10/0012</small>
                    </h4>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">


                    <!-- Smart Wizard -->

                    <div class="col-md-12">
                        <div class="shadow p-3 mb-5 bg-white rounded x_panel">
                            <div class="x_title collapse-link">
                                <h2 >Ариза бўйича дастлабки маълумот<!--<small>Sample user invoice design</small>--></h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link ml-5"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content " style="display: none;">

                                <section class="content invoice">
                                    <!-- info row -->
                                    <div class="row invoice-info">
                                        <div class="col-sm-3 invoice-col">
                                            <address>
                                                <strong><i class="fa fa-user mr-2"></i>Аризачи:</strong>
                                                <br><strong><i class="fa fa-phone mr-2"></i>Телефон рақами:</strong>
                                                <br><strong><i class="fa fa-barcode mr-2"></i>ТИФ ТН коди:</strong>
                                                <br><strong><i class="fa fa-money mr-2"></i>Фактура қиймати</strong>

                                            </address>
                                        </div>
                                        <!-- /.col -->
                                        <div class="col-sm-3 invoice-col">
                                            <address>
                                                <i>Абдуллаев Сарвар Ботирович
                                                    <br>+998 (90) 888 88 88
                                                    <br>2202 10 000 0
                                                    <br>3 250 АҚШ доллари</i>
                                            </address>
                                        </div>
                                        <!-- /.col -->
                                        <div class="col-sm-3 invoice-col">
                                            <address>
                                                <strong><i class="fa fa-delicious mr-2"></i>Ўлчов бирлигидаги миқдори:</strong>
                                                <br><strong><i class="fa fa-balance-scale mr-2"></i>Нетто оғирлиги:</strong>
                                                <br><strong><i class="fa fa-balance-scale mr-2"></i>Брутто оғирлиги:</strong>
                                                <br><strong><i class="fa fa-money mr-2"></i>Бир бирлик нархи:</strong>
                                            </address>
                                        </div>
                                        <!-- /.col -->
                                        <div class="col-sm-3 invoice-col">
                                            <address>
                                                <i>1 2000 та</strong><a href="#"><i class="fa fa-calculator fa-2x" data-toggle="modal" data-target="#exampleModal12" style="margin-left: 65%"></i></a>
                                                    <br>1 500 кг
                                                    <br>1 450 кг
                                                    <br><mark>0,6 АҚШ доллари</mark></i>
                                            </address>
                                        </div>
                                        <!-- /.col -->
                                    </div>
                                    <!-- Modal Calculator -->

                                    <!-- Modal -->
                                    <div class="modal fade bd-example-modal-lg" id="exampleModal12" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered" style="min-width: 85%;" role="document">

                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModal12">Божхона қиймати индекси бўйича хавф даражаси</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="col-md-12">

                                                        <table class="table table-bordered">
                                                            <thead class="text-center">
                                                            <tr >
                                                                <th rowspan="2" style="vertical-align: middle">№</th>
                                                                <th rowspan="2" style="vertical-align: middle">Товар рақами</th>
                                                                <th rowspan="2" style="vertical-align: middle">Савдо қилувчи мамлакат</th>
                                                                <th rowspan="2" style="vertical-align: middle">Транспорт</th>
                                                                <th rowspan="2" style="vertical-align: middle">Жўнатувчи мамлакат</th>
                                                                <th rowspan="2" style="vertical-align: middle">ТИФ ТН коди</th>
                                                                <th rowspan="2" style="vertical-align: middle">Келиб чиқиш мамлакати</th>
                                                                <th rowspan="2" style="vertical-align: middle">Товар вазни</th>
                                                                <th rowspan="2" style="vertical-align: middle">Товар миқдори</th>
                                                                <th rowspan="2" style="vertical-align: middle">Ўлчов бирлиги</th>
                                                                <th rowspan="2" style="vertical-align: middle">Божхона қиймати($)</th>
                                                                <th rowspan="2" style="vertical-align: middle">Божхона қиймати(кг $)</th>
                                                                <th colspan="3" style="vertical-align: middle">Божхона қиймати индекси($)</th>
                                                            </tr>
                                                            <tr>
                                                                <th class="bg-success">Минимал</th>
                                                                <th class="bg-warning">Ўрта</th>
                                                                <th class="bg-danger">Максимал</th>
                                                            </tr>

                                                            </thead>
                                                            <tbody>
                                                            <tr>
                                                                <th scope="row">1</th>
                                                                <td>1</td>
                                                                <td>410</td>
                                                                <td>410</td>
                                                                <td>30</td>
                                                                <td>8431492000</td>
                                                                <td>000</td>
                                                                <td>210.00</td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>653.10</td>
                                                                <td>3.11</td>
                                                                <td class="bg-success">3.11</td>
                                                                <td class="bg-warning">3.49</td>
                                                                <td class="bg-danger">4.97</td>

                                                            </tr>
                                                            <tr>
                                                                <th scope="row">1</th>
                                                                <td>4</td>
                                                                <td>792</td>
                                                                <td>792</td>
                                                                <td>40</td>
                                                                <td>8431472000</td>
                                                                <td>000</td>
                                                                <td>130.00</td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>640.10</td>
                                                                <td>2.55</td>
                                                                <td class="bg-success">2.55</td>
                                                                <td class="bg-warning">3.22</td>
                                                                <td class="bg-danger">4.22</td>

                                                            </tr>
                                                            </tbody>
                                                        </table>

                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Ёпиш</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- endmodal-->
                                </section>
                            </div>
                        </div>
                    </div>


                    <div id="wizard" class="form_wizard wizard_horizontal">
                        <ul class="wizard_steps">
                            <li>
                                <a href="#step-1">
                                    <span class="step_no">1</span>
                                    <span class="step_descr">
								 Умумий маълумотлар<br />
							</span>
                                </a>
                            </li>
                            <li>
                                <a href="#step-2">
                                    <span class="step_no">2</span>
                                    <span class="step_descr">
								  Товар таснифи<br />
							</span>
                                </a>
                            </li>
                            <li>
                                <a href="#step-3">
                                    <span class="step_no">3</span>
                                    <span class="step_descr">
								  Юк-кузатув ҳужжатлари<br />
							 </span>
                                </a>
                            </li>
                            <li>
                                <a href="#step-4">
                                    <span class="step_no">4</span>
                                    <span class="step_descr">
								  Ариза бўйича қарор<br />
							</span>
                                </a>
                            </li>
                        </ul>
                        <div id="step-1">
                            <div class="col-md-12">
                                <div class="shadow p-3 mb-5 bg-white rounded  x_panel">
                                    <div class="x_title collapse-link">
                                        <h2>Умумий маълумотлар <small>1-қадам</small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link ml-5"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <br>
                                        <div class="col-md-4 col-sm-6  form-group has-feedback">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-barcode fa-lg mr-2"></i><b>ТИФ ТН коди:</b> 2202 10 000 0</h6>
                                        </div>

                                        <div class="col-md-8 col-sm-6  form-group has-feedback">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-dropbox fa-lg mr-2"></i><b>Товар номи:</b> воды, включая минеральные и газированные, содержащие добавки сахара или других подслащивающих или вкусо-ароматических веществ</h6>
                                        </div>

                                        <div class="col-md-4 col-sm-6  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-flag-checkered fa-lg mr-2"></i><b>Юк жўнатувчи:</b> Россия</h6>
                                        </div>

                                        <div class="col-md-8 col-sm-6  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-building fa-lg mr-2"></i><b>Юк жўнатувчи номи:</b> «КУБАНСКАЯ КАРТОНАЖНАЯ ФАБРИКА АГ»</h6>
                                        </div>

                                        <div class="col-md-4 col-sm-6  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-flag-o fa-lg mr-2"></i><b>Сотувчи:</b> Қозоғистон</h6>
                                        </div>

                                        <div class="col-md-8 col-sm-6  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-building fa-lg mr-2"></i><b>Сотувчи номи:</b> АО "АзияАгроФуд" (AAFD)</h6>
                                        </div>

                                        <div class="col-md-4 col-sm-6  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-flag fa-lg mr-2"></i><b>Ишлаб чиқарувчи:</b> Хитой</h6>
                                        </div>

                                        <div class="col-md-8 col-sm-6  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-building fa-lg mr-2"></i><b>Ишлаб чиқарувчи номи:</b>  Artka Mary Ching Wingfree Septwolves Me&City Haoduoyi Catasy Anta</h6>
                                        </div>

                                        <div class="col-md-4 col-sm-6  form-group has-feedback mt-4">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-truck fa-lg mr-2"></i><b>Транспорт харажатлари:</b> 500 $<i class="fa fa-info-circle ml-4 fa-lg" data-toggle="modal" data-target="#exampleModalCenter"></i></h6>
                                        </div>

                                        <div class="col-md-4 col-sm-6  form-group has-feedback mt-4">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Илгари берилган дастлабки қарор:</b> ДҚ-0123301.01.2022</h6>
                                        </div>

                                        <div class="col-md-4 col-sm-6  form-group has-feedback mt-4">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Илгари б.ТИФ ТН бўй.дастл.қарор:</b> ДҚ-0123301.01.2022</h6>
                                        </div>

                                        <!-- Транспорт тури Modal -->
                                        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLongTitle">Транспорт харакати йўналиши ва харажатлари</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">

                                                        <div class="col-md-12">

                                                            <div class="table-responsive">
                                                                <table class="table">
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Бошлағич пункт</th>
                                                                        <th>Тугаш пункти</th>
                                                                        <th>Транспорт тури</th>
                                                                        <th>Ҳаражатлар</th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <th>Россия</th>
                                                                        <td>Қозоғистон</td>
                                                                        <td><i class="fa fa-subway fa-2x mr-3"></i>20 - ЖД</td>
                                                                        <td>120 $</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Қозоғистон</th>
                                                                        <td>Ўзбекистон</td>
                                                                        <td><i class="fa fa-truck fa-2x mr-3"></i>30- АВТО</td>
                                                                        <td>380 $</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th></th>
                                                                        <td></td>
                                                                        <td></td>
                                                                        <td>Жами: 500 $</td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Ёпиш</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Транспорт тури Modal end -->
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div id="step-2">
                            <div class="col-md-12">
                                <div class="shadow p-3 mb-5 bg-white rounded x_panel">
                                    <div class="x_title collapse-link">
                                        <h2>Товар таснифи<small>2-қадам</small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link ml-5"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <br>
                                        <div class="col-md-3 col-sm-3  form-group has-feedback">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Тижорат номи:</b> Газли ичимлик</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Савдо белгиси:</b> Coca Cola</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Маркаси:</b> Coca Cola</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Модели:</b> Sprite</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Артикули:</b> 1,5 l plastic bottle</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Нави:</b> Шакарсиз</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Стандарти:</b> ISO:27001</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-text-o fa-lg mr-2"></i><b>Фойдаланиш мақсади:</b>  Истеъмол қилиш</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Тижорат хусусияти:</b> Чакана</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Техник хусусияти:</b> 42 ккал</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Ўрам тури:</b> қоғоз қути</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Ўрамлар сони:</b> 1x6</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Юк жойлари сони:</b> 12 000</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Етказиб бериш шарти:</b> CIP-Ташкент</h6>
                                        </div>

                                        <div class="col-md-3 col-sm-3  form-group has-feedback mt-3">
                                            <h6 style="border-bottom: 1px solid green"><i class="fa fa-file-o fa-lg mr-2"></i><b>Усул:</b> 1-усул<i class="fa fa-info-circle ml-4 fa-lg" data-toggle="modal" data-target=".bd-example-modal-sm"></i></h6>
                                        </div>

                                        <div class="col-md-12 col-sm-3  form-group has-feedback mt-3">
                                            <textarea readonly id="message" required="required"  placeholder="Қўшимча маълумотлар " class="form-control" name="message" ></textarea>
                                        </div>

                                        <!-- Усул тури Modal -->
                                        <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLongTitle">Танланган усулдан олдинги усулни қўлламаслик сабаблари</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">

                                                        <div class="col-md-12">

                                                            <div class="table-responsive">
                                                                <table class="table">
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Божхона қийматини аниқлаш усули</th>
                                                                        <th>Аввалги усулларни қўлламаслик сабаблари</th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td>Олиб кириладиган товарга доир битимнинг қиймати бўйича</td>
                                                                        <td>Жўнатувчи мамлакатнинг экспорт божхона юк декларацияси мавжуд эмас</td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <!-- Усул тури Modal end -->
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div id="step-3">
                            <div class="col-md-12 col-sm-12">
                                <div class="shadow p-3 mb-5 bg-white rounded x_panel">
                                    <div class="x_title collapse-link">
                                        <h2>Товарнинг юк-кузатув хужжатлари<small>3-қадам</small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link ml-5"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="x_content">

                                        <div class="table-responsive">
                                            <table class="table table-striped jambo_table bulk_action">
                                                <thead>
                                                <tr class="headings">

                                                    <th class="column-title">№ </th>
                                                    <th class="column-title">Хужжат тури</th>
                                                    <th class="column-title">Хужжат рақами</th>
                                                    <th class="column-title">Хужжат санаси</th>
                                                    <th class="column-title">Хужжат файли</th>
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
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="step-4">
                            <div class="col-md-12">
                                <div class="shadow p-3 mb-5 bg-white rounded x_panel" style="min-height: 500px; height: auto">
                                    <div class="x_title collapse-link">
                                        <h2>Ариза бўйича қарор<small>4-қадам</small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link ml-5"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>

                                    <!-- Bordered tabs-->
                                    <ul id="myTab1" role="tablist" class="nav nav-tabs nav-pills with-arrow flex-column flex-sm-row text-center">
                                        <li class="nav-item flex-sm-fill">
                                            <a id="home1-tab" data-toggle="tab" href="#home1" role="tab" aria-controls="home1" aria-selected="true" class="nav-link text-uppercase font-weight-normal mr-sm-3 rounded-0 border active">Дастлабки қарор қабул қилиш</a>
                                        </li>
                                        <li class="nav-item flex-sm-fill">
                                            <a id="profile1-tab" data-toggle="tab" href="#profile1" role="tab" aria-controls="profile1" aria-selected="false" class="nav-link text-uppercase font-weight-normal mr-sm-3 rounded-0 border">Аризани қайтариш</a>
                                        </li>
                                        <li class="nav-item flex-sm-fill">
                                            <a id="contact1-tab" data-toggle="tab" href="#contact1" role="tab" aria-controls="contact1" aria-selected="false" class="nav-link text-uppercase font-weight-normal rounded-0 border">Аризани тузатиш учун қайтариш</a>
                                        </li>
                                    </ul>
                                    <div id="myTab1Content" class="tab-content">
                                        <div id="home1" role="tabpanel" aria-labelledby="home-tab" class="tab-pane fade py-4 show active">
                                            <h4>Божхона тўловлари ва йиғимлари тўғрисида маълумот</h4>
                                            <!-- -->
                                            <div ng-app="MyApp" ng-controller="MyController">

                                                <div class="form-row">
                                                    <div class="form-group col-md-2">
                                                        <select type="text" ng-model="FirstName" class="form-control" placeholder="First Name" aria-label="FirstName" aria-describedby="basic-addon1">
                                                            <option value="" disabled selected>Тўлов турини танланг</option>
                                                            <option>10</option>
                                                            <option>29</option>
                                                            <option>30</option>
                                                            <option>41</option>
                                                            <option>77</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-2">
                                                        <input type="number" ng-model="LastName" class="form-control" placeholder="Хисоблаш асосинин киритинг" aria-label="LastName" aria-describedby="inputGroup-sizing-default">
                                                    </div>
                                                    <div class="form-group col-md-2">
                                                        <input type="number" ng-model="University" class="form-control" placeholder="Ставкани критинг" aria-label="University" aria-describedby="basic-addon1">
                                                    </div>
                                                    <div class="form-group col-md-2">
                                                        <input type="text" ng-model="Branch" placeholder="Миқдори" disabled="disabled" class="form-control" aria-label="Branch" id="inputBranch">
                                                    </div>
                                                    <div class="form-group col-md-2">
                                                        <select type="text" ng-model="City" placeholder="ТШ" class="form-control" aria-label="City" id="inputCity">
                                                            <option value="" disabled selected>Тўлов турини танланг</option>
                                                            <option>БН</option>
                                                            <option>ОО</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-2">
                                                        <input class="btn btn-success btn-block" type="button" ng-click="Add()" value="Қўшиш" /></td>
                                                    </div>
                                                </div>
                                                <table class="table table-hover table-bordered table-sm">
                                                    <tr>
                                                        <th scope="col">Тури</th>
                                                        <th scope="col">Божхона тўловларини хисоблаш учун асос</th>
                                                        <th scope="col">Ставка</th>
                                                        <th scope="col">Тўлов миқдори</th>
                                                        <th scope="col">ТШ</th>
                                                        <th></th>
                                                    </tr>
                                                    <form method="">
                                                        <tbody ng-repeat="m in Students">
                                                        <tr>
                                                            <td scope="row">{{m.FirstName}}</td>
                                                            <td>{{m.LastName}}</td>
                                                            <td>{{m.University}}</td>
                                                            <td>{{m.Branch}}</td>
                                                            <td>{{m.City}}</td>
                                                            <td><input class="btn btn-danger btn-sm" type="button" ng-click="Remove($index)" value="Ўчириш" /></td>
                                                        </tr>
                                                        </tbody>
                                                    </form>
                                                </table>
                                            </div>
                                            <button type="button" class="btn btn-success">Жўнатиш</button>

                                            <!-- -->

                                        </div>
                                        <div id="profile1" role="tabpanel" aria-labelledby="profile-tab" class="tab-pane fade py-4">
                                            <!-- Text editor -->
                                            <h4>Аризани қайтариш сабаблари</h4>
                                            <form method="">
                                                <textarea class="resizable_textarea form-control" placeholder="Киритинг... " style="height: 150px; max-height: 300px;"></textarea>
                                            </form>
                                            <button type="button" class="btn btn-success mt-3">Жўнатиш</button>
                                            <!-- Text editor end-->
                                        </div>
                                        <div id="contact1" role="tabpanel" aria-labelledby="contact-tab" class="tab-pane fade py-4">
                                            <!-- Text editor -->
                                            <h4>Аризани қайтариш сабаблари ва тузатиш киритиладиган бўлимлар</h4>
                                            <form method="">
                                                <textarea class="resizable_textarea form-control" placeholder="Киритинг... " style="height: 150px; max-height: 300px;"></textarea>
                                            </form>
                                            <button type="button" class="btn btn-success mt-3">Жўнатиш</button>
                                            <!-- Text editor end-->
                                        </div>
                                    </div>
                                    <!-- End bordered tabs -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End SmartWizard Content -->
                </div>
            </div>
        </div>
    </div>
</div>

