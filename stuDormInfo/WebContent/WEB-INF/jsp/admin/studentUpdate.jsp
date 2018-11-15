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
	function UpdateOnclick() {
		var studentId = $("#studentId").val();
		var stuNum = $("#stuNum").val();
		var name = $("#name").val();
		var dormBuildId = $("#dormBuildId").val();
		var dormName = $("#dormName").val();
		var sex= $("#sex").val();
		var tel = $("#tel").val();
		if(studentId!=null&&studentId!=""&&stuNum!=null&&stuNum!=""&&name!=null&&name!=""&&dormBuildId!=null&&dormBuildId!=""&&dormName!=null&&dormName!=""&&sex!=null&&sex!=""&&tel!=null&&tel!=""){
				$.post("${pageContext.request.contextPath}/student/update", {
					studentId : studentId,
					userName : stuNum,
					name : name,
					dormBuildId : dormBuildId,
					dormName : dormName,
					sex : sex,
					tel : tel
				}, function(data) {
					if (data == true) {
						alert("成功修改一条数据");
						window.location.href="${pageContext.request.contextPath}/student/info";
					} else {
						alert("修改失败");
					}
				});
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
				<li><label>学生ID<b>*</b></label><input id="studentId" type="text"
						class="dfinput" disabled value="${studentId}" style="width: 518px;" /></li>
				
					<li><label>学号<b>*</b></label><input id="stuNum" type="text"
						class="dfinput" value="${stuNum}" style="width: 518px;" /></li>
				
					<li><label>姓名<b>*</b></label><input id="name" type="text"
						class="dfinput" value="${name}" style="width: 518px;" /></li>
						
					<li><label>宿舍楼ID<b>*</b></label><input id="dormBuildId" type="text"
						class="dfinput" value="${dormBuildId}" style="width: 518px;" /></li>

					<li><label>宿舍名<b>*</b></label><input id="dormName" type="text"
						class="dfinput" value="${dormName}" style="width: 518px;" /></li>
						
					<li><label>性别<b>*</b></label><input id="sex" type="text"
						class="dfinput" value="${sex}" style="width: 518px;" /></li>
						
					<li><label>电话<b>*</b></label><input id="tel" type="text"
						class="dfinput" value="${tel}" style="width: 518px;" /></li>

					<li><label>&nbsp;</label><input name="" type="button"
						class="btn" value="保存" onclick="UpdateOnclick()" /></li>

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
