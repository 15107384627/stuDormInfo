<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script language="javascript" type="text/javascript">
        function checkInCorrect()      //判断用户名和密码是否为空
        {
            if (document.getElementById('username').value == "") {
                alert('请输入用户名！')
                document.getElementById('username').focus();
                return false
            }
            if (document.getElementById('password').value == "") {
                alert('请输入密码！')
                document.getElementById('password').focus();
                return false
            }
            else {
                saveInfo();
                return true;
            }
        }
 
        saveInfo = function () {
            try {
                var isSave = document.getElementById('remember_password').checked;   //保存按键是否选中
                if (isSave) {
                    var username = document.getElementById('username').value;
                    var password = document.getElementById('password').value;
                    if (username != "" && password != "") {
                        SetCookie(username, password);
                    }
                } else {
                    SetCookie("", "");
                }
            } catch (e) {
 
            }
        }
 
        function SetCookie(username, password) {
            var Then = new Date();
            Then.setTime(Then.getTime() + 1866240000000);
            document.cookie = "username=" + username + "%%" + password + ";expires=" + Then.toGMTString();
        }
 
        function GetCookie() {
            var nmpsd;
            var nm;
            var psd;
            var cookieString = new String(document.cookie);
            var cookieHeader = "username=";
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
                    document.getElementById('username').value = nm;
                    document.getElementById('password').value = psd;
                    if (nm != "" && psd != "") {
                        // document.forms[0].checkbox.checked = true;
                        document.getElementById('remember_password').checked = true;
                    }
                }
            }
        }
    </script>
</head>
<body onLoad="document.getElementById('username').focus();GetCookie();">
<form>
    <!--onblur="GetPwdAndChk()"-->
    用户名:<input type="text" id="username">
    密 码:<input type="password" id="password">
    <input type="checkbox" id="remember_password"/>记住密码
    <input type="button" OnClick="checkInCorrect()" value="进入"/>
</form>
</body>

</html>