<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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

<!-- Properties section start -->
<form action="/text2/house.action" id="house" name="house" method="post"> 
<div class="properties-section content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-left">
                    <!-- Advanced search start -->
                    <div class="widget advanced-search">
                        <h3 class="sidebar-title">高级搜索</h3>
                        <div class="s-border"></div>
                        <form method="GET">
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="all-status">
                                    <option>房屋状态</option>
                                    <option>出租</option>
                                    <option>出售</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="all-type">
                                     <option>所有类型</option>
                                     <option>公寓</option>
                                     <option>酒店</option>
                                     <option>餐厅</option>
                                     <option>别墅</option>
                                </select>
                            </div>
                           
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="location">
                                     <option>地点</option>
                                     <option>常州</option>
 									 <option>徐州</option>
 									 <option>南京</option>
 									 <option>淮安</option>
 								     <option>南通</option>
 									 <option>宿迁</option>
 									 <option>无锡</option>
									 <option>扬州</option>
									 <option>盐城</option>
									 <option>苏州</option>
									 <option>泰州</option>
									 <option>镇江</option>
									 <option>连云港</option>
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
                                            <option>停车场</option>
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
                                <div data-min="0" data-max="1000" data-min-name="min_area" data-max-name="max_area" data-unit="平方" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="range-slider">
                                <label>价格</label>
                                <div data-min="0" data-max="150000"  data-min-name="min_price" data-max-name="max_price" data-unit="元" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                                <div class="clearfix"></div>
                            </div>
                            <a class="show-more-options" data-toggle="collapse" data-target="#options-content">
                                <i class="fa fa-plus-circle"></i> 其他特征
                            </a>
                            <div id="options-content" class="collapse">
                                <h3 class="sidebar-title">特征</h3>
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
                                       		 地理优越
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
                                        	免费停车
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox7" type="checkbox">
                                    <label for="checkbox7">
                                        	热水器
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
                                      	 	 阳台
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox8" type="checkbox">
                                    <label for="checkbox8">
                                       	        报警器
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
                    <form class="widget recent-properties"
                    		action="ahouselist.action" method=post>
                        <h3 class="sidebar-title">近期 房源</h3>
                        <div class="s-border"></div>
                        
                        <div class="media mb-4">
                            <a class="pr-3" href="properties-details.html">
                                <img class="media-object" style="width:60px height:60px" src="${picmap[houselist[0].houseid] }" alt="small-properties">
                            </a>
                            
                            <div class="media-body align-self-center">
                                <h5>			 
                                    <a href="/text2/hdetail.action?houseid=${houselist[0].houseid}">${houselist[0].housename}</a>
                                </h5>
                                <div class="listing-post-meta">
                                    ${houselist[0].price} |  地址: ${houselist[0].address} 
                                </div>
                            </div>
                          
                        </div>
                        <div class="media mb-4">
                            <a class="pr-3" href="properties-details.html">
                                <img class="media-object" style="width:60px height:60px" src="${picmap[houselist[1].houseid] }" alt="small-properties">
                            </a>
                            <div class="media-body align-self-center">
                                <h5>
                                    <a href="/text2/hdetail.action?houseid=${houselist[1].houseid}">${houselist[1].housename}</a>
                                </h5>
                                <div class="listing-post-meta">
                                    ${houselist[1].price} | 地址: ${houselist[1].address}
                                </div>
                            </div>
                        </div>
                        <div class="media mb-4">
                            <a class="pr-3" href="properties-details.html">
                                <img class="media-object" style="width:60px height:60px" src="${picmap[houselist[2].houseid] }" alt="small-properties">
                            </a>
                            <div class="media-body align-self-center">
                                <h5>
                                    <a href="/text2/hdetail.action?houseid=${houselist[2].houseid}">${houselist[2].housename}</a>
                                </h5>
                                <div class="listing-post-meta">
                                     ${houselist[2].price} | 地址: ${houselist[2].address}
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- Posts by category Start -->
                    <div class="posts-by-category widget">
                        <h3 class="sidebar-title">类别</h3>
                        <div class="s-border"></div>
                        <ul class="list-unstyled list-cat">
                            <li><a href="#">民宿 <span>(45)</span></a></li>
                            <li><a href="#">公寓<span>(21)</span> </a></li>
                            <li><a href="#">酒店 <span>(23)</span></a></li>
                            <li><a href="#">别墅 <span>(19)</span></a> </li>
                            <li><a href="#">其他 <span>(22) </span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-12">
                <!-- Option bar start -->
                <div class="option-bar d-none d-xl-block d-lg-block d-md-block d-sm-block">
                    <div class="row">
                        <div class="col-lg-6 col-md-7 col-sm-7">
                            <div class="sorting-options2">
                                <span class="sort">按下列顺序排列:</span>
                                <select class="selectpicker search-fields" name="default-order">
                                    <option>默认排序</option>
                                    <option>价格由高到低</option>
                                    <option>价格由低到高</option>
                                    <option>最新发布</option>
                                    <option>以前发布</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Property box 2 start -->
              
              <c:forEach items="${houselist}" var="houselist">
                <div class="property-box-2" >
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-pad">
                            <div class="property-thumbnail">
                                <a href="properties-details.html" class="property-img">
                                    <img src="${picmap[houselist.houseid] }" style="height:250px" alt="properties" class="img-fluid">
                                    <div class="listing-badges">
                                        <span class="featured">热门推荐</span>
                                    </div>
                                    <div class="price-box"><span>${houselist.price }</span> /月</div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7 col-pad">
                            <div class="detail">
                                <div class="hdg">
                                    <h3 class="title">
                                        <a href="/text2/hdetail.action?houseid=${houselist.houseid}">${houselist.housename }</a>
                                    </h3>
                                    <h5 class="location">
                                        <a href="properties-details.html">
                                            <i class="flaticon-pin"></i>${houselist.address }
                                        </a>
                                    </h5>
                                </div>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <span>面积</span>${houselist.area } 平方
                                    </li>
                                    <li>
                                        <span>卧室</span> ${houselist.bedroom }
                                    </li>
                                    <li>
                                        <span>浴室</span> ${houselist.bashroom }
                                    </li>
                                </ul>
                                <div class="footer" style="float:left;width:220px">
                                    <a href="#" tabindex="0">
                                        <i class="flaticon-people"></i> ${houselist.name}
                                    </a>
                                    <div >
                                          	电话:${houselist.phone }
                                	</div>  	
                                </div>
                                <div  style="float:right;margin-right:80px;margin-top:10px" id="apply">
                                		
                                		<a href="/text2/findapply.action?houseid=${houselist.houseid}&id=${sessionScope.user.id}"
											onclick="return window.confirm('确定申请吗？')">申请</a>
                                		
                                </div>
                                
                                <div  style="float:right;margin-right:15px;margin-top:10px" id="apply">
                                		
                                		<a href="/text2/findapply.action?houseid=${houselist.houseid}&id=${sessionScope.user.id}"
											onclick="alert('收藏成功')">收藏</a>
                                		
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
           

                <!-- Page navigation start -->
                    <tr>
							<span id=pagelink>
								<div class="pagination-box hidden-mb-45 text-center">
									共[<B>${p.total}</B>]条记录，共[<B>${p.pages}</B>]页
									,

									<c:if test="${ p.pageNum > 1 }">
													[<A href="javascript:to_page(${p.prePage})">前一页</A>]
												</c:if>
										<input type="hidden" name="page" id="page" value=""/>
									第<B>${p.pageNum}</B>页

									<c:if test="${ p.pageNum < p.pages }">
													[<A href="javascript:to_page(${p.nextPage})">后一页</A>] 
												</c:if>
								</div>
							</span>
						
						</tr>
            </div>
        </div>
    </div>
</div>
</form>
<!-- Properties section end -->

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




<script type="text/javascript">
$('.selectpicker').selectpicker({
	noneSelectedText: '',
    noneResultsText: '',
    liveSearch: true,
    size:20   //设置select高度，同时显示20个值
});
</script>

<script language=javascript>
// 提交分页的查询的表单
function to_page(page) {
	if (page) {
		$("#page").val(page);
	}
	document.house.submit();
}
</script>

</body>
</html>