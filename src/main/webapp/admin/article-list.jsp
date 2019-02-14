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
<title>资讯列表</title>
</head>
<body>

<c:if test="${empty UserBorrowMoneyAll }">
	<c:redirect url="/getUserBorrowMoneyAll.do"></c:redirect>
</c:if>

<nav class="breadcrumb"><i class="Hui-iconfont"></i> 首页 <span class="c-gray en">&gt;</span> 借款管理 <span class="c-gray en">&gt;</span> 借款标列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont"></i>刷新/提交</a></nav>
<div class="page-container">
	<div class="text-c">
	 <span class="select-box inline">
		<select id="borrowMoneyAll" name="" class="select">
			<option value="所有">所有标</option>
			<option value="0">待审核标</option>
			<option value="1">未满标</option>
			<option value="2">已满标</option>
			<option value="3">已流标</option>
			<option value="4">已废标</option>
		</select>
	 </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="select-box inline">
			<input type="text" id="adminuser" placeholder="用户昵称" style="width:250px" class="input-text">
		<button name="" onclick="adminuser()" class="btn btn-success" type="submit"><i class="Hui-iconfont"></i> 搜索</button>
		</span>
	</div>

	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-responsive">
			<thead>
				<tr class="text-c">
					<th width="60">ID</th>
					<th width="60">用户ID</th>
					<th width="60">用户昵称</th>
					<th width="60">真实姓名</th>
					<th width="60">借款金额</th>
					<th width="60">借款期数</th>
					<th width="60">起息日</th>
					<th width="60">借款用途</th>
					<th width="60">还款方式</th>
					<th width="60">募集截止日期</th>
					<th width="60">需还款利息</th>
					<th width="60">应到账金额</th>
					<th width="60">状态</th>
					<th width="120">操作</th>
				</tr>
			</thead>
			<tbody id="userBorrowMoneyAll">
			<c:forEach items="${UserBorrowMoneyAll}" var="u">
				<tr class="text-c">
					<td bgcolor="gray"><a onclick="admin_borrowMoneyId(${u.borrowMoneyId})">${u.borrowMoneyId}</a></td>
					<td>${u.userId}</td>
					<td>${u.userMessageName}</td>
					<td>${u.userMessageTruename}</td>
					<td>${u.borrowMoneyBorrowMoney} 元</td>
					<td>${u.borrowMoneyBorrowDate} 期</td>
					<td>${u.borrowMoneyOrderDate}</td>
					<td>${u.borrowMoneyUse}</td>
					<td>${u.borrowMoneyWay}</td>
					<td>${u.borrowMoneyOrderDate}</td>
					<td>${u.borrowMoneyInterest} 元</td>
					<td>${u.borrowMoneyMoney} 元</td>
					<c:if test="${u.borrowMoneyState==0}">
						<td class="td-status"><span class="label label-success radius">待审核</span></td>
						<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings_0(this,${u.borrowMoneyId})" href="javascript:;" title="审核">审核</a></td>
					</c:if>
					<c:if test="${u.borrowMoneyState==1}">
						<td class="td-status"><span class="label label-success radius">未满标</span></td>
						<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings_1(this,${u.borrowMoneyId})" href="javascript:;" title="流标">流标</a></td>
					</c:if>
					<c:if test="${u.borrowMoneyState==2}">
						<td class="td-status"><span class="label label-success radius">已满标</span></td>
						<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings_2(this,${u.borrowMoneyId})" href="javascript:;" title="放款">放款</a></td>
					</c:if>
					<c:if test="${u.borrowMoneyState==3}">
						<td class="td-status"><span class="label radius">已流标</span></td>
						<td class="td-status"><span class="label radius">已流标不能操作</span></td>
					</c:if>
					<c:if test="${u.borrowMoneyState==4}">
						<td class="td-status"><span class="label radius">已废标</span></td>
						<td class="td-status"><span class="label radius">已废标不能操作</span></td>
					</c:if>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
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

	function admin_borrowMoneyId(id){
		alert(id);
		$.post('/getUserBorrowMoneyXiangqing.do',{'id':id},function(){
            layer_show('订单详情','article-list_xiangqing.jsp','','500');
		});

	}


