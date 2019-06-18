<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
   
    <title>房屋详情</title>
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
<header class="main-header header-transparent sticky-header">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand logo" href="index.html">
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
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" >
                          欢迎您，${sessionScope.user.username}	
                        </a>
             
                    </li> 
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="/text2/myapply.action">
                            我的账户
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>
<!-- Main header end -->

<!-- Sub banner start -->
<div class="sub-banner overview-bgi">
    <div class="container">
        <div class="breadcrumb-area">
            <h1>小屋</h1>
            <ul class="breadcrumbs">
                <li><a href="/text2/index.jsp">家</a></li>
                <li class="active">小屋列表</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Properties details page start -->
<div class="properties-details-page content-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- Heading properties 3 start -->
                <div class="heading-properties-3">
                    <h1>Relaxing Apartment</h1>
                    <div class="mb-30"><span class="property-price">$35,0000</span> <span class="rent">出租</span> <span class="location"><em class="flaticon-pin"></em>123 Kathal St. Tampa City,</span></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <!-- main slider carousel items -->
                <div id="propertiesDetailsSlider" class="carousel properties-details-sliders slide mb-40">
                    <div class="carousel-inner">
                        <div class="active item carousel-item" data-slide-number="0">
                            <img src="img/properties/properties-1.jpg" class="img-fluid" alt="slider-properties">
                        </div>
                        <div class="item carousel-item" data-slide-number="1">
                            <img src="img/properties/properties-2.jpg" class="img-fluid" alt="slider-properties">
                        </div>
                        <div class="item carousel-item" data-slide-number="2">
                            <img src="img/properties/properties-3.jpg" class="img-fluid" alt="slider-properties">
                        </div>
                        <div class="item carousel-item" data-slide-number="4">
                            <img src="img/properties/properties-4.jpg" class="img-fluid" alt="slider-properties">
                        </div>
                        <div class="item carousel-item" data-slide-number="5">
                            <img src="img/properties/properties-5.jpg" class="img-fluid" alt="slider-properties">
                        </div>

                        <a class="carousel-control left" href="#propertiesDetailsSlider" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                        <a class="carousel-control right" href="#propertiesDetailsSlider" data-slide="next"><i class="fa fa-angle-right"></i></a>

                    </div>
                    <!-- main slider carousel nav controls -->
                    <ul class="carousel-indicators smail-properties list-inline nav nav-justified">
                        <li class="list-inline-item active">
                            <a id="carousel-selector-0" class="selected" data-slide-to="0" data-target="#propertiesDetailsSlider">
                                <img src="img/properties/properties-1.jpg" class="img-fluid" alt="properties-small">
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a id="carousel-selector-1" data-slide-to="1" data-target="#propertiesDetailsSlider">
                                <img src="img/properties/properties-2.jpg" class="img-fluid" alt="properties-small">
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a id="carousel-selector-2" data-slide-to="2" data-target="#propertiesDetailsSlider">
                                <img src="img/properties/properties-3.jpg" class="img-fluid" alt="properties-small">
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a id="carousel-selector-3" data-slide-to="3" data-target="#propertiesDetailsSlider">
                                <img src="img/properties/properties-4.jpg" class="img-fluid" alt="properties-small">
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a id="carousel-selector-4" data-slide-to="4" data-target="#propertiesDetailsSlider">
                                <img src="img/properties/properties-5.jpg" class="img-fluid" alt="properties-small">
                            </a>
                        </li>
                    </ul>
                    <!-- main slider carousel items -->
                </div>
                <!-- Advanced search start -->
                <div class="widget-2 advanced-search bg-grea-2 d-lg-none d-xl-none">
                    <h3 class="sidebar-title">Advanced Search</h3>
                    <div class="s-border"></div>
                    <form method="GET">
                        <div class="form-group">
                            <select class="selectpicker search-fields" name="all-status">
                                <option>All Status</option>
                                <option>For Sale</option>
                                <option>For Rent</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="selectpicker search-fields" name="all-type">
                                <option>All Type</option>
                                <option>Apartments</option>
                                <option>Shop</option>
                                <option>Restaurant</option>
                                <option>Villa</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="selectpicker search-fields" name="commercial">
                                <option>Commercial</option>
                                <option>Residential</option>
                                <option>Commercial</option>
                                <option>Land</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="selectpicker search-fields" name="location">
                                <option>location</option>
                                <option>United States</option>
                                <option>American Samoa</option>
                                <option>Belgium</option>
                                <option>Canada</option>
                            </select>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group">
                                    <select class="selectpicker search-fields" name="bedrooms">
                                        <option>Bedrooms</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group">
                                    <select class="selectpicker search-fields" name="bathroom">
                                        <option>Bathroom</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group">
                                    <select class="selectpicker search-fields" name="balcony">
                                        <option>Balcony</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="form-group">
                                    <select class="selectpicker search-fields" name="garage">
                                        <option>Garage</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="range-slider">
                            <label>Area</label>
                            <div data-min="0" data-max="10000" data-min-name="min_area" data-max-name="max_area" data-unit="Sq ft" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="range-slider">
                            <label>Price</label>
                            <div data-min="0" data-max="150000"  data-min-name="min_price" data-max-name="max_price" data-unit="USD" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="form-group mb-0">
                            <button class="search-button">Search</button>
                        </div>
                    </form>
                </div>
                <!-- Properties description start -->
                <div class="properties-description mb-40">
                  <h3 class="heading-2"> 详细描述</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit, et fermentum urna dapibus non. Vivamus magna lorem, elementum id gravida ac, laoreet tristique augue. Maecenas dictum lacus eu nunc porttitor, ut hendrerit arcu efficitur.</p>
                </div>
                <!-- Properties amenities start -->
                <div class="properties-amenities mb-40">
                    <h3 class="heading-2">
                        特点
                    </h3>
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <ul class="amenities">
                                <li>
                                    <i class="fa fa-check"></i>空调
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>阳台
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>池
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>客房服务
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>健身房
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <ul class="amenities">
                                <li>
                                    <i class="fa fa-check"></i>Wifi
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>停车场
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>双人床
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>家庭影院
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>电
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <ul class="amenities">
                                <li>
                                    <i class="fa fa-check"></i>电话
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>按摩浴缸
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>火灾报警
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>车库
                                </li>
                                <li>
                                    <i class="fa fa-check"></i>安全
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Floor plans start -->
                <div class="floor-plans mb-50">
                    <h3 class="heading-2">平面图</h3>
                    <table>
                        <tbody><tr>
                            <td><strong>大小</strong></td>
                            <td><strong>客房</strong></td>
                            <td><strong>浴室</strong></td>
                            <td><strong>车库</strong></td>
                        </tr>
                        <tr>
                            <td>1600</td>
                            <td>3</td>
                            <td>2</td>
                            <td>1</td>
                        </tr>
                        </tbody>
                    </table>
