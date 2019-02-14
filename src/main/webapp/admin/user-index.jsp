<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2019/1/9
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="lib/html5shiv.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
    <!--[if IE 6]>
    <script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>用户信息</title>
</head>
<body>

<c:if test="${empty UserAll_admin }">
    <c:redirect url="/getUserAll_admin.do"></c:redirect>
</c:if>

<nav class="breadcrumb"><i class="Hui-iconfont"></i> 用户信息 <span class="c-gray en">&gt;</span>用户管理 <span class="c-gray en">&gt;</span><a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">刷新</i></a></nav>
<div class="page-container">
    <table class="table table-border table-bordered table-hover table-bg">
        <thead>
        <tr class="text-c">
            <th width="40">ID</th>
            <th width="100">用户名</th>
            <th width="100">真实姓名</th>
            <th>用户类型</th>
            <th width="200">注册时间</th>
            <th width="300">状态</th>
            <th width="70">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${UserAll_admin}" var="u">
        <tr class="text-c">
            <td>${u.userId}</td>
            <td>${u.usermessageName}</td>
            <td><a href="#">${u.usermessageTruename}</a>
            <c:if test="${u.usermessageState==1}">
                <td>借款人</td>
            </c:if>
            <c:if test="${u.usermessageState==2}">
                <td>出借人</td>
            </c:if>
            <td>${u.usermessageDate}</td>

            <td class="td-status"><span class="label label-success radius">已启用</span></td>
            <td class="td-manage"><a style="text-decoration:none" onClick="admin_stop(this,'${u.userId}')" href="javascript:;" title="停用"><i class="Hui-iconfont">停用</i></a></td>

        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript">
    /*管理员-角色-添加*/
    function admin_role_add(url){
        layer_show(url);
    }

    function admin_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){
            //此处请求后台程序，下方是成功后的前台处理……

            $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_start(this,id)" href="javascript:;" title="启用" style="text-decoration:none"><i class="Hui-iconfont">启用</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label radius">已停用</span>');
            $(obj).remove();
            layer.msg('已停用!',{icon: 5,time:1000});
        });
    }


    /*管理员-启用*/
    function admin_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            //此处请求后台程序，下方是成功后的前台处理……

            $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_stop(this,id)" href="javascript:;" title="停用" style="text-decoration:none"><i class="Hui-iconfont">停用</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!', {icon: 6,time:1000});
        });
    }

    /*管理员-角色-编辑*/
    function admin_role_edit(title,url,id,w,h){
        layer_show(title,url,w,h);
    }
    /*管理员-角色-删除*/
    function admin_role_del(obj,id){
        layer.confirm('用户删除须谨慎，确认要删除吗？',function(index){
            $.ajax({
                type: 'POST',
                url: '',
                dataType: 'json',
                success: function(data){
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                },
                error:function(data) {
                    console.log(data.msg);
                },
            });
        });
    }
</script>
</body>
</html>