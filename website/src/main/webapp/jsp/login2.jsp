<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>普通用户登陆</title>
</head>
<style type="text/css">
    span{
        color: #ab1e1e;
    }
</style>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="../jquery-3.4.1/jquery-3.4.1.min.js"></script>
<script src="../bootstrap-4.4.1-dist/js/bootstrap.js"></script>
<script src="../js/popper/popper.js"></script>
<script type="text/javascript">
    window.onload=function () {
        var message = "${message}"
        if(message != null){
            $("#flag2").text(message);
        }
    }

    function getUserFlag() {
        //将  id="uName"  的值放入 ss 中
        var ss = $("#uName").val();
        //设置 id="flag1" 的标签内容初始化为空
        $("#flag1").text("")
        $.ajax({
            //请求类型为：POST
            type:"POST",
            // 把请求发送到user  中的  getUserFlag() 方法
            url:"${pageContext.request.contextPath}/user/getUserFlag",
            //映射或字符串值。规定连同请求发送到服务器的数据
            data:{"uName":ss},
            //规定预期的服务器响应的数据类型，默认执行智能判断（xml、json、script 或 html）
            dataType:"json",
            //请求成功时执行的回调函数。
            success:function (obj) {
                $("#flag1").text(obj.message1)
                // $("#flag1").append("<span class='glyphicon glyphicon-leaf' >"+obj.message1+"</span>")
            }
        })
    }

    function toRegister() {
        location.href="${pageContext.request.contextPath}/jsp/register.jsp";
    }

    <%--function toAdmin() {--%>
        <%--location.href="${pageContext.request.contextPath}/jsp/admin/login2.jsp";--%>
    <%--}--%>

    /*setInterval*/(
        function () {
            $.get("${context}/admin/getTime",{},function (data) {
                $("#d1").html(data.dateStr);
            })
        }
            ,1000);

    setInterval(function () {
        $("#d1").html(new Date().toLocaleString());
    },1000);

</script>
<body>
<div class="row">
    <div class="content">
        <%--<div class="col-sm-4"><h1><button onclick="toAdmin()">管理员入口</button></h1></div>--%>
        <div class="col-sm-4" style="text-align: center"><h1 id="d1"></h1></div>
        <div class="col-sm-4"></div>
    </div>
</div>

<p><hr></p>
<form action="${pageContext.request.contextPath}/user/userLogin" method="post">
    <input type="text" id="uName" name="uName" value="${uName}" onmouseleave="getUserFlag()" placeholder="请输入用户名"><span id="flag1"></span><%--<div id="flag1"></div>--%><br>
    <input type="uPassword" name="uPassword" placeholder="请输入密码"><span id="flag2"></span><br>
    <input type="submit" value="登录">
    <input type="button" onclick="toRegister()" value="没账号？去注册">
    <a href="${pageContext.request.contextPath}/m/getMassagesList">返回首页</a>
</form>
</body>
</html>