</div>
                <!-- Location start -->
                <div class="location mb-50"> </div>
                <!-- Inside properties start -->
                <!-- Similar Properties start -->            </div>
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right">
                    <!-- Advanced search start -->
                    <div class="widget advanced-search d-none d-xl-block d-lg-block">
                      <h3 class="sidebar-title">高级搜索</h3>
                      <div class="s-border"></div>
                        <form method="GET">
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="all-status">
                                    <option>状态</option>
                                    <option>已凭租</option>
                                    <option>未凭租</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="all-type">
                                    <option>类型</option>
                                    <option>公寓</option>
                                    <option>店</option>
                                    <option>餐馆</option>
                                    <option>镇</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="location">
                                    <option>位置</option>
                                    <option>United States</option>
                                    <option>American Samoa</option>
                                    <option>Belgium</option>
                                    <option>Canada</option>
                                </select>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <select class="selectpicker search-fields" name="bedrooms">
                                            <option>卧室</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <select class="selectpicker search-fields" name="bathroom">
                                            <option>浴室</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <select class="selectpicker search-fields" name="balcony">
                                            <option>阳台</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <select class="selectpicker search-fields" name="garage">
                                            <option>车库</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="range-slider">
                                <label>面积</label>
                              <div data-min="0" data-max="10000" data-min-name="min_area" data-max-name="max_area" data-unit="㎡" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="range-slider">
                                <label>价格</label>
                                <div data-min="0" data-max="150000"  data-min-name="min_price" data-max-name="max_price" data-unit="元" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                                <div class="clearfix"></div>
                            </div>
                            <a class="show-more-options" data-toggle="collapse" data-target="#options-content">
                                <i class="fa fa-plus-circle"></i> 其它特点
                          </a>
                            <div id="options-content" class="collapse">
                                <h3 class="sidebar-title">特点</h3>
                                <div class="s-border"></div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox2" type="checkbox">
                                    <label for="checkbox2">
                                        空调
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox3" type="checkbox">
                                    <label for="checkbox3">
                                        地理位置
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox4" type="checkbox">
                                    <label for="checkbox4">
                                        游泳池
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox1" type="checkbox">
                                    <label for="checkbox1">
                                        免费停车场
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox7" type="checkbox">
                                    <label for="checkbox7">
                                        暖气
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox5" type="checkbox">
                                    <label for="checkbox5">
                                        洗衣房
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox6" type="checkbox">
                                    <label for="checkbox6">
                                        窗帘
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox8" type="checkbox">
                                    <label for="checkbox8">
                                        火灾火警
                                    </label>
                                </div>
                                <br>
                            </div>
                            <div class="form-group mb-0">
                                <button class="search-button">搜索</button>
                            </div>
                        </form>
                    </div>
                    <!-- Recent properties start -->
                    <!-- Social links start -->                    <!-- Our agent sidebar start -->                </div>
            </div>
        </div>
    </div>
