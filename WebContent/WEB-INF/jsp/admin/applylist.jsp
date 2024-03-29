<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>房屋租赁系统</title>
    <link rel="stylesheet" type="text/css" href="/text2/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/text2/css/main.css"/>
    <script type="text/javascript" src="/text2/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/text2/js/libs/modernizr.min.js"></script>
	</script>
	<style type="text/css">
	
	
	</style>
	
</head>
<body>
<div class="result-title">
<h1>申请看房列表</h1>
</div>

<div>
	<form id="houseForm" name="houseForm"
		action="houselist.action"
		method=post >
						 <div class="result-title">
                    <div class="result-list">
                      
                        
                    </div>
                </div>

					<div class="result-content">
						<table id=grid
							class="result-tab" width="100%">
							<tbody>
								<tr
									style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td>房屋id</td>
									<td>地址</td>
									<td>面积</td>
									<td>价格</td>
									<td>申请人姓名</td>
									<td>申请人身份证号</td>
									<td>申请人电话号码</td>
									<td>操作</td>
								
									
								</tr>
								<c:forEach items="${applylist}" var="apply">
									<tr
										style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
										<td>${apply.house_id }</td>
										<td>${apply.address}</td>
										<td>${apply.area}</td>
										<td>${apply.price}</td>
										<td>${apply.userlist.name}</td>
										<td>${apply.userlist.idcard}</td>
										<td>${apply.userlist.phone}</td>
										<td>
										<a class="link-update"
											href="/text2/toaddhetong.action?house_id=${apply.house_id}">同意租赁</a>
											&nbsp;&nbsp; 
											<input type="hidden" name="id" value="${houselist.id}"/>
											<a class="link-del"
											 href="/text2/refuseapply.action?house_id=${apply.house_id}"
											onclick="return window.confirm('确定要拒绝该租客的申请吗？')">拒绝租赁</a></td>
										
											
									</td>		
										
										
									</tr>

								</c:forEach>

							</tbody>
						</table>
						</div>
					

						<tr>
						<tr>
							<span id=pagelink>
								<div style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right; margin-top:10px">
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
						</tbody>
					
					

					
						</tbody>
				

					</form>
</div>
 <script language=javascript>
	// 提交分页的查询的表单
	function to_page(page) {
		if (page) {
			$("#page").val(page);
		}
		document.houseForm.submit();
	}
</script>
</body>
</html>