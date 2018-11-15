<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/public/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/public/css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/select-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/kindeditor.js"></script>

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
function deleteOnclick(a) {
		var id=a.id;
		$.post(
				"${pageContext.request.contextPath}/dormBuild/delete",
				   {id:id},
				   function(data){
						if(data=="true"){
							window.location.reload();
							alert("成功删除一条信息");
						}else{
							   alert("删除信息失败");
						   }
					}
			   );
}
</script>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/dormBuild/info">
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="${pageContext.request.contextPath}/main/index">首页</a></li>
    </ul>
    </div>
 
     <div class="formbody">
    <div id="usual1" class="usual"> 
        	<div id="tab2" class="tabson">
    
    <ul class="seachform">
    
    <li><label>宿舍楼名称</label><input name="dormBuildName" type="text" class="scinput" /></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="查询"/></li>
    <a href="${pageContext.request.contextPath}/adminDormBuildAdd" style="margin-left: 550px;font-size:15px;color: #0000FF;">添加宿舍楼信息</a>
    </ul>
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>编号<i class="sort"><img src="${pageContext.request.contextPath}/public/images/px.gif" /></i></th>
		<th>宿舍楼名称</th>
		<th>简介</th>
		<th>操作</th>
        </tr>
        </thead>
        
        <tbody>
        <c:forEach items="${dormBuild}" var="db" varStatus="sta">
        <tr>
        <td>${sta.index+1}</td>
        <td>${db.dormBuildName}</td>
        <td>${db.dormBuildDetail}</td>
         <td><a href="#" class="tablelink" onclick="deleteOnclick(this)" id="${db.dormBuildId}"> 删除</a> <a href="${pageContext.request.contextPath}/adminDormBuildUpdate?dormBuildId=${db.dormBuildId}&dormBuildName=${db.dormBuildName}&dormBuildDetail=${db.dormBuildDetail}" class="tablelink">修改</a> </td>
        </tr> 
      </c:forEach>
        </tbody> 
    </table>
    <%-- <a href="${pageContext.request.contextPath}/user/info?page=${page-1>0?page-1:page}">上一页</a>
   	第${page}页
   	<a href="${pageContext.request.contextPath}/user/info?page=${page+1<=pageNum?page+1:page}">下一页</a>
  	一共${pageNum}页 --%>
    
    </div>  

    </div>  
       
	</div> 
	</form>
</body>
</html>