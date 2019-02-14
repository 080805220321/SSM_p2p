<%--
  Created by IntelliJ IDEA.
  User: WSJ
  Date: 2019/1/17
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="script/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btn").click(function () {
            var count = 60;
            var countdown = setInterval(CountDown, 500);
            function CountDown() {
                $("#btn").attr("disabled", true);
                $("#btn").val( count + "s");
                if (count == 0) {
                    $("#btn").val("重新发送").removeAttr("disabled");
                    clearInterval(countdown);
                }
                count--;
            }
        })
    });


</script>
<body>
<input type="button" class="btn" value="aaa" id="btn">
</body>
</html>
