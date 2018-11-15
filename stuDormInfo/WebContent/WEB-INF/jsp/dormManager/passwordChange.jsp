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
	function updateOnclick() {
		var oPassword = $("#oPassword").val();
		var nPassword = $("#nPassword").val();
		var rPassword = $("#rPassword").val();
		var userName = $("#userName").val();
		if(oPassword!=null&&oPassword!=""&&nPassword!=null&&nPassword!=""&&rPassword!=null&&rPassword!=""){
			if(nPassword!=rPassword){
				alert("密码填写不一致");
			}else{	
			$.post("${pageContext.request.contextPath}/dormManager/updatePassword", {
					password : oPassword,
					nPassword : nPassword,
					userName : userName
				}, function(data) {
					if (data == true) {
						alert("修改密码成功");
						window.location.href="${pageContext.request.contextPath}/dormManagerBlank";
					} else {
						alert("原密码错误");
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
					<li><input id="userName" type="hidden"
						class="dfinput" value="${userName}" style="width: 518px;" /></li>
				
					<li><label>原密码<b>*</b></label><input id="oPassword" type="password"
						class="dfinput" placeholder="请填写原密码" style="width: 518px;" /></li>
						
					<li><label>新密码<b>*</b></label><input id="nPassword" type="password"
						class="dfinput" placeholder="请填写新密码" style="width: 518px;" /></li>
						
					<li><label>重复新密码<b>*</b></label><input id="rPassword" type="password"
						class="dfinput" placeholder="请填写重复新密码" style="width: 518px;" /></li>

					<li><label>&nbsp;</label><input name="" type="button"
						class="btn" value="马上修改" onclick="updateOnclick()" /></li>

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
