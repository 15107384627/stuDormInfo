<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/public/css/style.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/public/css/select.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/public/js/jquery-1.8.2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/public/js/jquery.idTabs.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/public/js/select-ui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/public/js/kindeditor.js"></script>

<script type="text/javascript">
	KE.show({
		id : 'content7',
		cssPath : './index.css'
	});
</script>

<script type="text/javascript">
	$(document).ready(function(e) {
		$(".select1").uedSelect({
			width : 345
		});
		$(".select2").uedSelect({
			width : 167
		});
		$(".select3").uedSelect({
			width : 100
		});
	});
	function insertOnclick() {
		var userName = $("#userName").val();
		var password = $("#password").val();
		var rpassword = $("#rpassword").val();
		var dormBuildId = $("#dormBuildId").val();
		var name = $("#name").val();
		var sex= $("#sex").val();
		var tel = $("#tel").val();
		if(userName!=null&&userName!=""&&password!=null&&password!=""&&rpassword!=null&&rpassword!=""&&dormBuildId!=null&&dormBuildId!=""&&name!=null&&name!=""&&sex!=null&&sex!=""&&tel!=null&&tel!=""){
			if(password!=rpassword){
				alert("密码填写不一致");
			}else{
				$.post("${pageContext.request.contextPath}/dormManager/add", {
					userName : userName,
					password : password,
					dormBuildId : dormBuildId,
					name : name,
					sex : sex,
					tel : tel
				}, function(data) {
					if (data == true) {
						alert("成功添加一条数据");
						window.location.href="${pageContext.request.contextPath}/dormManager/info";
					} else {
						alert("添加的数据已有，不能重复,添加失败");
					}
				});
			}
		}else{
			alert("信息填写不完整");
		}
		
	}
</script>
</head>

<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
    	<li>添加宿舍管理员信息</li>
    	</ul>
	</div>

	<div class="formbody">


		<div id="usual1" class="usual">



			<div id="tab1" class="tabson">

				<ul class="forminfo">
					<li><label>用户名<b>*</b></label><input id="userName" type="text"
						class="dfinput" placeholder="请填写用户名" style="width: 518px;" /></li>

					<li><label>密码<b>*</b></label><input id="password" type="password"
						class="dfinput" placeholder="请填写密码" style="width: 518px;" /></li>
					
					<li><label>重复密码<b>*</b></label><input id="rpassword" type="password"
						class="dfinput" placeholder="请重复密码" style="width: 518px;" /></li>
						
					<li><label>宿舍楼ID<b>*</b></label><input id="dormBuildId" type="text"
						class="dfinput" placeholder="请填写宿舍楼ID" style="width: 518px;" /></li>

					<li><label>姓名<b>*</b></label><input id="name" type="text"
						class="dfinput" placeholder="请填写姓名" style="width: 518px;" /></li>
						
					<li><label>性别<b>*</b></label><input id="sex" type="text"
						class="dfinput" placeholder="请填写性别" style="width: 518px;" /></li>
						
					<li><label>电话<b>*</b></label><input id="tel" type="text"
						class="dfinput" placeholder="请填写电话" style="width: 518px;" /></li>

					<li><label>&nbsp;</label><input name="" type="button"
						class="btn" value="马上添加" onclick="insertOnclick()" /></li>

				</ul>
			</div>

		</div>

		<script type="text/javascript">
			$("#usual1 ul").idTabs();
		</script>

		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
		</script>





	</div>
</body>

</html>
