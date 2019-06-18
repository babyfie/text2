<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>Insert title here</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>
	<form onsubmit="return test()" class="form-horizontal" method="post" action="">
	 	<select  class="selectpicker form-control" multiple id="test" name="test"> 
			<option>a</option>
			<option>b</option>
			<option>c</option>
			<option>d</option>
		</select>
		<input type="submit" class="form-control" value="提交">
	</form>
	
	<script type="text/javascript">
		function test(){
			var value = $("#test option:selected");
			var text = tag.text();
			for(var i =0; i <text.length;i++){
				text.option[i].selected = true;
			}
			return true;
		}
	
	</script>
</body>
</html>