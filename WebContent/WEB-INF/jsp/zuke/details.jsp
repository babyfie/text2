<!DOCTYPE html>
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
   <style>
	 element.style {
    padding-bottom: 12px;
}
.zf_new_title {
    padding: 0;
    padding-bottom: 5px;
    font-size: 16px;
}
 .trl-item{
		   color: red;
	      font-size: 26px;
	      font-weight: bold;
	      font-family: 黑体；
	   }
	   .trl-item1{
		   width: 30%;
		   float: left;
	   }
	   .lab{
		   font-weight: bold;
		   font-size: 18px;
	   }
	   .tt{
		   font-size: 16px;
		   letter-spacing: 2px;
		   font-weight: bold;
	   }
.tr-line {
    padding: 22px 0;
    border-bottom: 1px solid #F3F3F3;
	margin: 4px;
}
	   .c{
		   border-bottom:0px;
	   }
	   .tr-line1{
		   width: 50%;
		   float: left;
	   }
.clearfix {
    zoom: 1;
}
	   .font14{
		   letter-spacing: 2px;
		   font-size: 15px;
	   }
div, form, ul, ol, li, span, p, dl, dt, dd {
    margin: 0;
    padding: 0;
    border: 0;
}
div, form, ul, ol, li, span, p, dl, dt, dd {
    margin: 0;
    padding: 0;
    border: 0;
}
user agent stylesheet
div {
    display: block;
}
.tab-cont-right {
    float: left;
    margin-left: 50px;
    width: 460px;
    font-size: 13px;
    color: #999;
}
body {
    font-family: "Hiragino Sans GB", "Microsoft Yahei", sans-serif,Arial;
    margin: 0 auto;
    padding: 0;
    font-size: 12px;
    color: #333;
}
user agent stylesheet
html {
    color: -internal-root-color;
}
.clearfix:after {
    clear: both;
    content: ""!important;
    display: block;
    height: 0;
	</style>
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
                    <li class="nav-item dropdown megamenu-li" >
                        <a href="login.html" class="nav-link">登录</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="signup.html">
                            注册
                        </a>
             
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="/text2/my-properties.jsp">
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
                    <h1>${findhouseid.housename }</h1>
                    <div class="mb-30"><span class="property-price">${findhouseid.price }</span><span class="rent">${findhouseid.status }</span> <span class="location"><i class="flaticon-pin"></i>${findhouseid.address }</span></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <!-- main slider carousel items -->
                <div id="propertiesDetailsSlider" class="carousel properties-details-sliders slide mb-40">
                    <div class="carousel-inner">
                        <div class="active item carousel-item" data-slide-number="0">
                            <img src="${picturemap[findhouseid.houseid]}" class="img-fluid" alt="slider-properties">
                        </div>
                        <a class="carousel-control left" href="#propertiesDetailsSlider" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                        <a class="carousel-control right" href="#propertiesDetailsSlider" data-slide="next"><i class="fa fa-angle-right"></i></a>

                    </div>
                </div>
                <div class="properties-description mb-40">
                    <h3 class="heading-2">
                        详细介绍
                    </h3>
                    <p>${findhouseid.detail }</p>
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
                            <td><strong>空调</strong></td>
                        </tr>
                        <tr>

                           <td>${findhouseid.area}</td>
                            <td>${findhouseid.bedroom}</td>
                            <td>${findhouseid.bashroom }</td>
                            <td>${findhouseid.isair }</td>
                        </tr>
                        </tbody>
                    </table>
</div>
                <!-- Location start -->
                <div class="location mb-50"> </div>
                <!-- Inside properties start -->
                
                
                <!-- Similar Properties start -->
             
             
             
              <h3 class="heading-2">相似房源</h3>
              <c:forEach items="${all}" var="all">
                <div class="row similar-properties">
                    <div class="col-md-6">
                        <div class="property-box">
                            <div class="property-thumbnail">
                                <a href="properties-details.html" class="property-img">
                                    
                                    <div class="price-box"><span>${all[2].price  }</span> 元/月</div>
                                    <img  class="d-block w-100" src="${picmap[all[2].houseid] }">
                                </a>
                            </div>
                            <div class="detail">
                                <h1 class="title">
                                    <a href="properties-details.html">${all[2].housename}</a>
                                </h1>

                                <div class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-pin"></i>${all[2].address }
                                    </a>
                                </div>
                            </div>
                            <ul class="facilities-list clearfix">
                                <li>
                                    <span>面积</span>${all[2].area } ㎡    
                                </li>
                                <li>
                                    <span>客房</span> ${all[2].bedroom }
                                </li>
                                <li>
                                    <span>浴室</span> ${all[2].bashroom }
                                </li>
                                <li>
                                    <span>厨房</span> ${all[2].iskitchen}
                                </li>
                            </ul>
                            <div class="footer"> <em class="flaticon-people"></em> ${all[2].name} </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="property-box">
                            <div class="property-thumbnail">
                                <a href="#" class="property-img">
                                    <div class="price-box"><span>${all[3].price }</span> 元/月</div>
                                    <img class="d-block w-100" src="${picmap[all[3].houseid] }" alt="properties">
                                </a>
                            </div>
                            <div class="detail">
                                <h1 class="title">
                                    <a href="properties-details.html">${all[3].housename }</a>
                                </h1>

                                <div class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-pin"></i>${all[3].address }
                                    </a>
                                </div>
                            </div>
                            <ul class="facilities-list clearfix">
                              <li> <span>面积</span>${all[3].area } ㎡ </li>
                              <li>
                                    <span>客房</span> ${all[3].bedroom }
                                </li>
                                <li>
                                    <span>浴室</span> ${all[3].bashroom }
                                </li>
                                <li>
                                    <span>厨房</span> ${all[3].iskitchen}
                                </li>
                            </ul>
                            <div class="footer">
                                    <i class="flaticon-people"></i> ${all[3].name }
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right">
                    <!-- Advanced search start -->
                    <div class="widget advanced-search d-none d-xl-block d-lg-block">
                    <div class="tr-line clearfix zf_new_title" style="padding-bottom: 12px;">
                    
                    <div class="trl-item sty1"><i>${findhouseid.price }</i>元/月（半年付）</div>
                    
                </div>
                <div class="tr-line clearfix">
                    <div class="trl-item1 w146">
                        <div class="tt">状态</div>
                        <div class="font14">${findhouseid.status}</div>
                    </div>
                    <div class="trl-item1 w182">
                        <div class="tt">id</div>
                        <div class="font14">${findhouseid.houseid }</div>
                    </div>
                    <div class="trl-item1 w132" style="border-right: 0;">
                        
                        <div class="tt">面积</div>
                        <div class="font14">${findhouseid.area}平方米</div>
                    </div>
                </div>
                <div class="tr-line clearfix">
                    <div class="trl-item1 w146">
                        <div class="tt">卧室</div>
                        <div class="font14">${findhouseid.bedroom}</div>
                    </div>
                    <div class="trl-item1 w182">
                        <div class="tt">浴室</div>
                        <div class="font14 c2">${findhouseid.bashroom }</div>
                    </div>
                    <div class="trl-item1 w132" style="border-right: 0;">
                        <div class="tt">厨房</div>
                        <div class="font14">${findhouseid.iskitchen}</div>
                    </div>
                </div>
                <div class="tr-line" style="padding: 22px 0">                    
                    <div class="trl-item2 clearfix">
                        <div class="lab">地&nbsp;&nbsp;址:<p></p></div>
                        <div class="font14" >${findhouseid.address }</div>
                    </div>
                </div>
                        <div class="tr-line c">
                       	     <div class="tr-line1">
                       	     <div class="tt">联系人</div>
                              <div class="font14">${findhouseid.name }</div>
                              </div>
                       	     <div class="tr-line1 c1">
                              <div class="tt">电话</div>
                              <div class="font14">${findhouseid.phone }</div>
                              </div>
                        </div>
                    </div>
                    
                    <!-- Recent properties start -->
                    
                    
                    
                    
                    
                     <form action="/text2/hdetail.action" method="post">
                     <c:forEach items="${all}" var="all">
                    <div class="widget recent-properties">
                        <h3 class="sidebar-title">最新房源</h3>
                        <div class="s-border"></div>
                        <div class="media mb-4">
                            <a class="pr-3" href="properties-details.html">
                                <img class="media-object" src="${picmap[all[4].houseid] }" alt="small-properties">
                            </a>
                            <div class="media-body align-self-center">
                                <h5>
                                    <a href="properties-details.html">${all[4].housename}</a>
                                </h5>
                                <div class="listing-post-meta">
                                   ${all[4].price} | <a href="#">地址: ${all[4].address}</a>
                                </div>
                            </div>
                        </div>
                        <div class="media mb-4">
                            <a class="pr-3" href="properties-details.html">
                                <img class="media-object" src="${picmap[all[5].houseid] }" alt="small-properties">
                            </a>
                            <div class="media-body align-self-center">
                                <h5>
                                    <a href="properties-details.html">${all[5].housename}</a>
                                </h5>
                                <div class="listing-post-meta">
                                   ${all[5].price} |  <a href="#">地址: ${all[5].address}</a>
                                </div>
                            </div>
                        </div>
                        <div class="media">
                            <a class="pr-3" href="properties-details.html">
                                <img class="media-object" src="${picmap[all[6].houseid] }" alt="small-properties">
                            </a>
                            <div class="media-body align-self-center">
                                <h5>
                                    <a href="properties-details.html">${all[6].housename}</a>
                                </h5>
                                <div class="listing-post-meta">
                                   ${all[6].price}| <a href="#">地址: ${all[6].address}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </form>
                    
                    
                    
                    
                    <!-- Social links start -->
                    <!-- Our agent sidebar start -->                
                    </div>
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
                            <i class="flaticon-mail"></i><a href="1261867536@qq.com">1261867536@qq.com</a>
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
                <p class="copy">© 2018 <a href="http://www.17sucai.com/" title="17sucai">Theme Vessel.</a> Trademarks and brands are the property of their respective owners.</p>
            </div>
            <div class="col-lg-4 col-md-4">
                <ul class="social-list clearfix">
                    <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" class="google"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#" class="rss"><i class="fa fa-rss"></i></a></li>
                    <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Sub footer end -->

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



