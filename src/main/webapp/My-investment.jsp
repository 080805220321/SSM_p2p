<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="">
<meta name="description" content="十七金融">
<meta name="author" content="十七金融">
<link href="css/css.css" rel="stylesheet">
<!--[if lt IE 9]>
    <link href="css/ie.css" rel="stylesheet" type="text/css" >
    <meta http-equiv="X-UA-Compatible" content="IE=8" >
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<!--[if lte IE 6]><meta http-equiv="refresh" content="0;url=IE6/IE6.jsp"><![endif]-->
<link href="favicon.ico" rel="SHORTCUT ICON">
<title>十七金融</title>
</head>
<body>
<!--head-->
<div class="top">
  <div class="wrap clearfix">
    <em class="myfont">&#xe632;</em><span class="songti">服务热线：</span><span class="tel">400-121-8232</span>
    <a href="#" target="_blank" class="ico weibo"></a>
    <a href="#" target="_blank" class="ico weixin"></a>
    <a href="#" target="_blank" class="ico qq"></a>
    <span class="fr"><a href="javascript:;" class="loginbtn">登录</a><a href="javascript:;" class="o regbtn">免费注册</a><a href="about.jsp">帮助中心</a></span>
  </div>
</div>
<div class="head">
  <div class="wrap pct-h clearfix">
    <a href="index.jsp" class="logo indent">logo</a>
    <div class="adtxt indent">有钱没钱，找十七金融</div>
    <ul class="nav">
      <li><a href="index.jsp">首页</a></li>
      <li><a href="invest.jsp">我要投资</a></li>
      <li><a href="borrow.jsp">我要借款</a></li>
      <li><a href="about.jsp">关于我们</a></li>
    </ul>
  </div>
