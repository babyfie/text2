<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <title>房屋租赁系统</title>
    <link rel="stylesheet" type="text/css" href="/text2/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/text2/css/main.css"/>
    <script type="text/javascript" src="/text2/js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="/text2/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/text2/js/jquery.validate.min.js"></script>
   
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
   
/* .error {
  
  font-size:13px;
  color: red;
  
} */

   </style>
   <!--  <script type="text/javascript">
    $().ready(function() {
        // 在键盘按下并释放及提交后验证提交表单
        $("#myform").validate({
        	
            rules : {
            	houseid : {
                    required : true,
                },
               
                address : {
                    required : true,
                  
                },
                area : {
                    required : true,
                    min: 0
                  
                },
                price: {
                    required : true,
                    min: 0
                  
                }
                
            },
            messages : {
            	houseid : {
                    required : "房屋id不能为空！",
                },
               
                address : {
                    required : "地址不能为空！",
                  
                },
                area : {
                    required : "面积不能为空！",
                    min:"请输入正确的面积"
                  
                },
                price: {
                    required :  "价格不能为空！",
                    min:"请输入正确的租金"
                  
                }
                
            }
        });
    })
	</script>
	 -->
</head>
<body>

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PTNPV7L"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="page_loader"></div>

<!-- Dashboard start -->
<div class="dashboard submit-property">
    <div class="container-fluid">
        <div class="row">
            
            <div class="col-lg-9 col-md-12 col-sm-12 col-pad">
              <div class="content-area5 dashboard-content">
                   
                        <div class="row">
                            <div class="col-sm-12 col-md-6"><h4>发布房源</h4></div> 
                        </div>
               
                    <div class="submit-address dashboard-list">
                        
                        
                        <form method="POST" action="${pageContext.request.contextPath }/toaddhouse.action">
                            <h4 class="bg-grea-3">基本信息</h4>
                            <div class="search-contents-sidebar">
                                <div class="row pad-20">
                                   
                                   <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label>房屋id</label>
                                            <input type="text" class="input-text" name="houseid" placeholder="房屋id" style="width:1000px">
                                        </div>
                                    </div>
                                    
                                   <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label>房屋名称</label>
                                            <input type="text" class="input-text" name="housename" placeholder="房屋名称" style="width:1000px">
                                        </div>
                                    </div>
                                   
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label>面积</label>
                                            <input type="text" class="input-text" name="area" placeholder="面积" style="width:1000px">
                                        </div>
                                    </div> 
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label>价格</label>
                                            <input type="text" class="input-text" name="price" placeholder="价格" style="width:1000px">
                                        </div>
                                    </div>
                                    
                                     <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label>房屋类型</label>
                                            <select class="dropdown-menu input-text" name="type" style="width:1035px">
                                                <option>公寓</option>
                                                <option>别墅</option>
                                                <option>餐厅</option>
                                                <option>名宿</option>
                                            </select>
                                        </div>
                                    </div>
                                       
                                     <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label>状态</label>
                                            <select class="dropdown-menu input-text" name="status" style="width:1035px">
                                                <option>已凭租</option>
                                                <option>未凭租</option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label>卧室数</label>
                                            <select class="dropdown-menu input-text" name="bedroom" style="width:1035px">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label>浴室数</label>
                                            <select class="dropdown-menu input-text" name="bashroom" style="width:1035px">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="bg-grea-3">地理位置</h4>
                            <div class="row pad-20">
                            	<div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group">
                                            <label>城市</label>
                                            <select class="dropdown-menu input-text" name="city" style="width:1035px">
                                                <option>城市</option>
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
                                    </div>

                                <div class="col-lg-4 col-md-4 col-sm-12">
                                    <div class="form-group">
                                        <label>详细地址</label>
                                        <input type="text" class="input-text" name="address" placeholder="详细地址" maxlength="30" style="width:1000px">
                                    </div>
                                </div>
                               
                                <div class="col-lg-4 col-md-4 col-sm-12">
                                    <div class="form-group">
                                        <label>邮政编码</label>
                                        <input type="text" class="input-text" name="poast"  placeholder="邮政编码" style="width:1000px">
                                    </div>
                                </div>
                            </div>
                            <h4 class="bg-grea-3">图片上传</h4>
                            <div class="row pad-20">
                                <div class="col-lg-12">
                                    <div id="myDropZone" class="dropzone dropzone-design"   >
                                        <div class="dz-default dz-message"><span>把图片放到这里上传</span></div>
                                    </div>
                                    <input type="hidden" id="picurl" name="picurl">
                                </div>
                              
                                
                            </div>
                            <h4 class="bg-grea-3">详细介绍</h4>
                            <div class="row pad-20">
                                <div class="col-lg-12">
                          
                                    <textarea class="input-text" name="detail" placeholder="详细介绍" style="width:1000px"></textarea>
                                </div>
                            </div>
                            <h4 class="bg-grea-3">特点(可选)</h4>
                            <div class="row pad-20">
                          <!--       <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="checkbox checkbox-theme checkbox-circle" value="1">
                                        <input id="checkbox1" type="checkbox">
                                        <label for="checkbox1">
                                            免费停车
                                        </label>
                                    </div>
                                </div> -->
                                <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox2" type="checkbox" name="isair" value="1">
                                        <label for="checkbox2" >
                                            空调
                                        </label>
                                    </div>
                                </div>
                          <!--       <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox4" type="checkbox">
                                        <label for="checkbox4">
                                            游泳池
                                        </label>
                                    </div>
                                </div> -->
                                <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox5" type="checkbox" value="1">
                                        <label for="checkbox5">
                                            洗衣机
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox7" type="checkbox" value="1">
                                        <label for="checkbox7">
                                            厨房
                                        </label>
                                    </div>
                                </div>
                              <!--   <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox8" type="checkbox">
                                        <label for="checkbox8">
                                            报警器
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox3" type="checkbox">
                                        <label for="checkbox3">
                                            独立卫生间
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="checkbox checkbox-theme checkbox-circle">
                                        <input id="checkbox6" type="checkbox">
                                        <label for="checkbox6">
                                            阳台
                                        </label>
                                    </div>
                                </div>
                            </div> -->
                            <h4 class="bg-grea-3">联系人</h4>
                            <div class="row pad-20">
                                <div class="col-lg-4 col-md-4 col-sm-12">
                                    <div class="form-group">
                                        <label>房主姓名</label>
                                        <input type="text" class="input-text" name="name" placeholder="名称" style="width:975px">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12">
                                    <div class="form-group">
                                        <label>邮箱</label>
                                        <input type="email" class="input-text" name="email" placeholder="邮箱" style="width:975px">
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12" >
                                    <div class="form-group">
                                        <label>联系方式</label>
                                        <input type="text" class="input-text" name="phone"  placeholder="联系方式" style="width:975px">
                                    </div>
                                </div>
                                <center>
                                <div class="col-lg-4 col-md-12 col-sm-12">
                                	<input type="submit" value="提交" class="btn btn-md button-theme" >
                                  
                                </div>
                                </center>
                            </div>
                        </form>
                   
                   
                   
                   
                   
                    </div>
                    <p class="sub-banner-2 text-center" align="center">© 2018 主 题. 商 标 和 品 牌 均 为 住 小 屋 所 拥 有 .</p>
                </div>
            </div>
        </div>
    </div>
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



<script type="text/javascript">
$("#myDropZone").dropzone({
	url: "/text2/addImg.action",
	init: function () {
		var myDropz = this;
		myDropz.on('success', function (files, response) {
			 
            //文件上传成功之后的操作
    
          
            console.log(files.xhr.responseText);
            //alert(files.xhr.responseText);
            console.log(response);
            var picurl = files.xhr.responseText;
            
            
            $("#picurl").attr("value",picurl)
            
            
        });
		
	},
	
	
	
	
	})
</script>

</body>
</html>