</div>
<!-- Properties details page end -->

<!-- Footer start -->
<footer class="footer">
    <div class="container footer-inner">
        <div class="row">
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                <div class="footer-item clearfix">
                    <img src="img/logos/logo.png" alt="logo" class="f-logo">
                    <div class="text">
                        <p>住小屋成立于2019年。主要致力于二手房产的交易，起始背景是由于当代年轻人经济压力过大，房屋价格过高，没有一个良好的房屋住所，住小屋愿意为您提供良好的住所。
</p>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="footer-item">
                    <h4>联系我们</h4>
                    <div class="f-border"></div>
                    <ul class="contact-info">
                        <li>
                            <i class="flaticon-pin"></i>江苏省 盐城市 亭湖区 大洋街道 盐城师范学院
                        </li>
                        <li>
                            <i class="flaticon-mail"></i><a href="http://1261867536@qq.com">1261867536@qq.com</a>
                        </li>
                        <li>
                            <i class="flaticon-phone"></i>18862016666
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6">
                <div class="footer-item">
                    <h4>
                        有用的链接
                    </h4>
                    <div class="f-border"></div>
                    <ul class="links">
                        <li>
                            <a href="/text2/index.jsp">首页</a>
                        </li>
                        <li>
                            <a href="about.html">关于我们</a>
                        </li>
                        
                        <li>
                            <a href="contact.html">联系我们</a>
                        </li>
                      
                        <li>
                            <a href="properties-details.html">房屋财产</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="footer-item clearfix">
                    <h4>订阅</h4>
                    <div class="f-border"></div>
                    <div class="Subscribe-box">
                        <p>您的订阅对我们来说是莫大的支持，我们竭诚为您提供服务，欢迎您的订阅。</p>
                        <form class="form-inline" action="#" method="GET">
                            <input type="text" class="form-control mb-sm-0" id="inlineFormInputName3" placeholder="邮箱地址">
                            <button type="submit" class="btn"><i class="fa fa-paper-plane"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer end -->

<!-- Sub footer start -->
<div class="sub-footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8">
                <p class="copy" align="center">© 2018 <a href="#" >主题.</a> 商 标 和 品 牌 均 为 住 小 屋 所 拥 有 .</p>
            </div>
    </div>
</div>
<!-- Sub footer end -->

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
 
<script  src="http://ditu.google.cn/maps/api/js?key=AIzaSyB0N5pbJN10Y1oYFRd0MJ_v2g8W2QT74JE"></script>
<script>
    function LoadMap(propertes) {
        var defaultLat = 40.7110411;
        var defaultLng = -74.0110326;
        var mapOptions = {
            center: new google.maps.LatLng(defaultLat, defaultLng),
            zoom: 15,
            scrollwheel: false,
            styles: [
                {
                    featureType: "administrative",
                    elementType: "labels",
                    stylers: [
                        {visibility: "off"}
                    ]
                },
                {
                    featureType: "water",
                    elementType: "labels",
                    stylers: [
                        {visibility: "off"}
                    ]
                },
                {
                    featureType: 'poi.business',
                    stylers: [{visibility: 'off'}]
                },
                {
                    featureType: 'transit',
                    elementType: 'labels.icon',
                    stylers: [{visibility: 'off'}]
                },
            ]
        };
        var map = new google.maps.Map(document.getElementById("map"), mapOptions);
        var infoWindow = new google.maps.InfoWindow();
        var myLatlng = new google.maps.LatLng(40.7110411, -74.0110326);

        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map
        });
        (function (marker) {
            google.maps.event.addListener(marker, "click", function (e) {
                infoWindow.setContent("" +
                    "<div class='map-properties contact-map-content'>" +
                    "<div class='map-content'>" +
                    "<p class='address'>20-21 Kathal St. Tampa City, FL</p>" +
                    "<ul class='map-properties-list'> " +
                    "<li><i class='flaticon-phone'></i>  +0477 8556 552</li> " +
                    "<li><i class='flaticon-phone'></i>  info@themevessel.com</li> " +
                    "<li><a href='index.html'><i class='fa fa-globe'></i>  http://www.example.com</li></a> " +
                    "</ul>" +
                    "</div>" +
                    "</div>");
                infoWindow.open(map, marker);
            });
        })(marker);
    }
    LoadMap();
</script>

</body>
</html>