</div>
<!--main-->
<div class="wrap mt10 clearfix">
  <div class="aside fl">
    <!--side-nav-->
    <a href="member.jsp" class="member-aside-title"><em class="myfont">&#xe627;</em>帐户中心</a>
    <ul class="side-nav f14 bdr">
      <li><a href="Asset-Statistics.jsp">资产统计</a></li>
      <li><a href="recharge.jsp">我要充值</a></li>
      <li><a href="Withdrawals.jsp">我要提现</a></li>
      <li><a href="Bank-Card.jsp">银行卡管理</a></li>
      <li><a href="Record.jsp">交易记录</a></li>
      <li><a href="My-investment.jsp">我的投资</a></li>
      <li><a href="loan.jsp">我的借款</a></li>
      <li><a href="Infomation.jsp">站内信息</a></li>
      <li><a href="safe.jsp">安全设置</a></li>
      <li><a href="Recommend.jsp">推荐好友</a></li>
    </ul>
        
  </div>
  
  <div class="section fr">
    <!--My investment-->
    <div class="pd20 bg-w mt10 bdr">
      <div class="crumbs"><span>我的投资</span></div>
      <div class="membox">
        <p class="f16 c333">投资项目：<span class="o">5</span>个，&nbsp;&nbsp;总投金额：<span class="o">500.00</span>元，&nbsp;&nbsp;累计收费：<span class="o">29.47</span>元</p>
        
        <div class="My-investment mt20 clearfix">
           <div class="item"><div class="box clearfix"><span class="count">0个</span><em class="invest ico1"></em>未还款项目</div></div>
           <div class="item"><div class="box clearfix"><span class="count">4个</span><em class="invest ico2"></em>还款中项目</div></div>
           <div class="item"><div class="box clearfix"><span class="count ico3">1个</span><em class="invest ico3"></em>已还款项目</div></div>
         </div>
         
        <!--Transaction Date-->
        <div class="mt20 clearfix">
          <div class="tit fl">交易日期</div>
          <div class="Calendar fl"><input type="text" readonly id="birthday" name="birthday" class="input_all i_time input_1" style="z-index:1000;position:relative; width:95px"/> - <input type="text" readonly id="birthday2" name="birthday" class="input_all i_time input_1" style="z-index:1000;position:relative; width:95px"/></div>
          <div class="Options fl"><a href="#" class="active">全部</a><a href="#">最近一周</a><a href="#">最近一个月</a><a href="#">最近三个月</a></div>
        </div>
        
        <!--Project Status-->
        <div class="mt20 clearfix">
          <div class="tit fl">项目状态</div>
          <div class="Options f12 fl" style="width:620px;"><a href="#" class="active">全部</a><a href="#">未还款项目</a><a href="#">还款中项目</a><a href="#">已还款项目</a></div>
        </div>
        
        <!--list-->
        <table class="Record-tab mt20">
            <tr><th width="135">订单号</th><th width="135">项目名称</th><th width="105">投资金额</th><th width="100">年利率</th><th width="145">投资时间</th><th width="80">待还利息</th><th>查看合同</th></tr>
            <tr><td class="tl">201410282710792166</td><td>安捷宝（第一期）002</td><td class="o">100.00元</td><td>13.80%+2.20%</td><td>2013-01-5 22:24:55</td><td><span class="o">5.34</span>元</td><td><a href="#">查看合同</a></td></tr>
            <tr><td class="tl">201410282710792166</td><td>安捷宝（第一期）002</td><td class="o">100.00元</td><td>13.80%+2.20%</td><td>2013-01-5 22:24:55</td><td><span class="o">5.34</span>元</td><td><a href="#">查看合同</a></td></tr>
            <tr><td class="tl">201410282710792166</td><td>安捷宝（第一期）002</td><td class="o">100.00元</td><td>13.80%+2.20%</td><td>2013-01-5 22:24:55</td><td><span class="o">5.34</span>元</td><td><a href="#">查看合同</a></td></tr>
            <tr><td class="tl">201410282710792166</td><td>安捷宝（第一期）002</td><td class="o">100.00元</td><td>13.80%+2.20%</td><td>2013-01-5 22:24:55</td><td><span class="o">5.34</span>元</td><td><a href="#">查看合同</a></td></tr>
            <tr><td class="tl">201410282710792166</td><td>安捷宝（第一期）002</td><td class="o">100.00元</td><td>13.80%+2.20%</td><td>2013-01-5 22:24:55</td><td><span class="o">5.34</span>元</td><td><a href="#">查看合同</a></td></tr>
            <tr><td class="tl">201410282710792166</td><td>安捷宝（第一期）002</td><td class="o">100.00元</td><td>13.80%+2.20%</td><td>2013-01-5 22:24:55</td><td><span class="o">5.34</span>元</td><td><a href="#">查看合同</a></td></tr>
            <tr><td class="tl">201410282710792166</td><td>安捷宝（第一期）002</td><td class="o">100.00元</td><td>13.80%+2.20%</td><td>2013-01-5 22:24:55</td><td><span class="o">5.34</span>元</td><td><a href="#">查看合同</a></td></tr>
            <tr><td class="tl">201410282710792166</td><td>安捷宝（第一期）002</td><td class="o">100.00元</td><td>13.80%+2.20%</td><td>2013-01-5 22:24:55</td><td><span class="o">5.34</span>元</td><td><a href="#">查看合同</a></td></tr>
            <tr><td class="tl">201410282710792166</td><td>安捷宝（第一期）002</td><td class="o">100.00元</td><td>13.80%+2.20%</td><td>2013-01-5 22:24:55</td><td><span class="o">5.34</span>元</td><td><a href="#">查看合同</a></td></tr>
            <tr><td class="tl">201410282710792166</td><td>安捷宝（第一期）002</td><td class="o">100.00元</td><td>13.80%+2.20%</td><td>2013-01-5 22:24:55</td><td><span class="o">5.34</span>元</td><td><a href="#">查看合同</a></td></tr>
          </table>
        
        <!--Pagination-->
        <div class="Pagination mt20 tr clearfix">
        <a href="#" class="prev"><em></em>上一页</a><span>1</span><a href="#">2</a><a href="#">3</a><a href="#">4</a>...<a href="#">23</a><a href="#" class="next">下一页<em></em></a>
      </div>
        
      </div>    
      
    </div>
    
  </div>
  
