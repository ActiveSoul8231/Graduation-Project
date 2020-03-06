<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="icon" type="image/png" href="https://activesoul8231.github.io/favicon%20(1).ico">
    <title>注册</title>
</head>
<style type="text/css">
    span{
        color: #FFFFFF;
    }
    .test111{
        position: absolute;
        top: 30%;
        left: 25%;
        transform: translate(-50%, -50%);
        text-align: center;
        padding: 0 15px;
        color: #FFFFFF;
        /*width: 100%;*/
        max-width: 880px;
    }
    .test2222{
        position: absolute;
        top: 42%;
        left: 25%;
        transform: translate(-50%, -50%);
        text-align: center;
        padding: 0 15px;
        color: #FFFFFF;
        /*width: 100%;*/
        max-width: 880px;
    }
    .test3333{
        position: absolute;
        top: 55%;
        left: 25%;
        transform: translate(-50%, -50%);
        text-align: center;
        padding: 0 15px;
        color: #FFFFFF;
        /*width: 100%;*/
        max-width: 880px;
    }
    .test4444{
        position: absolute;
        top: 48%;
        left: 25%;
        transform: translate(-50%, -50%);
        text-align: center;
        padding: 0 15px;
        color: #FFFFFF;
        /*width: 100%;*/
        max-width: 880px;
    }
    .test5555{
        position: absolute;
        top: 61%;
        left: 25%;
        transform: translate(-50%, -50%);
        text-align: center;
        padding: 0 15px;
        color: #FFFFFF;
        /*width: 100%;*/
        max-width: 880px;
    }
    .test6666{
        position: absolute;
        top: 37%;
        left: 24%;
        transform: translate(-50%, -50%);
        text-align: center;
        padding: 0 15px;
        color: #FFFFFF;
        /*width: 100%;*/
        max-width: 880px;
    }
    .test7777{
        position: absolute;
        top: 30%;
        left: 82%;
        transform: translate(-50%, -50%);
        text-align: left;
        padding: 0 15px;
        color: #FFFFFF;
        /*width: 100%;*/
        max-width: 880px;
        background-color: rgba(255, 255, 255, 0.1);
        border-radius: 15px;
        text-indent:2em;

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
    <%--注册时使用此点击事件是为了异步提交判断用户名是否已经被占用--%>
    <%--flag1 注册时判断用户名是否唯一--%>
    function getUserFlag() {
        //将  id="uName"  的值放入 ss 中
        var ss = $("#uName").val();
        //设置 id="flag1" 的标签内容初始化为空
        $("#flag1").text("")
        $.ajax({
            //请求类型为：POST
            type:"POST",
            // 把请求发送到user  中的  getUserName() 方法
            url:"${pageContext.request.contextPath}/user/getUserName",
            //映射或字符串值。规定连同请求发送到服务器的数据
            data:{"uName":ss},
            //规定预期的服务器响应的数据类型，默认执行智能判断（xml、json、script 或 html）
            dataType:"json",
            //请求成功时执行的回调函数。
            success:function (obj4) {
                $("#flag1").text(obj4.message)
            }
        })
    }

    // flag2 判断两次输入密码是否重复
    function passwordVerification() {
        var password1 = $("#password1").val();
        var password2 = $("#password2").val();
        if(password1 != password2){
            $("#flag2").text("🍂两次密码输入不一致");
        }else{
            $("#flag2").text("");
        }
    }



    /**
     * 前端  ajax  验证  验证码是否正确
     */
    // flag3 判断邮箱验证码是否相同
    function validataMailCode() {
        var mailCode=$("#mailCode").val();
        var mailCodeReturn=$("#mailCodeReturn").val();
        if (mailCode != mailCodeReturn){
            $("#flag3").text("🍂验证码是这个嘛？");
        }else {
            $("#flag3").text("");
        }
    }

    // flag4 判断用户邮箱是否唯一
    function getUserEmailFlag() {
        var val = $("#email").val();
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/user/userEmailFlag",
            data:{"userMailFlag":val},
            dataType:"json",
            success:function (obj3) {
                $("#flag4").text(obj3.mailFlag);
            }
        })
    }

