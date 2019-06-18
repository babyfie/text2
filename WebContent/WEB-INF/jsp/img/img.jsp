<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!-- 	request.setAttribute("houses", allHouse);
		request.setAttribute("picMap", map); -->

<!--如何遍历一个集合  动态获取数据  -->
	<c:forEach var="item" items="${houses}" varStatus="status">
         ${status.count }：${item.houseid}  ${picMap[item.houseid]}  
         
         <img alt="" src="/text2/upload/${picMap[item.houseid]}">
         <br/>
	</c:forEach>

</body>
</html>