<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生宿舍管理系统界面</title>
</head>
<frameset rows="120,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="${pageContext.request.contextPath}/top" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="250,*" frameborder="no" border="0" framespacing="0">
    <frame src="${pageContext.request.contextPath}/adminLeft" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="${pageContext.request.contextPath}/adminBlank" name="rightFrame" id="rightFrame" title="rightFrame" />
  </frameset>
</frameset>
<noframes><body>
</body></noframes>
</html>