//    正则

    function getName() {
        var ss = $("#uName").val();
        var name = /^([\u4e00-\u9fa5]{2,4})|([A-Za-z0-9_]{4,16})|([a-zA-Z0-9_\u4e00-\u9fa5]{3,16})$/;
        if (!name.test(ss)){
            $("#flag1").text("🗿名字只能是中文或者数字或者英文");
        }else {
            $("#flag1").text("");
            getUserFlag();
        }
    }

    /*密码至少包含 数字和英文，长度6-16*/
    function passwordZZ() {
        var password = $("#password1").val();
        var pwd = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
        if (!pwd.test(password)){
            $("#flag6").text("🍂密码至少包含 数字和英文，长度6-16位");
        }else {
            $("#flag6").text("");
        }
    }
    function getUserTel1() {
        var userTels = $("#userTel").val();
        var phonetest=/^(?:(?:\+|00)86)?1(?:(?:3[\d])|(?:4[5-7|9])|(?:5[0-3|5-9])|(?:6[5-7])|(?:7[0-8])|(?:8[\d])|(?:9[1|8|9]))\d{8}$/;
        if (!phonetest.test(userTels)){

            $("#flag5").text("🍂手机号格式不对吧？");
        }else {
            $("#flag5").text("");
            getUserTel();
        }
    }
    function getUserEmailFlag1() {
        var val = $("#email").val();
        var emailtest=/^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
        if (!emailtest.test(val)){

            $("#flag4").text("🍂你家邮箱这种格式啊？");
        }else {
            $("#flag4").text("");
            getUserEmailFlag();
        }
    }


//    判断注册用户的手机号是否唯一
    function getUserTel() {
        var val = $("#userTel").val();
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/user/userTel",
            data:{"uTelephone":val},
            dataType:"json",
            success:function (obj2) {
                $("#flag5").text(obj2.phoneFlag);
            }
        })

        // if (!phonetest.test(val)){
        //     $("#flag5").text("手机号格式不对！");
        // }
    }

    function submitForm() {
        var str = "0";
        var text1 = $("#flag1").text();
        var text2 = $("#flag2").text();
        var text3 = $("#flag3").text();
        var text4 = $("#flag4").text();
        var text5 = $("#flag5").text();
        var text6 = $("#flag6").text();
        if(text1 != ""){str = "用户名重复";}
        if(text2 != ""){str="两次密码不同";}
        if(text3 != ""){str="验证码怎么输错了";}
        if(text4 != ""){str="邮箱不能重复或者格式错误"}
        if(text5 != ""){str="手机号不能重复或者格式错误哦"}
        if(text6 != ""){str="密码格式有些错误哦"}
        if(str == "0"){$("#search_form").submit();
        }else{
            alert(str);
        }
    }

    var orgcountdown=60;

    function Timing(that) {
        if (orgcountdown == 0) {
            that.removeAttribute("disabled");
            $("#getverification2").css("background","#d9e6fa");
            that.value="重新获取验证码";
            orgcountdown = 60;
            return;
        } else {
            that.setAttribute("disabled", true);
            $("#getverification2").css("background","#AAAAAA");
            that.value="重新发送(" + orgcountdown + ")";
            orgcountdown--;
        }
        setTimeout(function() {Timing(that) },1000)
    }

    //接收邮箱验证码转成的 json 文件
    function sendEmail(that) {
        //清空验证码
        $("#mailCode").empty();
        //将 id=“email”  的值放入 val
        var val = $("#email").val();
        $("#flag1").text("");

        Timing(that);

        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/user/sendMail",
            //将邮箱地址放到键为 “uEmail” 中，，传到 sendMail() 方法
            data:{"uEmail":val},
            dataType:"json",
            success:function (obj1) {
                $("#mailCode").append("<input type='hidden' id='mailCodeReturn' value='"+obj1.mailCode+"'>");
                alert("验证码已经发送");
            }
        })
    }
    function toLogin() {
        location.href="${pageContext.request.contextPath}/jsp/login.jsp";
    }
