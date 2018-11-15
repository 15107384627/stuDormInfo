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
		var dormBuildName = $("#dormBuildName").val();
		var dormBuildDetail = $("#dormBuildDetail").val();
		if(dormBuildName!=null&&dormBuildName!=""&&dormBuildDetail!=null&&dormBuildDetail!=""){
				$.post("${pageContext.request.contextPath}/dormBuild/add", {
					dormBuildName : dormBuildName,
					dormBuildDetail : dormBuildDetail,
				}, function(data) {
					if (data == true) {
						alert("成功添加一条数据");
						window.location.href="${pageContext.request.contextPath}/dormBuild/info";
					} else {
						alert("添加的数据已有，不能重复,添加失败");
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
					<li><label>宿舍楼名称<b>*</b></label><input id="dormBuildName" name="dormBuildName" type="text"
						class="dfinput" placeholder="请填写宿舍楼名称" style="width: 518px;" /></li>
						
					<li><label>简介<b>*</b></label><input id="dormBuildDetail" name="dormBuildDetail" type="text"
						class="dfinput" placeholder="请填写宿舍楼简介" style="width: 518px;" /></li>

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
