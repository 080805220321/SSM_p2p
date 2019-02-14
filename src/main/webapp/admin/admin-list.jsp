<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
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
<title>管理员列表</title>
</head>
<body>

<c:if test="${empty StaffAll_admin }">
	<c:redirect url="/getStaffAll_admin.do"></c:redirect>
</c:if>

<nav class="breadcrumb"><i class="Hui-iconfont"></i> 首页 <span class="c-gray en">&gt;</span> 管理员管理 <span class="c-gray en">&gt;</span> 管理员列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">刷新</i></a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray mt-20"><a href="javascript:;" onclick="admin_add('添加管理员','admin-add.jsp','800','500')" class="btn btn-primary radius"><i class="Hui-iconfont"></i> 添加管理员</a></div>
	<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="9">员工列表</th>
			</tr>
			<tr class="text-c">
				<th width="40">ID</th>
				<th width="150">员工账号</th>
				<th width="150">员工密码</th>
				<th width="150">员工角色</th>
				<th>角色部门</th>
				<th width="100">状态</th>
				<th width="100">操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${StaffAll_admin}" var="s">
			<tr class="text-c">
				<td>${s.staffId}</td>
				<td>${s.staffName}</td>
				<td>${s.staffPwd}</td>
				<td>${s.roleName}</td>
				<td>${s.deptName}</td>
				<c:if test="${s.staffState==0}">
				<td class="td-status"><span class="label radius">已禁用</span></td>
				<td class="td-manage"><a style="text-decoration:none" onClick="admin_start(this,${s.staffId})" href="javascript:;" title="启用"><i class="Hui-iconfont">启用</i></a> <a title="编辑" href="javascript:;" onclick="admin_edit('管理员编辑','admin-update.jsp',${s.staffId},'800','500')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">编辑</i></a></td>
				</c:if>
				<c:if test="${s.staffState==1}">
					<td class="td-status"><span class="label label-success radius">已启用</span></td>
					<td class="td-manage"><a style="text-decoration:none" onClick="admin_stop(this,${s.staffId})" href="javascript:;" title="停用"><i class="Hui-iconfont">停用</i></a> <a title="编辑" href="javascript:;" onclick="admin_edit('管理员编辑','admin-update.jsp',${s.staffId},'800','500')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">编辑</i></a></td>
				</c:if>
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
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
/*
	参数解释：
	title	标题
	url		请求的url
	id		需要操作的数据id
	w		弹出层宽度（缺省调默认值）
	h		弹出层高度（缺省调默认值）
*/
/*管理员-增加*/
function admin_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*管理员-编辑*/
function admin_edit(title,url,id,w,h){
    $.post('/updateStaff_admin_up.do',{'id':id},function(da){
        layer_show(title,url,w,h);
	});

}
/*管理员-停用*/
function admin_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		var idd = 0;
		$.post('/updateStaff_admin.do',{'id':id,'idd':idd},function(da){
            $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_start(this,id)" href="javascript:;" title="启用" style="text-decoration:none"><i class="Hui-iconfont">启用</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
            $(obj).remove();
            layer.msg('已停用!',{icon: 5,time:1000});
		});

	});
}

/*管理员-启用*/
function admin_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		var idd =1;
        $.post('/updateStaff_admin.do',{'id':id,'idd':idd},function(da){
            $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_stop(this,id)" href="javascript:;" title="停用" style="text-decoration:none"><i class="Hui-iconfont">停用</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!', {icon: 6,time:1000});
        });
	});
}
</script>
</body>
</html>