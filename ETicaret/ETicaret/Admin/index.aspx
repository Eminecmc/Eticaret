<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ETicaret.Admin.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E.C Admin Panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <link href="/adminTasarim/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <link href="/adminTasarim/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--js-->
    <script src="/adminTasarim/js/jquery-2.1.1.min.js"></script>
    <!--icons-css-->
    <link href="/adminTasarim/css/font-awesome.css" rel="stylesheet" />
    <!--Google Fonts-->
    <link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css' />
    <link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css' />
    <!--static chart-->
    <script src="/adminTasarim/js/Chart.min.js"></script>
    <!--//charts-->
    <!-- geo chart -->
    <script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    <script>window.modernizr || document.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')</script>
    <!--<script src="lib/html5shiv/html5shiv.js"></script>-->
    <!-- Chartinator  -->
    <script src="/adminTasarim/js/chartinator.js"></script>
    <script type="text/javascript">
        jQuery(function ($) {

            var chart3 = $('#geoChart').chartinator({
                tableSel: '.geoChart',

                columns: [{ role: 'tooltip', type: 'string' }],

                colIndexes: [2],

                rows: [
                    ['China - 2021'],
                    ['Colombia - 2021'],
                    ['France - 2021'],
                    ['Italy - 2021'],
                    ['Japan - 2021'],
                    ['Kazakhstan - 2021'],
                    ['Mexico - 2021'],
                    ['Poland - 2021'],
                    ['Russia - 2021'],
                    ['Spain - 2021'],
                    ['Tanzania - 2021'],
                    ['Turkey - 2021']],

                ignoreCol: [2],

                chartType: 'GeoChart',

                chartAspectRatio: 1.5,

                chartZoom: 1.75,

                chartOffset: [-12, 0],

                chartOptions: {

                    width: null,

                    backgroundColor: '#fff',

                    datalessRegionColor: '#F5F5F5',

                    region: 'world',

                    resolution: 'countries',

                    legend: 'none',

                    colorAxis: {

                        colors: ['#679CCA', '#337AB7']
                    },
                    tooltip: {

                        trigger: 'focus',

                        isHtml: true
                    }
                }


            });
        });
    </script>
    <!--geo chart-->

    <!--skycons-icons-->
    <script src="/adminTasarim/js/skycons.js"></script>
    <!--//skycons-icons-->
