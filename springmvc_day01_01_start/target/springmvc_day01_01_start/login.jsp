<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2019-10-28
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
response.setHeader("Access-Control-Allow-Origin", "*");
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="login.action"
      method="post" onsubmit="return check()">
    <br>
    账号：<input id="name" type="text" name="name"/>
    <br>
    密码：<input id="password" type="password" name="password"/>
    <br>
    <br>
    <input type="submit" value="登录"/>
</form>



</body>
</html>
