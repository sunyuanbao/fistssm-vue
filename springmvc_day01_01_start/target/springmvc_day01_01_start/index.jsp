<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/29
  Time: 0:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

    <h3>这个一个</h3>

    <form action="ssuuyt"
          method="post" onsubmit="return check()">
        <br>
        输入area：<input id="area" type="text" name="area"/>
        <br>
        <input type="submit" value="请求数据"/>
    </form>

</body>
</html>
