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
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 资讯管理 <span class="c-gray en">&gt;</span> 资讯列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="text-c">

	 <span class="select-box inline">
		<select name="" class="select">
			<option value="0">借款标状态</option>
			<option value="1">分类一</option>
			<option value="2">分类二</option>
		</select>
		</span>募集截止日期：
		<input type="date"/>
			<input type="text" name="" id="" placeholder="用户昵称" style="width:250px" class="input-text">
		<button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
	</div>




	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
			<thead>
				<tr class="text-c">

					<th width="60">用户ID</th>
					<th width="60">借款标状态</th>
					<th width="60">用户昵称</th>
					<th width="60">借款人收款账户</th>
					<th width="60">借款总金额人民币（小写）</th>
					<th width="60">借款期限ID</th>
					<th width="60">借款期数</th>
					<th width="60">起息日</th>
					<th width="60">借款用途</th>
					<th width="60">还款方式</th>
					<th width="60">募集截止日期</th>
					<th width="60">需还款总金额</th>
					<th width="60">审核状态</th>
					<th width="120">操作</th>
				</tr>
			</thead>
			<tbody>
				<tr class="text-c">
					<td>10001</td>
					<td>1可投标</td>
					<td>张三</td>
					<td>123456645849458456</td>
					<td>1000</td>
					<td>12</td>
					<td>4</td>
					<td>2019-09-09</td>
					<td>日常消费</td>
					<td>银行卡</td>
					<td>1999-09-09</td>
				    <td>1000</td>
					<td class="td-status"><span class="label label-success radius">待审核</span></td>
					<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings(this,'10001')" href="javascript:;" title="审核">审核</a></td>

				</tr>




				<tr class="text-c">
					<td>10002</td>
					<td>1可投标</td>
					<td>李四</td>
					<td>123454565677778</td>
					<td>500</td>
					<td>36</td>
					<td>5</td>
					<td>2019-01-01</td>
					<td>日常消费</td>
					<td>银行卡</td>
					<td>2000-11-09</td>
					<td>2000</td>
					<td class="td-status"><span class="label label-success radius">待审核</span></td>
					<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings(this,'10001')" href="javascript:;" title="审核">审核</a></td>
				</tr>



				<tr class="text-c">
					<td>10003</td>
					<td>1可投标</td>
					<td>李四</td>
					<td>123454565677778</td>
					<td>500</td>
					<td>36</td>
					<td>5</td>
					<td>2019-01-01</td>
					<td>日常消费</td>
					<td>银行卡</td>
					<td>2000-11-09</td>
					<td>2000</td>
					<td class="td-status"><span class="label label-success radius">待审核</span></td>
					<td class="f-14 td-manage"><a style="text-decoration:none" onClick="user_drawings(this,'10001')" href="javascript:;" title="审核">审核</a></td>
				</tr>

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
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"pading":false,
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,8]}// 不参与排序的列
	]
});



/*资讯-审核*/
function user_drawings(obj,id){
    layer.confirm('审核该提款？', {
            btn: ['通过','不通过','取消'],
            shade: false,
            closeBtn: 0
        },
        function(){
            $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="user_drawings(this,id)" href="javascript:;" title="审核通过">通过</a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">审核通过</span>');
            $(obj).remove();
            layer.msg('审核通过', {icon:6,time:1000});
        },
        function(){
            $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="user_drawings(this,id)" href="javascript:;" title="审核通过">未通过</a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
            $(obj).remove();
            layer.msg('未通过', {icon:5,time:1000});
        });
}

</script> 
</body>
</html>