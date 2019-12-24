<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/29
  Time: 0:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<?xml version="1.0" encoding="UTF-8"?>
<web-app version="2.5" xmlns="http://java.sun.com/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd">
</web-app>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
</head>
<body>


    <table align="center" border="1" cellspacing="0">
        <tr>
            <td>area</td>
            <td>alliance</td>
            <td>team</td>
            <td>id</td>
            <td>name</td>
            <td>task1</td>
            <td>task2</td>
            <td>task3</td>
            <td>task4</td>
            <td>task5</td>
            <td>task6</td>
            <td>task7</td>
            <td>task8</td>
            <td>task9}</td>
            <td>task10</td>

        </tr>
        <c:forEach items="${userList}" var="c" varStatus="userst">
        <tr>
            <td>${c.area}</td>
            <td>${c.alliance}</td>
            <td>${c.team}</td>
            <td>${c.id}</td>
            <td>${c.name}</td>
            <td>${c.task1}</td>
            <td>${c.task2}</td>
            <td>${c.task3}</td>
            <td>${c.task4}</td>
            <td>${c.task5}</td>
            <td>${c.task6}</td>
            <td>${c.task7}</td>
            <td>${c.task8}</td>
            <td>${c.task9}</td>
            <td>${c.task10}</td>
        </tr>
        </c:forEach>


</body>
</html>