</script>
<body class="login-page sidebar-collapse">
<div class="page-header" filter-color="3333">
    <%--背景图片来自--http://www.jswyw.com/zt/kyfh/202002/t20200212_6506686.shtml--%>
    <%--<div class="page-header-image" style="background-image:url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1582216394476&di=213fd4649b145d4e82d6482802a2b80d&imgtype=jpg&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D1547969452%2C252362791%26fm%3D214%26gp%3D0.jpg)"></div>--%>
    <div class="page-header-image" style="filter: blur(1px); background-image:url(http://www.jswyw.com/zt/kyfh/202002/W020200212435459141418.jpg)"></div>
    <div class="container">
        <div class="col-md-4"></div>
        <div class="col-md-4 content-center">
            <h4 id="d1" style="text-align: center"></h4>
            <div class="card card-login card-plain">
                <form name="register" action="${pageContext.request.contextPath}/user/userRegister" method="POST" id="search_form" enctype="multipart/form-data">
                    <div class="header header-primary text-center">
                        <div class="logo-container">
                            <%--<img src="../登录_files/logo2.png" alt="">--%>
                            <h5>院校失物招领</h5>
                        </div>
                    </div>
                    <div class="content">
                        <%--账号--%>
                        <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <svg class="bi bi-people-fill" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M9 16s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H9zm4-6a3 3 0 100-6 3 3 0 000 6zm-5.784 6A2.238 2.238 0 017 15c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 007 11c-4 0-5 3-5 4s1 1 1 1h4.216zM6.5 10a2.5 2.5 0 100-5 2.5 2.5 0 000 5z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>

                            <input id="uName" maxlength="16" name="uName" value="${uName}" onmouseleave="getName()"type="text" class="form-control" size="12" placeholder="帐号/名字">
                        </div>
                        <div style="clear:both"></div>
                        <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <svg class="bi bi-unlock-fill" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M2.5 10a2 2 0 012-2h7a2 2 0 012 2v5a2 2 0 01-2 2h-7a2 2 0 01-2-2v-5z"></path>
                                      <path fill-rule="evenodd" d="M10.5 5a3.5 3.5 0 117 0v3h-1V5a2.5 2.5 0 00-5 0v3h-1V5z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                            <input  id="password1" maxlength="16" onmouseleave="passwordZZ()"  name="uPassword" type="password" class="form-control" size="12" placeholder="密码">

                        </div>
                        <div style="clear:both"></div>
                        <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <svg class="bi bi-unlock-fill" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M2.5 10a2 2 0 012-2h7a2 2 0 012 2v5a2 2 0 01-2 2h-7a2 2 0 01-2-2v-5z"></path>
                                      <path fill-rule="evenodd" d="M10.5 5a3.5 3.5 0 117 0v3h-1V5a2.5 2.5 0 00-5 0v3h-1V5z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                            <input  id="password2"  maxlength="16" onmouseleave="passwordVerification()"  type="password" class="form-control" size="12" placeholder="再输入一次密码">

                        </div>
                        <div style="clear:both"></div>
                        <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <svg class="bi bi-envelope-fill" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M2.05 5.555L10 10.414l7.95-4.859A2 2 0 0016 4H4a2 2 0 00-1.95 1.555zM18 6.697l-5.875 3.59L18 13.743V6.697zm-.168 8.108l-6.675-3.926-1.157.707-1.157-.707-6.675 3.926A2 2 0 004 16h12a2 2 0 001.832-1.195zM2 13.743l5.875-3.456L2 6.697v7.046z"></path>
                                    </svg>
                                </span>
                            <input  type="email" maxlength="30"  placeholder="邮箱" id="email" name="uEmail" onmouseleave="getUserEmailFlag1()" class="form-control" size="12">

                        </div>
                        <div style="clear:both"></div>
                        <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <svg class="bi bi-document-code" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M6 3h8a2 2 0 012 2v10a2 2 0 01-2 2H6a2 2 0 01-2-2V5a2 2 0 012-2zm0 1a1 1 0 00-1 1v10a1 1 0 001 1h8a1 1 0 001-1V5a1 1 0 00-1-1H6z" clip-rule="evenodd"></path>
                                      <path fill-rule="evenodd" d="M10.646 7.646a.5.5 0 01.708 0l2 2a.5.5 0 010 .708l-2 2a.5.5 0 01-.708-.708L12.293 10l-1.647-1.646a.5.5 0 010-.708zm-1.292 0a.5.5 0 00-.708 0l-2 2a.5.5 0 000 .708l2 2a.5.5 0 00.708-.708L7.707 10l1.647-1.646a.5.5 0 000-.708z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                            <input type="text" id="mailCode"  name="mailCode" onmouseleave="validataMailCode()" class="form-control" size="12" placeholder="验证码">
                            <input type="button"<%-- class="form-control"--%> class="btn btn-outline-success rounded-pill" onclick="sendEmail(this)" id="getverification2" value="点击获取验证码"/>
                        </div>
                        <div style="clear:both"></div>
                        <div class="input-group form-group-no-border input-lg">
                                <span class="input-group-addon">
                                    <svg class="bi bi-phone" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M13 3H7a1 1 0 00-1 1v11a1 1 0 001 1h6a1 1 0 001-1V4a1 1 0 00-1-1zM7 2a2 2 0 00-2 2v11a2 2 0 002 2h6a2 2 0 002-2V4a2 2 0 00-2-2H7z" clip-rule="evenodd"></path>
                                      <path fill-rule="evenodd" d="M10 15a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                            <input type="text" maxlength="11" id="userTel"  name="uTelephone" onmouseleave="getUserTel1()" class="form-control" size="12" placeholder="手机号">

                        </div>

                    </div>
                    <div class="footer text-center">
                        <input  class="btn btn-primary btn-round btn-lg btn-block" onclick="submitForm()" value="确认注册">
                    </div>
                    <div class="pull-left">
                        <h6>
                            <a href="${pageContext.request.contextPath}/m/getMassagesList" class="link">返回首页</a>
                        </h6>
                    </div>

                    <div class="pull-right">
                        <h6>  <a href="${pageContext.request.contextPath}/jsp/login.jsp" style="color: #f96332;" <%--onclick="toLogin()"--%>>已有帐号直接登录</a>
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
        <div class="test3333">
            <span id="flag3"></span>
        </div>
        <div class="test4444">
            <span id="flag4"></span>
        </div>
        <div class="test5555">
            <span id="flag5"></span>
        </div>
        <div class="test6666">
            <span id="flag6"></span>
        </div>
        <div class="test7777">
            <span id="flag7">
                <h5 style="color: crimson;">注册公告</h5>
                <p>您注册时填写的姓名将作为联系人姓名，请注册时认真填写注册信息</p>
                <p>您注册时填写的手机号将作为您发布消息时别人联系你的手机号，请注册时认真填写注册信息</p>
                <p>您注册时填写的邮箱将会接受一条验证码，请注册时认真填写注册信息</p>
                <%--<footer class="blockquote-footer">您注册时的的手机号将作为您发布消息时别人联系你的手机号 <cite title="Source Title">请注册时认真填写注册信息</cite></footer>--%>
                <%--<footer class="blockquote-footer">您登录账号的姓名将作为联系人姓名 <cite title="Source Title">请注册时认真填写注册信息</cite></footer>--%>
            </span>
        </div>
    </div>
    <footer class="footer">

        <div class="copyright">
            ©
            <%--<script>--%>
                <%--document.write(new Date().getFullYear())--%>
                <%--var phone    = document.getElementById('phone');--%>
                <%--var password = document.getElementById('password');--%>

                <%--if(phone.validity.valueMissing)--%>
                <%--{--%>
                    <%--alert("账号不能为空");--%>
                    <%--return;--%>
                <%--} else if(phone.validity.patternMismatch)--%>
                <%--{--%>
                    <%--alert("账号输入有误");--%>
                    <%--return;--%>
                <%--}--%>
                <%--if(password.validity.valueMissing)--%>
                <%--{--%>
                    <%--alert("密码不能为空");--%>
                    <%--return;--%>
                <%--}--%>
            <%--</script>, Designed by  <a href="#" target="_blank" title="">院校失物招领</a>--%>
        </div>
    </footer>
