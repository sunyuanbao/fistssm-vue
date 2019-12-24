<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/icon.css">
    <script type="text/javascript" src="../../easyui/jquery.min.js"></script>
    <script type="text/javascript" src="../../easyui/jquery.easyui.min.js"></script>



</head>
<body>

<tr>
    <td>12</td>

</tr>


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
<tr>
    <td>${list.area}</td>
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


<%--<c:forEach items="${list}" var="user" varStatus="status">--%>
<%--     <tr>--%>
<%--    <td> <input type="checkbox" name="area" value="${list.area}"> </td>--%>
<%--     </tr>--%>
<%--</c:forEach>--%>
<%--    <ul class="easyui-tree">--%>
<%--        <li><span>餐单1211</span></li>--%>
<%--        <li><span>餐单1212</span>--%>
<%--        <ul>--%>
<%--            <li><span>餐单112</span></li>--%>
<%--            <li><span>餐单112</span></li>--%>

<%--        </ul>--%>
<%--        </li>--%>
<%--    </ul>--%>

<%--    <table class="easyui-datagrid" data-options="url:'/list',method:'post'" style="width: 400px;height: auto">--%>
<%--        <thead>--%>

<%--        <tr>--%>
<%--            <th field="area">area</th>--%>
<%--            <th field="alliance">alliance</th>--%>
<%--            <th field="team">team</th>--%>
<%--            <th field="id">id</th>--%>
<%--            <th field="name">name</th>--%>
<%--            <th field="task1">task1</th>--%>
<%--            <th field="task2">task2</th>--%>
<%--            <th field="task3">task3</th>--%>
<%--            <th field="task4">task4</th>--%>
<%--            <th field="task5">task5</th>--%>
<%--            <th field="task6">task6</th>--%>
<%--            <th field="task7">task7</th>--%>
<%--            <th field="task8">task8</th>--%>
<%--            <th field="task9">task9</th>--%>
<%--            <th field="task10">task10</th>--%>

<%--        </tr>--%>
<%--        </thead>--%>
<%--    </table>--%>

<%--    <table id="dg" style="width: 400px"></table>--%>
<%--    <script type="text/javascript">--%>
<%--        $(function () {--%>
<%--            $("#dg").datagrid({--%>
<%--                url:'/list',--%>
<%--                method:'post',--%>
<%--                columns:[[--%>
<%--                    {field:"area",title:'area'},--%>
<%--                    {field:"alliance",title:'alliance'},--%>
<%--                    {field:"team",title:'team'},--%>
<%--                    {field:"id",title:'id'},--%>
<%--                    {field:"name",title:'name'},--%>
<%--                    {field:"task1",title:'task1'},--%>
<%--                    {field:"task2",title:'task2'},--%>
<%--                    {field:"task3",title:'task3'},--%>
<%--                    {field:"task4",title:'task4'},--%>
<%--                    {field:"task5",title:'task5'},--%>
<%--                    {field:"task6",title:'task6'},--%>
<%--                    {field:"task7",title:'task7'},--%>
<%--                    {field:"task8",title:'task8'},--%>
<%--                    {field:"task9",title:'task9'},--%>
<%--                    {field:"task10",title:'tas10'},--%>
<%--                ]]--%>
<%--            })--%>

<%--        })--%>

<%--    </script>--%>

<%--    <table class="easyui-datagrid" style="width:400px;height:250px"--%>
<%--           data-options="url:'list',fitColumns:true,singleSelect:true">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th data-options="field:'area',width:100">area</th>--%>
<%--            <th data-options="field:'alliance',width:100">alliance</th>--%>
<%--            <th data-options="field:'team',width:100,align:'right'">team</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--    </table>--%>


    </body>
    </html>
