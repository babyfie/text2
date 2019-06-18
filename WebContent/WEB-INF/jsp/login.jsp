<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>登录</title>
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

<!-- Contact section start -->
<div class="contact-section overview-bgi">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!-- Form content box start -->
                <div class="form-content-box">
                    <!-- details -->
                    <div class="details">
                        <!-- Logo -->
                        <a href="/jsp/index.jsp">
                            <img src="img/black-logo.png" class="cm-logo" alt="black-logo">
                        </a>
                        <!-- Name -->
                        <h3>登录你的账户</h3>
                        <!-- Form start -->
                        <form class="form" id="loginform" action="logincheck.action" method="POST">
                            <div class="form-group">
                                <input type="email" name="email" class="input-text" placeholder="输入邮箱">
                            </div>
                            <div class="form-group">
                                <input type="password" name="Password" class="input-text" placeholder="密码">
                            </div>
                            
                            <div class="form-group">
                            	<label class="radio inline" style="font-size: 15px">
      	  							<input id="admin" type="radio" name="type" value="管理员"  checked/> 管理员
								</label>
							
								<label class="radio inline" style="font-size:15px">
									<input id="zuke" type="radio" name="type" value="租客" /> 租客
								</label>
                            </div>
                            
                            <div class="checkbox">
                                <div class="ez-checkbox pull-left">
                                    <label>
                                        <input type="checkbox" class="ez-hide">
                                        记住密码
                                    </label>
                                </div>
                                <a href="forgot-password.html" class="link-not-important pull-right">忘记密码</a>
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group mb-0">
                                <button id="login-button" type="submit" class="btn-md button-theme btn-block">登录</button>
                            </div>
						</form>
                       
                    </div>
                    <!-- Footer -->
                    <div class="footer">
                        <span>没有账号？ <a href="/text2/toregisn.action">点击注册</a></span>
                    </div>
                </div>
                <!-- Form content box end -->
            </div>
        </div>
    </div>
</div>
<!-- Contact section end -->

<!-- Full Page Search -->
<div id="full-page-search">
    <button type="button" class="close">×</button>
    <form action="index.html#">
        <input type="search" value="" placeholder="type keyword(s) here" />
        <button type="submit" class="btn btn-sm button-theme">搜索</button>
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

<script type="text/javascript">
	 $().ready(function() {
        // 在键盘按下并释放及提交后验证提交表单
        $("#loginform").validate({
        	success:function(){
             label.text('').addClass('valid');
            $('#login-button').click(function(event){
			event.preventDefault();
			$('form').fadeOut(500);
			$('.container').addClass('form-success');

		});

        },
            rules : {
                email : {
                    required : true,
                },
               
                password : {
                    required : true,       
                }, 
            },
            messages : {
                email : {
                    required : "请输入邮箱",
                },
               
                password : {
                    required : "请输入密码",
                    
                },
                
            }
        });
    })

var error="${error}";
if(error=="error"){

alert("帐户名或密码错误");
}



</script>
</body>
</html>