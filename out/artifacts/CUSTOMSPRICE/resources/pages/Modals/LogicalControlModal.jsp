<html>
<head>
    <style>
        .fieldsetC2 {
            /*border: 1px dashed #d3e9fc;*/
            border: 1px dashed #fff;
        }

        .fieldsetC2:hover {
            /*border: 1px dashed #8ac7fa;*/
            border: 1px dashed #d3e9fc;
        }

        .btn.btn-icon {
            width: 40px;
            height: 40px;
            padding: 0;
            border-radius: 50%;
            font-size: 18px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body>

<div class="modal-dialog modal-lg" role="document">
    <div class="modal-content shadow-lg">
        <div class="modal-header bg-light p-2">
            <h5 class="modal-title text-center" id="exampleModalLiveLabel">Mantiqiy nazorat tasnifi</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" class="btn btn-icon btn-outline-secondary has-ripple" data-dismiss="modal" aria-label="Close" title="Bekor qilish">
                <i class="fa fa-close"></i>
                <span class="ripple ripple-animate"></span>
            </button></span></button>
        </div>
        <div class="modal-body p-2">

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <fieldset class="fieldsetC2">

                        <div class="card shadow-sm">
                            <div class="card-header p-1">
                                <h5 class="text-c-primary">Бўлим</h5>
                            </div>
                            <div class="card-body p-1">
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="1" class=""></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <div class="row hPx-250">
                                                <div class="col-md-12 col-sm-6 img-fluid d-block w-100 pr-1">
                                                    <div class="box-shadow p-2">
                                                        <div class="card-body social-iconNew p-0 f-36">
                                                            <i class="fa-duotone fa-map-location text-c-blue"></i>
                                                        </div>
                                                        <h6 class="text-muted text-center">Yuk jonatuvchi davlat uchun ushbu davlat noodatiy xisoblanadi</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="row hPx-250">
                                                <div class="col-md-12 col-sm-6 img-fluid d-block w-100 pr-1">
                                                    <div class="box-shadow p-2">
                                                        <div class="card-body social-iconNew p-0 f-36">
                                                            <i class="fa-duotone fa-money-check-pen text-c-blue"></i>
                                                        </div>
                                                        <h6 class="text-muted text-center">Ushbu sug'urtalovchi kompaniya bilan ishlayotgan transport vositalari surunkali ravishta bojxona qonun
                                                            xujjatlarini buzib kelmoqda</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev" <%--style="background-color:#fbfcff;"--%>>
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next" <%--style="background-color:#fbfcff;"--%>>
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="card mb-0 shadow-sm">
                            <div class="dt-responsive table-responsive" style="height:100%;">
                            </div>
<!-- ------------------------------------------------------- -->
                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                            <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.2.228/pdf.min.js"></script>
                            <style type="text/css">

                                #show-pdf-button {
                                    width: 150px;
                                    display: block;
                                    margin: 20px auto;
                                }

                                #file-to-upload {
                                    display: none;
                                }

                                #pdf-main-container {
                                    width: 400px;
                                    margin: 20px auto;
                                }

                                #pdf-loader {
                                    display: none;
                                    text-align: center;
                                    color: #999999;
                                    font-size: 13px;
                                    line-height: 100px;
                                    height: 100px;
                                }

                                #pdf-contents {
                                    display: none;
                                }

                                #pdf-meta {
                                    overflow: hidden;
                                    margin: 0 0 20px 0;
                                }

                                #pdf-buttons {
                                    float: left;
                                }

                                #page-count-container {
                                    float: right;
                                }

                                #pdf-current-page {
                                    display: inline;
                                }

                                #pdf-total-pages {
                                    display: inline;
                                }

                                #pdf-canvas {
                                    border: 1px solid rgba(0,0,0,0.2);
                                    box-sizing: border-box;
                                }

                                #page-loader {
                                    height: 100px;
                                    line-height: 100px;
                                    text-align: center;
                                    display: none;
                                    color: #999999;
                                    font-size: 13px;
                                }

                            </style>

                            <button id="show-pdf-button">Show PDF</button>

                            <div id="pdf-main-container">
                                <div id="pdf-loader">Loading document ...</div>
                                <div id="pdf-contents">
                                    <div id="pdf-meta">
                                        <div id="pdf-buttons">
                                            <button id="pdf-prev">Previous</button>
                                            <button id="pdf-next">Next</button>
                                        </div>
                                        <div id="page-count-container">Page <div id="pdf-current-page"></div> of <div id="pdf-total-pages"></div></div>
                                    </div>
                                    <canvas id="pdf-canvas" width="400"></canvas>
                                    <div id="page-loader">Loading page ...</div>
                                </div>
                            </div>

                            <script>

                                var _PDF_DOC,
                                    _CURRENT_PAGE,
                                    _TOTAL_PAGES,
                                    _PAGE_RENDERING_IN_PROGRESS = 0,
                                    _CANVAS = document.querySelector('#pdf-canvas');

                                // initialize and load the PDF
                                async function showPDF(pdf_url) {
                                    document.querySelector("#pdf-loader").style.display = 'block';

                                    // get handle of pdf document
                                    try {
                                        _PDF_DOC = await pdfjsLib.getDocument({ url: pdf_url });
                                    }
                                    catch(error) {
                                        alert(error.message);
                                    }

                                    // total pages in pdf
                                    _TOTAL_PAGES = _PDF_DOC.numPages;

                                    // Hide the pdf loader and show pdf container
                                    document.querySelector("#pdf-loader").style.display = 'none';
                                    document.querySelector("#pdf-contents").style.display = 'block';
                                    document.querySelector("#pdf-total-pages").innerHTML = _TOTAL_PAGES;

                                    // show the first page
                                    showPage(1);
                                }

                                // load and render specific page of the PDF
                                async function showPage(page_no) {
                                    _PAGE_RENDERING_IN_PROGRESS = 1;
                                    _CURRENT_PAGE = page_no;

                                    // disable Previous & Next buttons while page is being loaded
                                    document.querySelector("#pdf-next").disabled = true;
                                    document.querySelector("#pdf-prev").disabled = true;

                                    // while page is being rendered hide the canvas and show a loading message
                                    document.querySelector("#pdf-canvas").style.display = 'none';
                                    document.querySelector("#page-loader").style.display = 'block';

                                    // update current page
                                    document.querySelector("#pdf-current-page").innerHTML = page_no;

                                    // get handle of page
                                    try {
                                        var page = await _PDF_DOC.getPage(page_no);
                                    }
                                    catch(error) {
                                        alert(error.message);
                                    }

                                    // original width of the pdf page at scale 1
                                    var pdf_original_width = page.getViewport(1).width;

                                    // as the canvas is of a fixed width we need to adjust the scale of the viewport where page is rendered
                                    var scale_required = _CANVAS.width / pdf_original_width;

                                    // get viewport to render the page at required scale
                                    var viewport = page.getViewport(scale_required);

                                    // set canvas height same as viewport height
                                    _CANVAS.height = viewport.height;

                                    // setting page loader height for smooth experience
                                    document.querySelector("#page-loader").style.height =  _CANVAS.height + 'px';
                                    document.querySelector("#page-loader").style.lineHeight = _CANVAS.height + 'px';

                                    // page is rendered on <canvas> element
                                    var render_context = {
                                        canvasContext: _CANVAS.getContext('2d'),
                                        viewport: viewport
                                    };

                                    // render the page contents in the canvas
                                    try {
                                        await page.render(render_context);
                                    }
                                    catch(error) {
                                        alert(error.message);
                                    }

                                    _PAGE_RENDERING_IN_PROGRESS = 0;

                                    // re-enable Previous & Next buttons
                                    document.querySelector("#pdf-next").disabled = false;
                                    document.querySelector("#pdf-prev").disabled = false;

                                    // show the canvas and hide the page loader
                                    document.querySelector("#pdf-canvas").style.display = 'block';
                                    document.querySelector("#page-loader").style.display = 'none';
                                }

                                // click on "Show PDF" buuton
                                document.querySelector("#show-pdf-button").addEventListener('click', function() {
                                    this.style.display = 'none';
                                    showPDF('https://mozilla.github.io/pdf.js/web/compressed.tracemonkey-pldi-09.pdf');
                                });

                                // click on the "Previous" page button
                                document.querySelector("#pdf-prev").addEventListener('click', function() {
                                    if(_CURRENT_PAGE != 1)
                                        showPage(--_CURRENT_PAGE);
                                });

                                // click on the "Next" page button
                                document.querySelector("#pdf-next").addEventListener('click', function() {
                                    if(_CURRENT_PAGE != _TOTAL_PAGES)
                                        showPage(++_CURRENT_PAGE);
                                });

                            </script>
<!-- ------------------------------------------------ -->
                        </div>

                    </fieldset>
                </div>
            </div>

        </div>

    </div>
</div>


</body>
</html>