</head>
<body>
    <form id="form1" runat="server">

        <div class="page-container">
            <div class="left-content">
                <div class="mother-grid-inner">
                    <!--header start here-->
                    <div class="header-main">
                        <div class="header-left">
                            <div class="logo-name">
                                <a href="/Site/index.aspx">
                                    <h1>E.C</h1>
                                    <!--<img id="logo" src="" alt="Logo"/>-->
                                </a>
                            </div>
                            <!--search-box
								<div class="search-box">
									
										<input type="text" placeholder="Arama..." />	
										<input type="submit" value=""/>		 			
									
								</div><!--//end-search-box-->
                            <div class="clearfix"></div>
                        </div>
                        <div class="header-right">
                            <div class="profile_details_left">
                                <!--notifications of menu start -->
                                <ul class="nofitications-dropdown">


                                    <li class="dropdown head-dpdn">
                                        <ul class="dropdown-menu">

                                            <li><a href="#">
                                                <div class="task-info">
                                                    <span class="task-desc">Database update</span><span class="percentage">40%</span>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="progress progress-striped active">
                                                    <div class="bar yellow" style="width: 40%;"></div>
                                                </div>
                                            </a></li>
                                            <li><a href="#">
                                                <div class="task-info">
                                                    <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="progress progress-striped active">
                                                    <div class="bar green" style="width: 90%;"></div>
                                                </div>
                                            </a></li>
                                            <li><a href="#">
                                                <div class="task-info">
                                                    <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="progress progress-striped active">
                                                    <div class="bar red" style="width: 33%;"></div>
                                                </div>
                                            </a></li>
                                            <li><a href="#">
                                                <div class="task-info">
                                                    <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="progress progress-striped active">
                                                    <div class="bar  blue" style="width: 80%;"></div>
                                                </div>
                                            </a></li>
                                            <li>
                                                <div class="notification_bottom">
                                                    <a href="#">See all pending tasks</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <!--notification menu end -->

                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!--heder end here-->
                    <!-- script-for sticky-nav -->
                    <script>
                        $(document).ready(function () {
                            var navoffeset = $(".header-main").offset().top;
                            $(window).scroll(function () {
                                var scrollpos = $(window).scrollTop();
                                if (scrollpos >= navoffeset) {
                                    $(".header-main").addClass("fixed");
                                } else {
                                    $(".header-main").removeClass("fixed");
                                }
                            });

                        });
                    </script>
                    <!-- /script-for sticky-nav -->
                    <!--inner block start here-->
                    <div class="inner-block">
                        <!--market updates updates-->
                        <div class="market-updates">
                            <div class="col-md-4 market-update-gd">
                                <div class="market-update-block clr-block-1">
                                    <div class="col-md-8 market-update-left">
                                        <h3>
                                            <asp:Label ID="toplamUrun" runat="server"></asp:Label>
                                        </h3>
                                        <h4>Toplam Ürün</h4>

                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-file-text-o"></i>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-md-4 market-update-gd">
                                <div class="market-update-block clr-block-2">
                                    <div class="col-md-8 market-update-left">
                                        <h3>
                                            <asp:Label ID="kullaniciSayisi" runat="server"></asp:Label></h3>
                                        <h4>Kullanıcı Sayısı</h4>

                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-eye"></i>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-md-4 market-update-gd">
                                <div class="market-update-block clr-block-3">
                                    <div class="col-md-8 market-update-left">
                                        <h3>
                                            <asp:Label ID="Siparis" runat="server"></asp:Label></h3>
                                        <h4>Sipariş Sayısı  </h4>

                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-envelope-o"></i>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!--market updates end here-->
                        <!--mainpage chit-chating-->
                        <div class="chit-chat-layer1">
                            <div class="col-md-6 chit-chat-layer1-left">
                                <div class="work-progres">
                                    <div class="chit-chat-heading">
                                        Son Kayıt Yapan Kullanıcılar
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Adı</th>
                                                    <th>Soyadı</th>
                                                    <th>Status</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater ID="Listele" runat="server">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%# Eval("UserID")%></td>
                                                            <td><%# Eval("UserAdi")%></td>
                                                            <td><%# Eval("UserSoyadi")%></td>
                                                            <td><span class="label label-success"><%# Eval("Rol")%></span></td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 chit-chat-layer1-rit">
                                <div class="geo-chart">
                                    <section id="charts1" class="charts">
                                        <div class="wrapper-flex">

                                            <table id="myTable" class="geoChart tableChart data-table col-table" style="display: none;">
                                                <caption>Student Nationalities Table</caption>
                                                <tr>
                                                    <th scope="col" data-type="string">Country</th>
                                                    <th scope="col" data-type="number">Number of Students</th>
                                                    <th scope="col" data-role="annotation">Annotation</th>
                                                </tr>
                                                <tr>
                                                    <td>China</td>
                                                    <td align="right">20</td>
                                                    <td align="right">20</td>
                                                </tr>
                                                <tr>
                                                    <td>Colombia</td>
                                                    <td align="right">5</td>
                                                    <td align="right">5</td>
                                                </tr>
                                                <tr>
                                                    <td>France</td>
                                                    <td align="right">3</td>
                                                    <td align="right">3</td>
                                                </tr>
                                                <tr>
                                                    <td>Italy</td>
                                                    <td align="right">1</td>
                                                    <td align="right">1</td>
                                                </tr>
                                                <tr>
                                                    <td>Japan</td>
                                                    <td align="right">18</td>
                                                    <td align="right">18</td>
                                                </tr>
                                                <tr>
                                                    <td>Kazakhstan</td>
                                                    <td align="right">1</td>
                                                    <td align="right">1</td>
                                                </tr>
                                                <tr>
                                                    <td>Mexico</td>
                                                    <td align="right">1</td>
                                                    <td align="right">1</td>
                                                </tr>
                                                <tr>
                                                    <td>Poland</td>
                                                    <td align="right">1</td>
                                                    <td align="right">1</td>
                                                </tr>
                                                <tr>
                                                    <td>Russia</td>
                                                    <td align="right">11</td>
                                                    <td align="right">11</td>
                                                </tr>
                                                <tr>
                                                    <td>Spain</td>
                                                    <td align="right">2</td>
                                                    <td align="right">2</td>
                                                </tr>
                                                <tr>
                                                    <td>Tanzania</td>
                                                    <td align="right">1</td>
                                                    <td align="right">1</td>
                                                </tr>
                                                <tr>
                                                    <td>Turkey</td>
                                                    <td align="right">2</td>
                                                    <td align="right">2</td>
                                                </tr>

                                            </table>

                                            <div class="col geo_main">
                                                <h3 id="geoChartTitle">World Market</h3>
                                                <div id="geoChart" class="chart"></div>
                                            </div>


                                        </div>
                                        <!-- .wrapper-flex -->
                                    </section>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!--main page chit chating end here-->
                        <!--main page chart start here-->
                        <div class="main-page-charts">
                            <div class="main-page-chart-layer1">
                                <div class="col-md-6 chart-layer1-left">
                                    <div class="glocy-chart">
                                        <div class="span-2c">
                                            <h3 class="tlt">Satış Analizi</h3>
                                            <canvas id="bar" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
                                            <script>
                                                var barChartData = {
                                                    labels: ["iPhone", "Macbook", "iMac", "iPad", "Watch", "AirPods"],
                                                    datasets: [
                                                        {
                                                            fillColor: "#FC8213",
                                                            data: [45, 59, 90, 81, 56, 55]
                                                        },
                                                        {
                                                            fillColor: "#337AB7",
                                                            data: [28, 48, 40, 19, 96, 27]
                                                        }
                                                    ]

                                                };
                                                new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);

                                            </script>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 chart-layer1-right">
                                    <div class="climate-grid1">
                                        <div class="climate-gd1-top">
                                            <div class="col-md-6 climate-gd1top-left">
                                                <h4>
                                                    <asp:Label ID="gun" runat="server"></asp:Label>.<asp:Label ID="ay" runat="server"></asp:Label>.<asp:Label ID="yil" runat="server"></asp:Label></h4>
                                                <h3>
                                                    <asp:Label ID="saat" runat="server"></asp:Label>:<asp:Label ID="dakika" runat="server"></asp:Label></h3>
                                               <br />
                                            </div>
                                           <div class="col-md-6 climate-gd1top-right">
                                                <span class="clime-icon">
                                                    <figure class="icons">
                                                        <canvas id="partly-cloudy-day" width="64" height="64"></canvas>
                                                    </figure>
                                                    <script>
                                                        var icons = new Skycons({ "color": "#fff" }),
                                                             list = [
                                                               "clear-night", "partly-cloudy-day",
                                                               "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                                                               "fog"
                                                             ],
                                                             i;

                                                        for (i = list.length; i--;)
                                                            icons.set(list[i], list[i]);

                                                        icons.play();
                                                    </script>
                                                </span>

                                            </div> 
                                            <div class="clearfix"></div>
                                        </div>
                                        <a class="weatherwidget-io" href="https://forecast7.com/tr/40d71n74d01/new-york/" data-label_1="İstanbul" data-theme="original">İstanbul</a>
                                        <script>
                                            !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = 'https://weatherwidget.io/js/widget.min.js'; fjs.parentNode.insertBefore(js, fjs); } }(document, 'script', 'weatherwidget-io-js');
                                        </script>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <!--main page chart layer2-->
                            <script src="/adminTasarim/js/bars.js"></script>
                        </div>

                    </div>
                    <!--inner block end here-->
                    <!--copy rights start here-->
                    <div class="copyrights">
                        <p>Telif Hakkı © 2021 Apple Inc. Tüm hakları saklıdır. <a href="https://www.apple.com/tr/" target="_blank">Apple</a> </p>
                    </div>
                    <!--COPY rights end here-->
                </div>
            </div>

            <!--slider menu-->
            <div class="sidebar-menu">
                <div class="logo">
                    <a href="#" class="sidebar-icon"><span class="fa fa-bars"></span></a><a href="#"><span id="logo"></span>
                        <!--<img id="logo" src="" alt="Logo"/>-->
                    </a>
                </div>
                <div class="menu">
                    <ul id="menu">
                        <li id="menu-home"><a href="index.aspx"><i class="fa fa-tachometer"></i><span>Kontrol Paneli</span></a></li>
                        <li><a href="#"><i class="fa fa-user"></i><span>Kullanıcılar</span><span class="fa fa-angle-right" style="float: right"></span></a>
                            <ul>
                                <li><a href="Kullanıcılar.aspx">Kullanıcı Listele</a></li>

                            </ul>
                        </li>
                        <li id="menu-comunicacao"><a href="#"><i class="fa fa-book nav_icon"></i><span>Ürün</span><span class="fa fa-angle-right" style="float: right"></span></a>
                            <ul id="menu-comunicacao-sub">
                                <li id="menu-mensagens" style="width: 120px"><a href="urunListele.aspx">Ürün Listesi</a></li>
                                <li id="menu-arquivos"><a href="urun.aspx">Ürün Ekle</a></li>

                            </ul>
                        </li>
                        <li><a href="sepet.aspx"><i class="fa fa-shopping-basket"></i><span>Sepet</span></a></li>
                        <li><a href="Kategoriler.aspx"><i class="fa fa-file-text"></i><span>Kategori</span></a>
                        </li>

                        <li><a href="Satisler.aspx"><i class="fa fa-bar-chart"></i><span>Satış</span></a></li>
                        <li><a href="index.aspx"><i class="fa fa-cog"></i><span>Admin</span></a>  </li>
                        <li><a href="/Site/index.aspx"><i class="fa fa-shopping-cart"></i><span>E-Ticaret</span> </a></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!--slide bar menu end here-->
        <script>
            var toggle = true;

            $(".sidebar-icon").click(function () {
                if (toggle) {
                    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
                    $("#menu span").css({ "position": "absolute" });
                }
                else {
                    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
                    setTimeout(function () {
                        $("#menu span").css({ "position": "relative" });
                    }, 400);
                }
                toggle = !toggle;
            });
        </script>
        <!--scrolling js-->
        <script src="/adminTasarim/js/jquery.nicescroll.js"></script>
        <script src="/adminTasarim/js/scripts.js"></script>
        <!--//scrolling js-->
        <script src="/adminTasarim/js/bootstrap.js"> </script>
        <!-- mother grid end here-->




    </form>
</body>
</html>
