<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>住小屋--寻找你的小屋</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-submenu.css">

    <link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/leaflet.css" type="text/css">
    <link rel="stylesheet" href="css/map.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" type="text/css" href="fonts/linearicons/style.css">
    <link rel="stylesheet" type="text/css"  href="css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css"  href="css/dropzone.css">
    <link rel="stylesheet" type="text/css"  href="css/slick.css">

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="css/skins/default.css">

    <!-- Favicon icon -->
    

    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,300,700">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="css/ie10-viewport-bug-workaround.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script  src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script  src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>-->
    <script  src="js/html5shiv.min.js"></script>
    <script  src="js/respond.min.js"></script>
   <!-- [endif]-->
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PTNPV7L"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="page_loader"></div>

<!-- Main header start -->
<header class="main-header header-transparent sticky-header">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand logo" href="/text2/index.jsp">
                <img src="img/logos/black-logo.png" alt="logo">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
             
                    <li class="nav-item dropdown">
                       
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                           
                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#"></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="properties-grid-rightside.html"></a></li>
                                    <li><a class="dropdown-item" href="properties-grid-leftside.html"></a></li>
                                    <li><a class="dropdown-item" href="properties-grid-fullwidth.html"></a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#"></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="properties-map-rightside-list.html"></a></li>
                                    <li><a class="dropdown-item" href="properties-map-leftside-list.html"></a></li>
                                    <li><a class="dropdown-item" href="properties-map-rightside-grid.html"></a></li>
                                    <li><a class="dropdown-item" href="properties-map-leftside-grid.html"></a></li>
                                    <li><a class="dropdown-item" href="properties-map-full.html"></a></li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#"></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="properties-details.html"></a></li>
                                    <li><a class="dropdown-item" href="properties-details-2.html"></a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
 					
 					<li class="nav-item dropdown megamenu-li" >
                        <a href="/text2/login.action" class="nav-link">登录</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="/text2/toregisn.action">
                         		 			 注册
                        </a>
             
                    </li>
                   <!--  <li class="nav-item sp">
                        <a href="release-housing.jsp" class="nav-link link-color"><i class="fa fa-plus"></i> 发布房源</a>
                    </li> -->
                </ul>
            </div>
        </nav>
    </div>
</header>
<!-- Main header end -->

<!-- Banner start -->

<form action="/text2/house.action" method="post">


<div class="banner" id="banner">
    <div id="bannerCarousole" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item banner-max-height active">
                <img class="d-block w-100" src="img/banner/banner-1.jpg" alt="banner">
                <div class="carousel-caption banner-slider-inner d-flex h-100 text-center">
                    <div class="carousel-content container">
                        <div class="text-center">
                            <h3 class="text-uppercase">寻找你的小屋</h3>
                            <p>
                                爱生活，爱住房，爱小屋
                            </p>
                            <div class="inline-search-area ml-auto mr-auto d-none d-xl-block d-lg-block">
                                <div class="row">
                                    <div class="col-xl-2 col-lg-2 col-sm-4 col-6 search-col">
                                        <select class="selectpicker search-fields" name="status">
                                            <option>房屋状态</option>
                                            <option value="已凭租">已凭租</option>
                                            <option value="未凭租">未凭租</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-2 col-lg-2 col-sm-4 col-6 search-col">
                                        <select class="selectpicker search-fields" name="type">
                                            <option>所有类型</option>
                                            <option value="公寓">公寓</option>
                                            <option value="酒店">酒店</option>
                                            <option value="餐厅">餐厅</option>
                                            <option value="别墅">别墅</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-2 col-lg-2 col-sm-4 col-6 search-col">
                                        <select class="selectpicker search-fields" name="bedroom" value="1">
                                            <option>卧室</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-2 col-lg-2 col-sm-4 col-6 search-col">
                                        <select class="selectpicker search-fields" name="bashroom" value="1">
                                            <option>浴室</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-2 col-lg-2 col-sm-4 col-6 search-col">
                                        <select class="selectpicker search-fields" name="city" value="常州">
                                            <option >城市</option>
                                            <option value="常州">常州</option>
 											<option value="徐州">徐州</option>
 											<option value="南京">南京</option>
 											<option value="淮安">淮安</option>
 											<option value="南通">南通</option>
 											<option value="宿迁">宿迁</option>
 											<option value="无锡">无锡</option>
 											<option value="扬州">扬州</option>
 											<option value="盐城">盐城</option>
 											<option value="苏州">苏州</option>
 											<option value="泰州">泰州</option>
 											<option value="镇江">镇江</option>
 											<option value="连云港">连云港</option>
                                        </select>
                                    </div>
                                    
                                    <div class="col-xl-2 col-lg-2 col-sm-4 col-6 search-col">
                                    <input  type="hidden" />
                                        <button class="btn button-theme btn-search btn-block">
                                           <a href="/text2/house.action" class="nav-link"><i class="fa fa-search"></i><strong>查询</strong></a>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
       		
       
        </div>
        <a class="carousel-control-prev" href="#bannerCarousole" role="button" data-slide="prev">
            <span class="slider-mover-left" aria-hidden="true">
                <i class="fa fa-angle-left"></i>
            </span>
        </a>
        <a class="carousel-control-next" href="#bannerCarousole" role="button" data-slide="next">
            <span class="slider-mover-right" aria-hidden="true">
                <i class="fa fa-angle-right"></i>
            </span>
        </a>
    </div>
    
    
    
    
    
    
    
    
    
    <div class="container search-options-btn-area">
        <a class="search-options-btn d-lg-none d-xl-none">
            <div class="search-options d-none d-xl-block d-lg-block">搜索选项</div>
            <div class="icon"><i class="fa fa-chevron-up"></i></div>
        </a>
    </div>
</div>

</form>
<!-- Banner end -->



<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script  src="js/bootstrap-submenu.js"></script>
<script  src="js/rangeslider.js"></script>
<script  src="js/jquery.mb.YTPlayer.js"></script>
<script  src="js/bootstrap-select.min.js"></script>
<script  src="js/jquery.easing.1.3.js"></script>
<script  src="js/jquery.scrollUp.js"></script>
<script  src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script  src="js/leaflet.js"></script>
<script  src="js/leaflet-providers.js"></script>
<script  src="js/leaflet.markercluster.js"></script>
<script  src="js/dropzone.js"></script>
<script  src="js/slick.min.js"></script>
<script  src="js/jquery.filterizr.js"></script>
<script  src="js/jquery.magnific-popup.min.js"></script>
<script  src="js/jquery.countdown.js"></script>
<script  src="js/maps.js"></script>
<script  src="js/app.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script  src="js/ie10-viewport-bug-workaround.js"></script>
<!-- Custom javascript -->
<script  src="js/ie10-viewport-bug-workaround.js"></script>
<script type="text/javascript">
$('.selectpicker').selectpicker({
	noneSelectedText: '',
    noneResultsText: '',
    liveSearch: true,
    size:20   //设置select高度，同时显示20个值
});
</script>
</body>
</html>