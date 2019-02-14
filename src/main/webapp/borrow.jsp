<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="">
<meta name="description" content="十七金融">
<meta name="author" content="十七金融">
<link href="css/css.css" rel="stylesheet">

    <meta http-equiv="X-UA-Compatible" content="IE=8" >
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script type="text/javascript" src="http://www.haofz.com/js/jquery-1.8.3.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<link href="favicon.ico" rel="SHORTCUT ICON">
<title>十七金融</title>
    <script type="text/javascript">
        $(function () {

            $("#save").click(function () {
                var loan = $("#js_dueId").val();
                var purpose = $("#purpose").val();
                var mobile = $("#mobile").val();
                var loanAmount = $("#loanAmount").val();
                var income = $("#income").val();
                window.location.href = "/borrow.do?borrowmoneyBorrowmoney="+loanAmount+"&borrowmoneyBorrowdate="+loan+"&borrowmoneyUse="+purpose+"&income="+income;
            });

        });
    </script>
</head>
<body cur="2"><!--head-->
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
<div class="wrap mt10">
  <div class="tc"><img src="images/step.png"></div>
  <div class="clearfix">
    <!--img-->
    <div class="img loans-img bdr fl">
      <div class="lj indent">ico</div>
      <img src="images/img6.jpg">
    </div>
    <div class="formbox bdr fr">
      <table class="productForm">
          <tr>
              <th>借款用途</th>
              <td>
                  <label class="touzi01">
                      <input type="text" id="purpose" name="realName" class="input_all input_1" maxlength="15"/>

                  </label>
                  <div class="tishi"><span id="purpose1" class="prompt_2 hidden"></span></div>
              </td>
          </tr>

        <tr>
          <th>移动电话</th>
          <td>
            <label class="touzi01">
              <input type="text" id="mobile" name="mobile" class="input_all input_1" maxlength="11"/>

            </label>
            <div class="tishi"><span id="mobileError" class="prompt_2 hidden"></span></div>
          </td>
        </tr>
        <tr>
          <th>称谓</th>
          <td class="hight">
            <label><input name="gender" type="radio" value="0" checked>先生</label>
            <label><input name="gender" type="radio" value ="1">女士</label>
          </td>
        </tr>
        <tr>
          <th>借款金额</th>
          <td>
            <label class="touzi01">
              <input type="text" id="loanAmount" name="amount" class="input_all i_yuan input_1" maxlength="7"/>

            </label>
            <div class="tishi"><span id="amountError" class="prompt_2 hidden"></span></div>
          </td>
        </tr>
        <tr>
          <th>借款期限</th>
          <td>
            <select id="js_dueId" name="dueId" class="select1">
              <option value="12">12个月</option>
              <option value="24">24个月</option>
              <option value="36">36个月</option>
            </select>
            <div class="tishi"></div>
          </td>
        </tr>
        <tr>
          <th>月均收入</th>
          <td>
            <label class="touzi01">
              <input type="text" id="income" name="income" class="input_all i_yuan input_1" maxlength="9"/>

            </label>
            <div class="tishi"><span id="incomeError" class="prompt_2 hidden"></span></div>
          </td>
        </tr>
        <tr>
          <th></th>
          <td><input type="button" id="save" value="立即申请" class="btn btnSize_6 btn_orange" /></td>
        </tr>
      </table>
    </div>
  </div>
  
  <div class="detailsBox mt20 clearfix">
    <div class="item first">
       <div class="title">申请资格</div>
       <ul class=" mt10 cicle">
         <li>年龄23周岁-60周岁的中国大陆公民（港、澳、台除外）</li>
         <li>企业或商户经营时间满1年及以上</li>
         <li>企业或商户月均流水须3万以上</li>
       </ul>
    </div>
    <div class="item">
       <div class="title">额度期限</div>
       <ul class=" mt10 cicle">
         <li>借款额度：3万-30万元</li>
         <li>借款期限：12、24、36个月</li>
         <li>还款方式：等额本息，每月还款</li>
       </ul>
    </div>
    <div class="item bd0">
       <div class="title">所需材料</div>
       <ul class=" mt10 cicle">
         <li>申请人二代身份证</li>
         <li>企业/商户经营场所证明材料</li>
         <li>近6个月对公或对私银行流水或POS交易流水</li>
       </ul>
    </div>
  </div>
</div>


<!--时间  s-->


<!--时间  e
<script language="javascript">
		var staticCss = 'http://static.niwodai.com/Public/Static/201404';
		var cssVersion = '2015010618';
		var staticUrl = 'http://static.niwodai.com/';
</script> -->

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


</body>
</html>