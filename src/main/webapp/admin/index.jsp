<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/23
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>主界面</title>
</head>
<body>

<h1>主界面</h1>
<h1>欢迎${uname}</h1>
<br/>
<shiro:hasPermission name="add">
<a href="/admin/add.jsp">增加权限</a>
</shiro:hasPermission>
<shiro:hasPermission name="del">
<a href="/admin/del.jsp">删除权限</a>
</shiro:hasPermission>
<shiro:hasPermission name="upda">
<a href="/admin/upda.jsp">修改权限</a>
</shiro:hasPermission>
<shiro:hasPermission name="select">
<a href="/getUserAll.do">查询权限</a>
</shiro:hasPermission>





</body>
</html>