/*审核标*/
function user_drawings_0(obj,id){
    layer.confirm('审核该标种？', {
            btn: ['通过','不通过','取消'],
            shade: false,
            closeBtn: 0
        },
        function(){
        	var stateId=1;
            $.post('/update_user_drawings.do', {'id': id, 'stateId':stateId}, function(da) {
				if (da!= null) {
					$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="user_drawings_0(this,'+da+')">取消通过</a>');
					$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">审核通过</span>');
					$(obj).remove();
					layer.msg('审核通过', {icon: 6, time: 1000});
				} else {
					layer.msg('操作失败,请稍后重试!', {icon: 5, time: 1000});
				}
            });
        },
        function(){
            var stateId=4;
			$.post('/update_user_drawings.do', {'id': id, 'stateId':stateId}, function(da) {
                if(da!=null){
					$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="user_drawings_0(this,'+da+')">通过</a>');
            		$(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">已流标</span>');
            		$(obj).remove();
            		layer.msg('未通过', {icon:5,time:1000});
                }else{
                    layer.msg('操作失败,请稍后重试!', {icon:5,time:1000});
                }
        });
	});
}
/*未满标--流标*/
function user_drawings_1(obj,id){
    layer.confirm('流标该标种？', {
            btn: ['确认流标','取消流标','返回'],
            shade: false,
            closeBtn: 0
        },
        function(){
        	var stateId=3;
            $.post('/update_user_drawings.do', {'id': id, 'stateId':stateId}, function(da) {
                if (da!= null) {
                    $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="user_drawings_1(this,'+da+')">取消流标</a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">已流标</span>');
                    $(obj).remove();
                    layer.msg('已流标', {icon: 5, time: 1000});
                }else{
                    layer.msg('操作失败,请稍后重试!', {icon:5,time:1000});
                }
            });
        },
        function(){
        	var stateId=1;
            $.post('/update_user_drawings.do', {'id': id, 'stateId':stateId}, function(da) {
                if (da!= null) {
                    $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="user_drawings_1(this,'+da+')">流标</a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">未满标</span>');
                    $(obj).remove();
                    layer.msg('已取消流标', {icon: 6, time: 1000});
                }else{
                    layer.msg('操作失败,请稍后重试!', {icon:5,time:1000});
                }
            });
        });
}
/*已满标--放款*/
function user_drawings_2(obj,id){
    layer.confirm('放款该标种？', {
            btn: ['确认放款','取消放款','返回'],
            shade: false,
            closeBtn: 0
        },
        function(){
        var stateId=4;
            $.post('/update_user_drawings.do', {'id': id, 'stateId':stateId}, function(da) {
                if (da!= null) {
                    $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="user_drawings_2(this,'+da+')">取消放款</a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已放款</span>');
                    $(obj).remove();
                    layer.msg('已放款', {icon: 6, time: 1000});
                }else{
                    layer.msg('操作失败,请稍后重试!', {icon:5,time:1000});
                }
            });
        },
        function(){
			var stateId=3;
            $.post('/update_user_drawings.do', {'id': id, 'stateId':stateId}, function(da) {
                if (da!= null) {
                    $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="user_drawings_2(this,'+da+')">放款</a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已满标</span>');
                    $(obj).remove();
                    layer.msg('已流标', {icon: 5, time: 1000});
                }else{
                    layer.msg('操作失败,请稍后重试!', {icon:5,time:1000});
                }
        	});
		});
}
$(function(){
    //标种查询
    $("#borrowMoneyAll").change(function(){
        var html;
        var name = $(this).children('option:selected').val();
        //查询所有，刷新子页面
        if(name=='所有'){
            location.reload();
		}
			$.post('/getAdminUser.do', {'type': name}, function(data) {
                var da =eval('('+ data +')');
                $.each(da,function(index,item) {
					if(item.borrowMoneyState==0){
                    html+= '<tr class="text-c">'
						+ '<td bgcolor="gray"><a onclick="admin_borrowMoneyId( '+item.borrowMoneyId+')">'+item.borrowMoneyId+'</a></td>'
                        + '<td>' +item.userId+ '</td>'
                        + '<td>' +item.userMessageName+ '</td>'
                        + '<td>' +item.userMessageTruename+ '</td>'
                        + '<td>' +item.borrowMoneyBorrowMoney+ ' 元</td>'
                        + '<td>' +item.borrowMoneyBorrowDate+ ' 期</td>'
                        + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                        + '<td>' +item.borrowMoneyUse+ '</td>'
                        + '<td>' +item.borrowMoneyWay+ '</td>'
                        + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                        + '<td>' +item.borrowMoneyInterest+ ' 元</td>'
						 + '<td>'  +item.borrowMoneyMoney+' 元</td>'
                        + '<td class="td-status"><span class="label label-success radius">待审核</span></td>'
                        + '<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings_0(this, '+item.borrowMoneyId+' )" href="javascript:;" title="审核">审核</a></td>';
                    }
                    if(item.borrowMoneyState==1){
                        html+= '<tr class="text-c">'
                            + '<td bgcolor="gray"><a onclick="admin_borrowMoneyId( '+item.borrowMoneyId+')">'+item.borrowMoneyId+'</a></td>'
                            + '<td>' +item.userId+ '</td>'
                            + '<td>' +item.userMessageName+ '</td>'
                            + '<td>' +item.userMessageTruename+ '</td>'
                            + '<td>' +item.borrowMoneyBorrowMoney+ ' 元</td>'
                            + '<td>' +item.borrowMoneyBorrowDate+ ' 期</td>'
                            + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                            + '<td>' +item.borrowMoneyUse+ '</td>'
                            + '<td>' +item.borrowMoneyWay+ '</td>'
                            + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                            + '<td>' +item.borrowMoneyInterest+ ' 元</td>'
                            + '<td>'  +item.borrowMoneyMoney+' 元</td>'
                            + '<td class="td-status"><span class="label label-success radius">未满标</span></td>'
                            + '<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings_1(this,'+item.borrowMoneyId+')" href="javascript:;" title="流标">流标</a></td>';
                    }
                    if(item.borrowMoneyState==2){
                        html+= '<tr class="text-c">'
                            + '<td bgcolor="gray"><a onclick="admin_borrowMoneyId( '+item.borrowMoneyId+')">'+item.borrowMoneyId+'</a></td>'
                            + '<td>' +item.userId+ '</td>'
                            + '<td>' +item.userMessageName+ '</td>'
                            + '<td>' +item.userMessageTruename+ '</td>'
                            + '<td>' +item.borrowMoneyBorrowMoney+ ' 元</td>'
                            + '<td>' +item.borrowMoneyBorrowDate+ ' 期</td>'
                            + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                            + '<td>' +item.borrowMoneyUse+ '</td>'
                            + '<td>' +item.borrowMoneyWay+ '</td>'
                            + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                            + '<td>' +item.borrowMoneyInterest+ ' 元</td>'
                            + '<td>'  +item.borrowMoneyMoney+' 元</td>'
                            + '<td class="td-status"><span class="label label-success radius">已满标</span></td>'
                            + '<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings_2(this,'+item.borrowMoneyId+')" href="javascript:;" title="放款">放款</a></td>';
                    }
                    if(item.borrowMoneyState==3){
                        html+= '<tr class="text-c">'
                            + '<td bgcolor="gray"><a onclick="admin_borrowMoneyId( '+item.borrowMoneyId+')">'+item.borrowMoneyId+'</a></td>'
                            + '<td>' +item.userId+ '</td>'
                            + '<td>' +item.userMessageName+ '</td>'
                            + '<td>' +item.userMessageTruename+ '</td>'
                            + '<td>' +item.borrowMoneyBorrowMoney+ ' 元</td>'
                            + '<td>' +item.borrowMoneyBorrowDate+ ' 期</td>'
                            + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                            + '<td>' +item.borrowMoneyUse+ '</td>'
                            + '<td>' +item.borrowMoneyWay+ '</td>'
                            + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                            + '<td>' +item.borrowMoneyInterest+ ' 元</td>'
                            + '<td>'  +item.borrowMoneyMoney+' 元</td>'
                            + '<td class="td-status"><span class="label radius">已流标</span></td>'
                            + '<td class="td-status"><span class="label radius">已流标不能操作</span></td>';
                    }
                    if(item.borrowMoneyState==4){
                        html+= '<tr class="text-c">'
                            + '<td bgcolor="gray"><a onclick="admin_borrowMoneyId( '+item.borrowMoneyId+')">'+item.borrowMoneyId+'</a></td>'
                            + '<td>' +item.userId+ '</td>'
                            + '<td>' +item.userMessageName+ '</td>'
                            + '<td>' +item.userMessageTruename+ '</td>'
                            + '<td>' +item.borrowMoneyBorrowMoney+ ' 元</td>'
                            + '<td>' +item.borrowMoneyBorrowDate+ ' 期</td>'
                            + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                            + '<td>' +item.borrowMoneyUse+ '</td>'
                            + '<td>' +item.borrowMoneyWay+ '</td>'
                            + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                            + '<td>' +item.borrowMoneyInterest+ ' 元</td>'
                            + '<td>'  +item.borrowMoneyMoney+' 元</td>'
                            + '<td class="td-status"><span class="label radius">已废标</span></td>'
                            + '<td class="td-status"><span class="label radius">已废标不能操作</span></td>';
                    }

                });
                $('#userBorrowMoneyAll').html(html);
                });
    });
});

function adminuser(){
	var name = $('#adminuser').val();
    var html;
    $.post('/getAdminUser.do', {'name': name}, function(data) {
        var da =eval('('+ data +')');
        $.each(da,function(index,item) {
            if(item.borrowMoneyState==0){
                html+= '<tr class="text-c">'
                    + '<td bgcolor="gray"><a onclick="admin_borrowMoneyId( '+item.borrowMoneyId+')">'+item.borrowMoneyId+'</a></td>'
                    + '<td>' +item.userId+ '</td>'
                    + '<td>' +item.userMessageName+ '</td>'
                    + '<td>' +item.userMessageTruename+ '</td>'
                    + '<td>' +item.borrowMoneyBorrowMoney+ ' 元</td>'
                    + '<td>' +item.borrowMoneyBorrowDate+ ' 期</td>'
                    + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                    + '<td>' +item.borrowMoneyUse+ '</td>'
                    + '<td>' +item.borrowMoneyWay+ '</td>'
                    + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                    + '<td>' +item.borrowMoneyInterest+ ' 元</td>'
                    + '<td>'  +item.borrowMoneyMoney+' 元</td>'
                    + '<td class="td-status"><span class="label label-success radius">待审核</span></td>'
                    + '<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings_0(this, '+item.borrowMoneyId+' )" href="javascript:;" title="审核">审核</a></td>';
            }
            if(item.borrowMoneyState==1){
                html+= '<tr class="text-c">'
                    + '<td bgcolor="gray"><a onclick="admin_borrowMoneyId( '+item.borrowMoneyId+')">'+item.borrowMoneyId+'</a></td>'
                    + '<td>' +item.userId+ '</td>'
                    + '<td>' +item.userMessageName+ '</td>'
                    + '<td>' +item.userMessageTruename+ '</td>'
                    + '<td>' +item.borrowMoneyBorrowMoney+ ' 元</td>'
                    + '<td>' +item.borrowMoneyBorrowDate+ ' 期</td>'
                    + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                    + '<td>' +item.borrowMoneyUse+ '</td>'
                    + '<td>' +item.borrowMoneyWay+ '</td>'
                    + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                    + '<td>' +item.borrowMoneyInterest+ ' 元</td>'
                    + '<td>'  +item.borrowMoneyMoney+' 元</td>'
                    + '<td class="td-status"><span class="label label-success radius">未满标</span></td>'
                    + '<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings_1(this,'+item.borrowMoneyId+')" href="javascript:;" title="流标">流标</a></td>';
            }
            if(item.borrowMoneyState==2){
                html+= '<tr class="text-c">'
                    + '<td bgcolor="gray"><a onclick="admin_borrowMoneyId( '+item.borrowMoneyId+')">'+item.borrowMoneyId+'</a></td>'
                    + '<td>' +item.userId+ '</td>'
                    + '<td>' +item.userMessageName+ '</td>'
                    + '<td>' +item.userMessageTruename+ '</td>'
                    + '<td>' +item.borrowMoneyBorrowMoney+ ' 元</td>'
                    + '<td>' +item.borrowMoneyBorrowDate+ ' 期</td>'
                    + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                    + '<td>' +item.borrowMoneyUse+ '</td>'
                    + '<td>' +item.borrowMoneyWay+ '</td>'
                    + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                    + '<td>' +item.borrowMoneyInterest+ ' 元</td>'
                    + '<td>'  +item.borrowMoneyMoney+' 元</td>'
                    + '<td class="td-status"><span class="label label-success radius">已满标</span></td>'
                    + '<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings_2(this,'+item.borrowMoneyId+')" href="javascript:;" title="放款">放款</a></td>';
            }
            if(item.borrowMoneyState==3){
                html+= '<tr class="text-c">'
                    + '<td bgcolor="gray"><a onclick="admin_borrowMoneyId( '+item.borrowMoneyId+')">'+item.borrowMoneyId+'</a></td>'
                    + '<td>' +item.userId+ '</td>'
                    + '<td>' +item.userMessageName+ '</td>'
                    + '<td>' +item.userMessageTruename+ '</td>'
                    + '<td>' +item.borrowMoneyBorrowMoney+ ' 元</td>'
                    + '<td>' +item.borrowMoneyBorrowDate+ ' 期</td>'
                    + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                    + '<td>' +item.borrowMoneyUse+ '</td>'
                    + '<td>' +item.borrowMoneyWay+ '</td>'
                    + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                    + '<td>' +item.borrowMoneyInterest+ ' 元</td>'
                    + '<td>'  +item.borrowMoneyMoney+' 元</td>'
                    + '<td class="td-status"><span class="label radius">已流标</span></td>'
                    + '<td class="td-status"><span class="label radius">已流标不能操作</span></td>';
            }
            if(item.borrowMoneyState==4){
                html+= '<tr class="text-c">'
                    + '<td bgcolor="gray"><a onclick="admin_borrowMoneyId( '+item.borrowMoneyId+')">'+item.borrowMoneyId+'</a></td>'
                    + '<td>' +item.userId+ '</td>'
                    + '<td>' +item.userMessageName+ '</td>'
                    + '<td>' +item.userMessageTruename+ '</td>'
                    + '<td>' +item.borrowMoneyBorrowMoney+ ' 元</td>'
                    + '<td>' +item.borrowMoneyBorrowDate+ ' 期</td>'
                    + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                    + '<td>' +item.borrowMoneyUse+ '</td>'
                    + '<td>' +item.borrowMoneyWay+ '</td>'
                    + '<td>' +item.borrowMoneyOrderDate+ '</td>'
                    + '<td>' +item.borrowMoneyInterest+ ' 元</td>'
                    + '<td>'  +item.borrowMoneyMoney+' 元</td>'
                    + '<td class="td-status"><span class="label radius">已废标</span></td>'
                    + '<td class="td-status"><span class="label radius">已废标不能操作</span></td>';
            }
        });
        $('#userBorrowMoneyAll').html(html);
    });

};


</script> 
</body>
</html>