</div>

<script src="js/jquery.js"></script>
<script src="js/Action.js"></script>
<script src="js/waste.js"></script>
<script src="js/banner.js"></script>
<script src="js/jQuery-jcMarquee.js"></script>

<script type="text/javascript" src="js/VisitorAPI-1.2.1-min.js"></script>
<script type="text/javascript" src="js/AppMeasurement-1.2.1-min.js"></script>

<!--时间  s-->
<script type="text/javascript" src="js/jquery.ui.datepicker.js"></script>
<link href="css/jquery-ui.css" rel="stylesheet"> 
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<!--时间  e
<script language="javascript">
		var staticCss = 'http://static.niwodai.com/Public/Static/201404';
		var cssVersion = '2015010618';
		var staticUrl = 'http://static.niwodai.com/';
</script> -->
<script src="js/loanApplyValidate.js?v=2015010618.js" type="text/javascript"></script>
<script src="js/detail.js?v=2015010618.js" type="text/javascript"></script>
<script src="js/netCredit.js?v=2015010618.js" type="text/javascript"></script>
<script src="js/loanApplyCitys.js?v=2015010618.js" type="text/javascript"></script>

<!--Partner-->
<div class="Partner mt10">
  <div class="wrap clearfix">
    <div class="hd fl">
      <b>合作伙伴</b>
      <span class="en">Partners</span>
    </div>
    <div class="bd fr">
      <div id="Marquee_x">
        <ul>
          <li>
            <a href="http://www.cardanro.com.cn" target="_blank" class="img"><img src="upload/logo_03.jpg"></a>
            <a href="http://www.hsbank.com.cn" target="_blank" class="img"><img src="upload/logo_06.jpg"></a>
            <a href="http://www.hongren.com.cn" target="_blank" class="img"><img src="upload/logo_08.jpg"></a>
            <a href="http://www.boc.cn" target="_blank" class="img"><img src="upload/logo_11.jpg"></a>
            <a href="http://www.xtep.com" target="_blank" class="img"><img src="upload/logo_14.jpg"></a>
            <a href="http://www.edenbo.com" target="_blank" class="img"><img src="upload/logo_17.jpg"></a>
            <a href="http://www.ayilian.com" target="_blank" class="img"><img src="upload/logo_19.jpg"></a>
            <a href="http://www.tonlion.com" target="_blank" class="img"><img src="upload/logo_22.jpg"></a>
            <a href="http://mall.jd.com/index-34890.jsp" target="_blank" class="img"><img src="upload/logo_25.jpg"></a>
            <a href="http://www.cmbc.com.cn" target="_blank" class="img"><img src="upload/logo_28.jpg"></a>
            <a href="http://itisf4.tmall.com" target="_blank" class="img"><img src="upload/logo_31.jpg"></a>
            <a href="http://www.cebbank.com" target="_blank" class="img"><img src="upload/logo_33.jpg"></a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!--foot-->
<div class="foot">
  <div class="wrap clearfix">
    <div class="footsection fl">
      <a href="about.jsp">关于我们</a>  |  <a href="news.jsp">网站公告</a>  |  <a href="reports.jsp">媒体报道</a>  |  <a href="partners.jsp">合作伙伴</a>  |  <a href="#">安全保障</a>  |  <a href="#">本金保障</a>  |  <a href="#">帮助中心</a>  |  <a href="#">如何投资</a>  |  <a href="#">如何借款</a>
      <p class="mt10">Copyright 2014 十七贷款, All Rights Reserved 版权所有 沪ICP备00000000号</p>
      <div class="img mt15 clearfix">
        <a href="#" target="_blank"><img src="images/img1.jpg"></a>
        <a href="#" target="_blank"><img src="images/img2.jpg"></a>
        <a href="#" target="_blank"><img src="images/img3.jpg"></a>
        <a href="#" target="_blank"><img src="images/img4.jpg"></a>
        <a href="#" target="_blank"><img src="images/img5.jpg"></a>
      </div>
    </div>
    <div class="footaside fr">
      热线电话 (服务时间 09:00 - 21:00 )
      <p><span class="tel">400-601-6629</span><a href="#" target="_blank">在线客服<em class="ico"></em></a></p>
      关注我们  <a href="#" target="_blank" class="ico weibo"></a> <a href="#" target="_blank" class="ico weixin"></a><a href="#" target="_blank" class="ico qq"></a>
    </div>
  </div>
