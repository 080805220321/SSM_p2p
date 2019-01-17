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

<title>意见反馈</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont"></i> 首页 <span class="c-gray en">&gt;</span> 评论管理 <span class="c-gray en">&gt;</span> 意见反馈 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">刷新</i></a></nav>
<div class="page-container">
	<div class="text-c">
		<input type="text" class="input-text" style="width:250px" placeholder="输入关键词"  name="">
		<button type="submit" class="btn btn-success radius"  name=""><i class="Hui-iconfont"></i>搜索</button>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont"></i>申核通过</a><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont"></i>审核未通过</a> </span> <span class="r">共有数据：<strong>88</strong> 条</span> </div>
	<div class="mt-20">
		<table class="table table-border table-bordered table-hover table-bg table-sort">
			<thead>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th width="60">ID</th>
					<th width="60">用户名</th>
					<th width="60">用户类型</th>
					<th width="60">还款方式</th>
					<th width="60">募集截止日期</th>
					<th width="60">审核状态</th>
					<th width="100">操作</th>

				</tr>
			</thead>
			<tbody>
				<tr class="text-c">
					<td><input type="checkbox" value="1" name=""></td>
					<td>1</td>
					<td><a href="javascript:;" onclick="member_show('张三','member-show.jsp','10001','360','400')"><i class="avatar size-L radius"><img alt="" src="static/h-ui/images/ucnter/avatar-default-S.gif"></i></a></td>
					<td class="text-l"><div class="c-999 f-12">
							<u style="cursor:pointer" class="text-primary" onclick="member_show('张三','member-show.html','10001','360','400')">张三</u> <time title="2014年8月31日 下午3:20" datetime="2014-08-31T03:54:20">2014-8-31 15:20</time> <span class="ml-20">13000000000</span> <span class="ml-20">admin@mail.com</span></div>
							<div class="f-12 c-999"><a href="http://www.h-ui.net/Hui-4.22-comment.shtml" target="_blank">http://www.h-ui.net/Hui-4.22-comment.shtml</a></div>
						<div>留言内容</div></td>
					<td>等额本金还款</td>
					<td>2019-1-20</td>
					<td class="td-status"><span class="label label-success radius">待审核</span></td>
					<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_shenhe(this,'10001')" href="javascript:;" title="审核">审核</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>  
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">

    /*资讯-审核*/
    function user_shenhe(obj,id){
        layer.confirm('审核该用户信息？', {
                btn: ['通过','不通过','取消'],
                shade: false,
                closeBtn: 0
            },
            function(){
                $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="user_shenhe(this,id)" href="javascript:;" title="审核通过">通过</a>');
                $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">审核通过</span>');
                $(obj).remove();
                layer.msg('审核通过', {icon:6,time:1000});
            },
            function(){
                $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="user_shenhe(this,id)" href="javascript:;" title="未通过">未通过</a>');
                $(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
                $(obj).remove();
                layer.msg('未通过', {icon:5,time:1000});
            });
    }



    $(function(){article_shenqing
	$('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,2,4]}// 制定列不参与排序
		]
	});

});
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}

/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
}
/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*密码-修改*/
function change_password(title,url,id,w,h){
	layer_show(title,url,w,h);	
}
/*用户-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
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