<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.studorm.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宿舍管理系统登录</title>
<script language="JavaScript" src="${pageContext.request.contextPath}/public/js/jquery-1.8.2.js"></script>
<style type="text/css">
body {
	padding-top: 200px;
	padding-bottom: 40px;
	background-image: url('public/images/bg.jpg');
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed; /* 这个是如果浏览器滚动，图片不产生滚动效果 */
}

.header {
	text-align: center;
}

.loginForm {
	max-width: 300px;
	padding: 19px 29px 0px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	border-radius: 5px; /* 羽化 */
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.loginForm .header, .loginForm .checkbox {
	margin-bottom: 10px;
}

.loginForm input[type="text"], .loginForm input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}

.input-block-level {
	display: block;
	width: 100%;
	min-height: 30px;
	box-sizing: border-box;
}

a {
	color: #0088cc;
	text-decoration: none;
}

.btn {
	border-radius: 4px;
	color: #ffffff;
	background-color: blue;
	width: 80px;
	height: 40px;
	margin-top: 10px;
	margin-left: 110px;
}
</style>
</head>
<body onLoad="document.getElementById('userName').focus();GetCookie();">
	<div class="container">
			<div class="loginForm">
			<h2 class="header">
				<font color="gray">宿舍管理系统</font>
			</h2>
			<input id="userName" name="userName" value="${user.userName}" type="text" class="input-block-level" placeholder="用户名" size="35px" width="30px" />
			
			<input id="password" name="password" value="${user.password }" type="password" class="input-block-level" placeholder="密码" size="35px" width="30px" />
			
			<label class="radioType" for="admin">
			<input id="admin" type="radio" name="userType" value="admin" ${userType==1?'checked':''} />
			 系统管理员
			</label>
			
			<label class="radioType">
			<input id="dormManager" type="radio" name="userType" value="dormManager" ${userType==2?'checked':''} /> 
			宿舍管理员
			</label>
			
			<label class="radioType">
			<input id="student" type="radio" name="userType" value="student" ${userType==3?'checked':''} />
			学生
			</label> <br> <br>
			
			<label class="checkbox">
			<input id="remember_password" name="remember_password" type="checkbox" value="remember-me" ${remember==1?'checked':''}>
			记住我 &nbsp;&nbsp;&nbsp;&nbsp;
			<font id="error" name="error" color="red">${error}</font>
			</label> <br>
			
			<input class="btn" name="" type="button" value="登录"  onclick="login()" />
		</div>
	</div>
</body>
<script>
/**************** 记住密码 ******************/
function SetCookie(userName, password) {
    var Then = new Date();
    Then.setTime(Then.getTime() + 1866240000000);
    document.cookie = "userName=" + userName + "%%" + password + ";expires=" + Then.toGMTString();
}
function GetCookie() {
    var nmpsd;
    var nm;
    var psd;
    var cookieString = new String(document.cookie);
    var cookieHeader = "userName=";
    var beginPosition = cookieString.indexOf(cookieHeader);
    cookieString = cookieString.substring(beginPosition);
    var ends = cookieString.indexOf(";");
    if (ends != -1) {
        cookieString = cookieString.substring(0, ends);
    }
    if (beginPosition > -1) {
        nmpsd = cookieString.substring(cookieHeader.length);
        if (nmpsd != "") {
            beginPosition = nmpsd.indexOf("%%");
            nm = nmpsd.substring(0, beginPosition);
            psd = nmpsd.substring(beginPosition + 2);
            document.getElementById('userName').value = nm;
            document.getElementById('password').value = psd;
            if (nm != "" && psd != "") {
                // document.forms[0].checkbox.checked = true;
                document.getElementById('remember_password').checked = true;
            }
        }
    }
}
/******************************/
function login(){
	var userName = $("#userName").val();
	var password = $("#password").val();
	var userTypes =document.getElementsByName("userType");
	var userType = null;
	for (var i = 0; i < userTypes.length; i++) {
		if (userTypes[i].checked) {
			userType = userTypes[i].value;
			break;
		}
	}
	if (userName == null || userName == "") {
		document.getElementById("error").innerHTML = "用户名不能为空";
	}
	if (password == null || password == "") {
		document.getElementById("error").innerHTML = "密码不能为空";
	}
	if (userType == null || userType == "") {
		document.getElementById("error").innerHTML = "请选择用户类型";
	}else{
		try {
	         var isSave = document.getElementById('remember_password').checked;   //保存按键是否选中
	         if (isSave) {
	             var username = document.getElementById('userName').value;
	             var password = document.getElementById('password').value;
	             if (userName != "" && password != "") {
	                 SetCookie(userName, password);
	             }
	         } else {
	             SetCookie("", "");
	         }
	     } catch (e) {

	     }
		
		$.post("${pageContext.request.contextPath}/user/login",
				{userName:userName,password:password,userType:userType}, 
				function(data){
					if(data=="true1"){
						window.location.href="${pageContext.request.contextPath}/user/mainAdmin";
					}else if(data=="true2"){
							window.location.href="${pageContext.request.contextPath}/user/mainManager";
						}else if(data=="true3"){
								window.location.href="${pageContext.request.contextPath}/user/mainStudent";
							}else if(data=="false1"){
						   alert("用户名密码错误或为空，登录失败");
					   }else if(data=="false"){
						   alert("用户登录失败");
					}
				});
			} 
		}

</script>
</html>