</div>

<div class="Pop-up">
  <div class="pop-bd">
    <div class="hand"><div class="myfont close">&#xe611;</div></div>
    <div class="bd" id="form1">
      <div class="hd">会员登录</div>
      <div class="txt"><h1>为您提供简单、安全、高收益的理财服务</h1>优先选择有担保的优质债权 足值抵押物可以降低风险 分散投资，更能降低风险</div>
      <div class="form">
        <label><span>用户名</span><input type="text" class="form-control first" value="" name="name"></label>
        <label><span>密码</span><input type="password" class="form-control last" value="" name="name"></label>
        <button type="button" value="" class="button login" id="login" onclick="window.location.href='member.jsp'">登录</button>
        <div class="mt15"><a href="javascript:;" id="btnreg">没有帐号？</a>&nbsp;|&nbsp;<a href="#">忘记密码？</a></div>
      </div>      
    </div>
    <div class="bd none" id="form2">
      <div class="hd">会员注册</div>
      <div class="txt"><h1>为您提供简单、安全、高收益的理财服务</h1>优先选择有担保的优质债权 足值抵押物可以降低风险 分散投资，更能降低风险</div>
      <div class="form">
        <label><span>用户名</span><input type="text" class="form-control first" value="" name="name"></label>
        <label><span>手机</span><input type="text" class="form-control" value="" name="name"></label>
        <label><span>密码</span><input type="password" class="form-control" value="" name="name"></label>
        <label><span>确认密码</span><input type="password" class="form-control last" value="" name="name"></label>
        <button type="button" value="" class="button login" id="reg" onclick="window.location.href='member.jsp'">注册</button>
        <div class="mt15"><a href="javascript:;" id="btnlogin">没有帐号？</a>&nbsp;|&nbsp;<a href="#">忘记密码？</a></div>
      </div>      
    </div>
  </div>
</div>

<script>
$(function(){
    $('#Marquee_x').jcMarquee({ 'marquee':'x','margin_right':'10px','speed':20 });	
	$(".loginbtn").click(function(){
		$(".Pop-up").show();
		$(".pop-bd").slideDown(500);
		$("#form2").hide().siblings("#form1").show();
	});
	$(".regbtn").click(function(){
		$(".Pop-up").show();
		$(".pop-bd").slideDown(500);
		$("#form1").hide().siblings("#form2").show();
	});
	$("#btnreg").click(function(){$(this).parents("#form1").hide().siblings("#form2").show();})
	$("#btnlogin").click(function(){$(this).parents("#form2").hide().siblings("#form1").show();})
	$(".close").click(function(){$(this).parents(".Pop-up").hide().find(".pop-bd").hide()});
	
	$(".form .form-control").each(function(){
		var thisVal=$(this).val();
		if(thisVal!=""){
			$(this).siblings("span").hide();
		}
		else{
			$(this).siblings("span").show();
		}
		$(this).focus(function(){
			$(this).siblings("span").hide().parents("label").css("z-index","10009").siblings("label").css("z-index","10008");
		}).blur(function(){
			var val=$(this).val();
			if(val!=""){
				$(this).siblings("span").hide().siblings("label").css("z-index","10008");
				}
			else{
				$(this).siblings("span").show().siblings("label").css("z-index","10008");
			} 
		});
	});
});
</script>
</body>
</html>