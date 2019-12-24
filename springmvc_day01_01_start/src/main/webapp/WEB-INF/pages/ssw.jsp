<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2019-10-30
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
${list[0].area}
${list.id}
${UserAll[0].id}
${UserAll.id}
${msg}

<div id="div1" style="display:none;">list</div>
<div id="div2" style="display:none;">list</div>
<script>
    var obj = eval("(" + document.getElementById("div1").innerHTML + ")");
    alert(obj.msg_title);


    var array = eval("(" + document.getElementById("div2").innerHTML + ")");
    for (var i = 0; i < array.length; i++) {
        alert(array[i].gy_webnum);
        alert(array[i]["gy_webnum"]);
    }
</script>


<tr>
    <td>123:
        <form action="/list" method="post"></form>

    </td>


</tr>
<tr>
    <th>area</th>
    <th>alliance</th>
    <th>team</th>
    <th>id</th>
    <th>name</th>
    <th>task1</th>
    <th>task2</th>
    <th>task3</th>
    <th>task4</th>
    <th>task5</th>
    <th>task6</th>
    <th>task7</th>
    <th>task8</th>
    <th>task9</th>
    <th>task10</th>
</tr>
<br>
<tr>
    <td>${userlist.area}</td>
    <td>${list.alliance}</td>
    <td>${list.team}</td>
    <td>${list.id}</td>
    <td>${list.name}</td>
    <td>${list.task1}</td>
    <td>${list.task2}</td>
    <td>${list.task3}</td>
    <td>${list.task4}</td>
    <td>${list.task5}</td>
    <td>${list.task6}</td>
    <td>${list.task7}</td>
    <td>${list.task8}</td>
    <td>${list.task9}</td>
    <td>${list.task10}</td>
</tr>
</body>
</html>
