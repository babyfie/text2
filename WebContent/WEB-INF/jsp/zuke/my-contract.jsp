<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">   
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
    <link rel="stylesheet" type="text/css" href="/text2/css/main.css"/>
    <script type="text/javascript" src="/text2/js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="/text2/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/text2/js/jquery-ui-datepicker.js"></script>
    <script type="text/javascript" src="/text2/js/jquery.validate.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/text2/css/jquery-ui.css"/>
	 <style type="text/css">
    .title{
      margin:10px auto;
      text-align:center;
      font-size:30px;
    }
    .button{
    margin:10px auto;
    text-align:center;
    }
    </style>
    <script type="text/javascript">
    function to_dayin(){
    	alert("打印中...");
    }
   
    </script>
    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="css/skins/default.css">

    <!-- Favicon icon -->
    

    <!-- Google fonts -->
   <!--  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,300,700"> -->

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <link rel="stylesheet" type="text/css" href="css/ie10-viewport-bug-workaround.css"> -->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script  src="js/ie8-responsive-file-warning.js"></script><![endif]-->
   <!--  <script  src="js/ie-emulation-modes-warning.js"></script> -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>-->
    <!-- <script  src="js/html5shiv.min.js"></script>
    <script  src="js/respond.min.js"></script> -->
   <!--  <![endif] -->
  </head>
  <body>
            <div class="col-lg-9 col-md-12 col-sm-12 col-pad">
                <div class="content-area5 dashboard-content">
                    <div class="submit-address dashboard-list">
                            
							<div><br />
							
							<form name="hetong" style="margin-left:200px">
							<div class="title" style="margin-right:200px">房屋租赁合同</div>
							<p>出租方：<span name="chuzu">${hetong[0].chuzu}</span>（以下简称甲方）；</p>　　　
							<p>承租方：<span name="zuke">${hetong[0].zuke}</span>（以下简称乙方）。　</p>　
							<p>租赁房屋地址：<span name="zuke">${hetong[0].address}</span>　</p>　
							<p>依据《中华人民共和国合同法》有关条款，甲乙双方经过充分协商，就乙方租赁甲方房屋事宜达成如下协议：</p>
							<p>一、乙方租赁甲方房屋，以下简称租赁房屋。</p>
							<p>二、起租时间：<span name="fromdate" >${hetong[0].fromdate}</span>，退租时间：<span name="todate">${hetong[0].todate}</span>。
							在合同签订之日，乙方需向甲方支付房屋租金￥<span name="price">${hetong[0].price}</span>。<br>如续租，请提前3天通知甲方，并重新办理租赁手续。<br /></p>　　　　
							<p>三、违约处理：</p>　
							<p>甲方违约：</p>　
							<p>1．如甲方未能及时将押金退还乙方，甲方每天应按押金的2％向乙方支付违约金；</p>
							<p>2．如甲方提供的维修服务项目与协议不相符，乙方有权提前退租，甲方应全额退还剩余的租金。</p>
							<p>乙方违约：</p>　　
							<p>1．如乙方不按时缴纳租金，甲方有权在其押金中扣除，同时收回房屋，所有损失由乙方负责；</p>　
							<p>2．如果乙方在租赁期限未满时退租，甲方仅退还剩余租金的40％（租期未满一个月的不在此例）；</p>　
							<p>四、本协议书一式两份，甲乙双方各执一份；本协议甲乙双方签字后生效。补充协议亦属于合同的一部分。</p>　
								 <br />　　甲方（盖章）：_________　　　　　　　　乙方（盖章）：_________　　<br />　
								 法定代表人（签字）：_________　　　　　法定代表人（签字）：_________　　<br />　　
								担保人（签章）：_________　　<br/>　　
								_________年____月____日　　　　　　　　_________年____月____日　　<br />　　
								签订地点：_________　　　　　　　　　　签订地点：_________ 
								<div class="button" style="margin-right:200px">			
								<input class="btn btn-primary btn6 mr10"  value="修改合同" type="submit">
								<input class="btn btn6" onclick="javascript:to_dayin()" value="打印合同" type="button">
								<input class="btn btn6" onclick="history.go(-1)" value="上一步" type="button">
								</div>
							</form>
							
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
</body>
</html>