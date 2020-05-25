<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <link rel="icon" type="image/png" href="https://activesoul8231.github.io/favicon%20(1).ico">
    <title>登录</title>
</head>
<style type="text/css">
    span{
        color: #FFFFFF;
    }
    .test111{
        position: absolute;
        top: 45%;
        left: 26%;
        transform: translate(-50%, -50%);
        text-align: center;
        padding: 0 15px;
        color: #FFFFFF;
        /*width: 100%;*/
        max-width: 880px;
    }
    .test2222{
        position: absolute;
        top: 60%;
        left: 30%;
        transform: translate(-50%, -50%);
        text-align: center;
        padding: 0 15px;
        color: #FFFFFF;
        /*width: 100%;*/
        max-width: 880px;
    }
</style>

<%--<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">--%>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/now-ui-kit.css" rel="stylesheet">
<link href="../css/demo.css" rel="stylesheet">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<script src="../jquery-3.4.1/jquery-3.4.1.min.js"></script>
<%--<script src="../bootstrap-4.4.1-dist/js/bootstrap.js"></script>--%>
<%--<script src="../js/popper/popper.js"></script>--%>
<script type="text/javascript">
    window.onload=function () {
        var message = "${message}"
        if(message != null){
            $("#flag2").text(message);
        }
        setTimeout(function () {
            var ssname = $("#uName").val();
            if (ssname!='') {
                getUserFlag()
            }
        },1000)

    }

    function getUserFlag() {
        //将  id="uName"  的值放入 ss 中
        var ss = $("#uName").val();
        // debugger;
        if(ss !=null &&ss !=''){
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

    }

    function toRegister() {
        location.href="${pageContext.request.contextPath}/jsp/register.jsp";
    }

    function submitForm() {
        var str = "0";
        var text1 = $("#flag1").text();
        if (text1 == "🍂您已被封号，请联系管理员解封" || text1 == "") {str = "管理员邮箱：wenlan8231@163.com"}
        // if(){str = "用户名重复";}
        if (str == "0") {
            $("#search_form").submit();
        } else {
            alert(str);
        }
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
<body class="login-page sidebar-collapse">
<div class="page-header" filter-color="3333">
<%--    <div class="page-header-image" style="background-image:url(http://www.jswyw.com/zt/kyfh/202002/W020200212435459141418.jpg)"></div>--%>
    <div class="page-header-image" style="filter: blur(1px); background-image:url(https://cdn.pixabay.com/photo/2020/05/17/13/57/the-sea-5181726_960_720.jpg)"></div>
    <div class="container">
        <%--<div class="row">--%>
            <%--<div class="col-md-4"></div>--%>
            <%--<div class="col-md-4">--%>

            <%--</div>--%>
            <%--<div class="col-md-4"></div>--%>
        <%--</div>--%>
        <div class="col-md-4"></div>
        <div class="col-md-4 content-center">
            <h4 id="d1" style="text-align: center"></h4>
            <div class="card card-login card-plain">
                <form name="login" action="${pageContext.request.contextPath}/user/userLogin" method="POST" id="search_form">
                    <div class="header header-primary text-center">
                        <div class="logo-container">
                            <%--<img src="../登录_files/logo2.png" alt="">--%>
                            <h5>院校失物招领</h5>
                        </div>
                    </div>
                    <div class="content">
                        <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <svg class="bi bi-people-fill" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M9 16s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H9zm4-6a3 3 0 100-6 3 3 0 000 6zm-5.784 6A2.238 2.238 0 017 15c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 007 11c-4 0-5 3-5 4s1 1 1 1h4.216zM6.5 10a2.5 2.5 0 100-5 2.5 2.5 0 000 5z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>

                            <input id="uName" maxlength="16" name="uName" value="${uName}" onblur="getUserFlag()"type="text" class="form-control" size="12" placeholder="帐号/名字">
                        </div>
                        <%--<span id="flag1"></span>--%>
                        <div style="clear:both"></div>
                        <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <svg class="bi bi-unlock-fill" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M2.5 10a2 2 0 012-2h7a2 2 0 012 2v5a2 2 0 01-2 2h-7a2 2 0 01-2-2v-5z"></path>
                                      <path fill-rule="evenodd" d="M10.5 5a3.5 3.5 0 117 0v3h-1V5a2.5 2.5 0 00-5 0v3h-1V5z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                            <input  name="uPassword" maxlength="16" type="password" class="form-control" size="12" placeholder="密码">

                        </div>
                    </div>
                    <div class="footer text-center">
                        <input  class="btn btn-primary btn-round btn-lg btn-block" type="button" onclick="submitForm()" value="登录">
                    </div>


                    <%--<fieldset class="layui-elem-field" style="margin:20px"><legend>第三方登录</legend><div class="layui-field-box"><a href="https://www.shiwurenling.com/qqLogin/index.php"><img src="./登录_files/qq_login.png"> </a><a href="https://www.shiwurenling.com/wechat.html"><img src="./登录_files/1111.png"></a></div></fieldset>--%>

                    <div class="pull-left">
                        <h6>
                            <a href="${pageContext.request.contextPath}/m/getMassagesList" class="link">返回首页</a>
                        </h6>
                    </div>
                    <div class="pull-right">
                        <h6>
                            <a href="${pageContext.request.contextPath}/jsp/register.jsp"<%--  onclick="toRegister()"--%> class="link">注册</a>
                        </h6>
                    </div>

                </form>
            </div>
        </div>
        <div class="test111">
            <span id="flag1"></span>
        </div>
        <div class="test2222">
            <span id="flag2"></span>
        </div>
    </div>
    <footer class="footer">

        <div class="copyright">
            ©
            <%--<script>
                document.write(new Date().getFullYear())
                var phone    = document.getElementById('phone');
                var password = document.getElementById('password');

                if(phone.validity.valueMissing)
                {
                    alert("账号不能为空");
                    return;
                } else if(phone.validity.patternMismatch)
                {
                    alert("账号输入有误");
                    return;
                }
                if(password.validity.valueMissing)
                {
                    alert("密码不能为空");
                    return;
                }
            </script>--%>, Designed by  <a href="#" target="_blank" title="">院校失物招领</a>
        </div>
    </footer>
</div>
<%-------------------------------------------------------------------------------%>
<%--<div class="row">--%>
    <%--<div class="content">--%>
        <%--&lt;%&ndash;<div class="col-sm-4"><h1><button onclick="toAdmin()">管理员入口</button></h1></div>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<div class="col-sm-4" style="text-align: center"><h1 id="d1"></h1></div>&ndash;%&gt;--%>
        <%--<div class="col-sm-4"></div>--%>
    <%--</div>--%>
<%--</div>--%>

<%--<p><hr></p>--%>
<%--<form action="${pageContext.request.contextPath}/user/userLogin" method="post">--%>
    <%--&lt;%&ndash;<input type="text" id="uName" name="uName" value="${uName}" onmouseleave="getUserFlag()" placeholder="请输入用户名"><span id="flag1"></span>&lt;%&ndash;<div id="flag1"></div>&ndash;%&gt;<br>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<input type="uPassword" name="uPassword" placeholder="请输入密码"><span id="flag2"></span><br>&ndash;%&gt;--%>
    <%--<input type="submit" value="登录">--%>
    <%--<input type="button" onclick="toRegister()" value="没账号？去注册">--%>
    <%--<a href="${pageContext.request.contextPath}/m/getMassagesList">返回首页</a>--%>
<%--</form>--%>
</body>
</html>