</div>
<%-----------------------------------------------------------------------%>
    <%--<form id="userForm" action="${pageContext.request.contextPath}/user/userRegister" method="post" enctype="multipart/form-data">--%>
        <%--<input type="text" id="uName" name="uName" value="${uName}" onmouseleave="getUserFlag()" placeholder="起个名字吧"><span id='flag1'></span><br>--%>
        <%--<input type="password" id="password1" name="uPassword" placeholder="输入一条能记住的密码"><br>--%>
        <%--<input type="password" id="password2" onmouseleave="passwordVerification()" placeholder="再输一遍吧"><span id="flag2"></span><br>--%>
        <%--<input type="email"  placeholder="邮箱" id="email" name="uEmail" onmouseleave="getUserEmailFlag()"><input type="button" onclick="sendEmail()" value="点击获取验证码"/><span id="flag4"></span><br>--%>
        <%--<input type="text" id="mailCode" placeholder="请输入验证码"  name="mailCode" onmouseleave="validataMailCode()"><span id = "flag3"></span><br>--%>
        <%--<input type="text" id="userTel" placeholder="请输入手机号" name="uTelephone" onmouseleave="getUserTel()"><span id = "flag5"></span><br>--%>
        <%--<input type="button" value="注册" onclick="submitForm()"><input type="button" onclick="toLogin()" value="有账号了？去登录">--%>
        <%--<a href="${pageContext.request.contextPath}/m/getMassagesList">返回首页</a>--%>
    <%--</form>--%>
</body>
</html>
    
