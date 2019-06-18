<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
   
    <title>我的信息</title>
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
    <!--[if lt IE 9]>
    <script  src="js/html5shiv.min.js"></script>
    <script  src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PTNPV7L"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="page_loader"></div>

<!-- Main header start -->
<header class="main-header header-2 fixed-header">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand logo pad-0" href="index.html">
                <img src="img/logos/black-logo.png" alt="logo">
            </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <div class="navbar-buttons ml-auto d-none d-xl-block d-lg-block">
                    <ul>
                        <li>
                            <div class="dropdown btns">
                                <a  data-toggle="dropdown">
                                    我的账户
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<!-- Main header end -->

<!-- Dashbord start -->
<div class="dashboard">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-12 col-sm-12 col-pad">
                <div class="dashboard-nav d-none d-xl-block d-lg-block">
                    <div class="dashboard-inner">
                      <h4>列表</h4>
                        <ul>
                            <li class="active"><a href="/text2/myapply.action"><i class="flaticon-apartment-1"></i>我的订单</a></li>
                            <li><a href="/text2/hetong/findallhetong.action"><i class="flaticon-bill"></i>我的合同</a></li>
                            <li><a href="/text2/myapply.action"><i class="flaticon-heart"></i>我的收藏</a></li>
                            
                        </ul>
                        <h4>个人中心</h4>
                        <ul>
                            <li><a href="/text2/my-info.jsp"><i class="flaticon-people"></i>我的信息</a></li>
                            <li><a href="/text2/myapply.action"><i class="flaticon-logout"></i>返回</a></li>
                        </ul>
                    </div>
                </div>
            </div>
          <div class="col-lg-9 col-md-12 col-sm-12 col-pad">
            <div class="content-area5">
              <div class="dashboard-content">
                        <div class="dashboard-header clearfix">
                            <div class="row">
                                <div class="col-sm-12 col-md-6"><h4>个人信息</h4></div>
                            </div>
                        </div>
                <div class="dashboard-list">
                            <h3 class="heading">详细信息</h3>
                            <div class="dashboard-message contact-2 bdr clearfix">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <form action="/text2/insertuserinfo.action" method="GET" enctype="multipart/form-data">
                                            <div class="row" style="float:left">
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="form-group name">
                                                        <label>你的名字</label>
                                                        <input type="text" name="name" class="form-control" placeholder="你的名字 ">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="form-group email">
                                                        <label>你的id</label>
                                                        <input type="text" name="user_id" class="form-control" placeholder="你的id">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="form-group subject">
                                                        <label>电话</label>
                                                        <input type="text" name="phone" class="form-control" placeholder="电话">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="form-group number">
                                                        <label>身份证号</label>
                                                        <input type="text" name="idcard" class="form-control" placeholder="身份证号">
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn-md button-theme" style="margin-left:420px">提交</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                  </div>
</div>
                          </div>
</div>
                    </div>
                    <p class="sub-banner-2 text-center">©  2018. 商 标 和 品 牌 持 有 者 均 为 住 小 屋 所 拥 有
</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Dashbord end -->

<!-- Full Page Search -->
<div id="full-page-search">
    <button type="button" class="close">×</button>
    <form action="index.html#">
        <input type="search" value="" placeholder="type keyword(s) here" />
        <button type="submit" class="btn btn-sm button-theme">Search</button>
    </form>
</div>

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
</body>
</html>
