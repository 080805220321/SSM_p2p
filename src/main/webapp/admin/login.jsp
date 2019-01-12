<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/23
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="../js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">

    function ajax(){
        $.post("/ajax.do",{'name': "张三"},function(da){
            $('#value').val(da);
        });
    }

</script>
<body>

<a href=# onclick="ajax()">Ajax提交></a>
<a href="/hello.do">SSM进入></a>
<br/>
<input type="text" value="" id="value"/>
<br/>
<form method="post" action="/addUser.do">
    <input type="text" name="uName"/>
    <input type="text" name="uEmail"/>
    <input type="text" name="uMessage"/>
    <input type="submit" value="提交"/>
</form>
<br/>

<h3>用户验证</h3>
<h4>${msg}</h4>
<form method="post" action="/login.do">
    <input type="text" name="name"/><br/>
    <input type="password" name="pwd"/>
    <input type="submit" value="提交"/>
</form>


</body>
</html>
