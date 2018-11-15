<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.studorm.entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宿舍管理系统</title>
<link href="${pageContext.request.contextPath}/public/style/dorm.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/public/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/public/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/public/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.8.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
   	 	$("#DataTables_Table_0_wrapper .row-fluid").remove();
	});
</script>
<style type="text/css">
	  .bs-docs-sidenav {
    background-color: #fff;
    border-radius: 6px;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
    padding: 0;
    width: 228px;
}

.bs-docs-sidenav > li > a {
    border: 1px solid #e5e5e5;
    display: block;
    padding: 8px 14px;
    margin: 0 0 -1px;
}
.bs-docs-sidenav > li:first-child > a {
    border-radius: 6px 6px 0 0;
}
.bs-docs-sidenav > li:last-child > a {
    border-radius: 0 0 6px 6px;
}
.bs-docs-sidenav > .active > a {
    border: 0 none;
    box-shadow: 1px 0 0 rgba(0, 0, 0, 0.1) inset, -1px 0 0 rgba(0, 0, 0, 0.1) inset;
    padding: 9px 15px;
    position: relative;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.15);
    z-index: 2;
}
.bs-docs-sidenav .icon-chevron-right {
    float: right;
    margin-right: -6px;
    margin-top: 2px;
    opacity: 0.25;
}
.bs-docs-sidenav > li > a:hover {
    background-color: #f5f5f5;
}
.bs-docs-sidenav a:hover .icon-chevron-right {
    opacity: 0.5;
}
.bs-docs-sidenav .active .icon-chevron-right, .bs-docs-sidenav .active a:hover .icon-chevron-right {
    background-image: url("${pageContext.request.contextPath}/public/bootstrap/img/glyphicons-halflings-white.png");
    opacity: 1;
}
a{
text-decoration: none;
}
.span10 {
  width: 780px;
  margin-left: 120px;
  margin-left: 60px;
}
</style>
</head>
<body>
<%-- <div class="container-fluid" style="padding-right: 0px;padding-left: 0px;">
	<div  style="height: 100px;background-image: url('${pageContext.request.contextPath}/public/images/bg.jpg')">
		<div align="left" style="width: 80%;height:100px ;float: left;padding-top: 40px;padding-left: 30px;" ><font color="white" size="6" >宿舍管理系统</font></div>
		<div style="padding-top: 70px;padding-right: 20px;">当前用户：&nbsp;<font color="red" >${userName}</font></div>
	</div>
</div> --%>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2 bs-docs-sidebar" >
				<ul class="nav nav-list bs-docs-sidenav">
					<li><a href="${pageContext.request.contextPath}/studentBlank" target="rightFrame"><i class="icon-chevron-right"></i>首页</a></li>
					<li><a href="${pageContext.request.contextPath}/record/info?userType=${userType}" target="rightFrame"><i class="icon-chevron-right"></i>缺勤记录</a></li>
					<li><a href="${pageContext.request.contextPath}/studentPasswordChange" target="rightFrame"><i class="icon-chevron-right"></i>修改密码</a></li>
					<li><a href="${pageContext.request.contextPath}/login" target="_parent"><i class="icon-chevron-right"></i>退出系统</a></li>
				</ul>
			</div>
					<%-- <div class="span10">
						<jsp:include page="${mainPage==null?'student/blank.jsp':mainPage}"></jsp:include>
					</div> --%>
			</div>
		</div>

</body>
</html>