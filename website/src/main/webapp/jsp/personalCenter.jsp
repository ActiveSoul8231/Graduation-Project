<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-2-14
  Time: 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="icon" type="image/png" href="https://activesoul8231.github.io/favicon%20(1).ico">
    <title>个人中心页面</title>
</head>
<link rel="stylesheet" href="../bootstrap-4.4.1-dist/css/bootstrap.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<%--<script src="../js/popper/popper.js"></script>--%>
<script src="../jquery-3.4.1/jquery-3.4.1.min.js"></script>
<script src="../bootstrap-4.4.1-dist/js/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
        // $('#example').tooltip(options);
    });
</script>
<style type="text/css">
    body{
        text-align:center;
        line-height: 24px;
        font: 14px Helvetica Neue,Helvetica,PingFang SC,Tahoma,Arial,sans-serif;
    }
    hr{
        background-color: #FEFAF5;
        margin-bottom: 0px;
    }
    .login{
        padding-top:15px;
    }
    .first{
        height: 220px;
        background-color: #c82b3a;
        padding:0px;
        color: #FEFAF5;
    }
    .top{

    }
    .logo{
        text-align: center;
        margin:5% auto 2px auto;
    }
    .middle{
        margin-bottom: 22px;
        font-size: unset;
    }
    .down{
        font-size: 19px;
    }
    .down .col-md .menu{
        text-decoration: none;
        color: #FEFAF5;
    }
    .down .col-md .menu a:link{
        text-decoration: none;
        color: #FEFAF5;
    }

    /*body*/
    .launch{
        margin:15px;
    }
        /*轮播图*/
    .Carousel{
        margin-bottom: 5px;
    }
    .massage{
        /*margin-top: 15px;*/
        text-align: left;
    }
    ul{
        margin: 0;
        padding: 0;
        -webkit-tap-highlight-color: rgba(0,0,0,0);
    }

    .apt h4{
        display: inline-block;
        /**display: inline;
        *zoom: 1;*/
        font-size: 24px;
        color: #000;
        line-height: 26px;
        margin-right: 20px;
        font-weight: 400;
    }
    .apt .entit {
        border-bottom: 1px solid #b2b2b2;
        height: 11px;
        position: relative;
        margin-top: 5px;
        margin-bottom: 8px;
    }
    .apt .entit span {
        color: #b2b2b2;
        font-size: 12px;
        padding-right: 5px;
        line-height: 11px;
        background: #fff;
        display: inline-block;
        /**display: inline;
        *zoom: 1;*/
        position: absolute;
        bottom: -1px;
    }
    .ulist li {
        padding: 0 55px 0 30px;
        position: relative;
        line-height: 38px;
        height: 38px;
        overflow: hidden;
    }
    .ulist li .num {
        position: absolute;
        left: 0;
        width: 20px;
        height: 20px;
        text-align: center;
        line-height: 20px;
        top: 10px;
        font-size: 16px;
    }
    .menu{
        text-decoration: none;

    }

    .ulist li a {
        color: #333;
        font-size: 16px;
        height: 38px;
        display: block;
        overflow: hidden;
        text-decoration: none;
    }
    .apc a {
        text-decoration: none;
    }

    /*a:visited {
        text-decoration: none;
    }
    a:link {
        text-decoration: none;
        color: #585858;
    }
    a {
        color: #333;
        text-decoration: none;
    }*/
    .ulist li .tm {
        position: absolute;
        right: 0;
        font-size: 12px;
        color: #999;
        top: 0;
        width: 35px;
        line-height: 38px;
        text-align: right;
    }
    .ulist li .top3 {
        background: #dd5d69;
        color: #fff;
    }
    #Footer {
        border-top: 1px solid #ebebeb;
        padding: 15px 0;
        background: #f0f0f0;
        position: relative;
        margin-top: 20px;
        /*transition: transform .5s ease 0s;*/
        -webkit-transition: -webkit-transform .5s ease 0s;
    }
    #Footer p {
        padding: 5px 0;
        text-align: center;
    }
    #Footer .top-nav {
        color: #d6d6d6;
        font-size: 12px;
    }
    #Footer .site-info {
        font-size: 12px;
        color: #999;
    }
    #Footer .site-info span {
        padding: 0 3px;
        color: #369;
    }
    #Footer a {
        text-decoration: none;
    }

    #banners:hover {
        background: #f8f8f8;
        border-color: #f8f8f8;
    }
    #banners:hover .feed_tegao  h5 a:hover{
        color: #008cdd;
    }
    #banners:hover .feed_tegao  h5 a:link{
        color: #008cdd;
    }
    #banners:hover .feed_tegao  h5 a:visited{
        color: #008cdd;
    }
    .feed_tegao {
        position: relative;
        height: 100px;
        border-bottom: 1px solid #ebebeb;
        padding: 15px 15px 20px 195px;
    }
    .feed_tegao h5 {
        /*padding-bottom: 6px; */
        margin-top: 20px;
        /* overflow: hidden; */
        /* padding-right: 30px; */
        padding: 0 0px 0 0px;
        position: relative;
        /* line-height: 10px; */
        height: 30px;
        overflow: hidden;
        width: 59%;
    }
    .feed_tegao h5 a {
        text-decoration: none;
        word-wrap: break-word;
        word-break: break-all;
        color: #000;
        font-size: 24px;
        line-height: 32px;
        font-weight: 400;
    }

    h4, h5, h6 {
        font-size: 100%;
    }
    .feed_tegao .picture {
        position: absolute;
        left: 15px;
        top: 18px;
        width: 110px;
        height: 62px;
    }
    .feed_tegao .picture a {
        display: block;
        height: 100%;
    }
    .feed_tegao .picture img {
        width: 100%;
        height: 100%;
    }
    a img {
        border: 0;
    }
    img {
        border: none;
    }
    .feed_tegao .summary {
        font-size: 14px;
        color: #777;
        height: 52px;
    }
    .del-1{
        float: right;
        margin-right: 111px;
        margin-top: -42px;
    }
    .del{
        position: relative;
        float: right;
        margin-top: -42px;
    }
    .abcd{
        display: none;
    }

</style>
<body>
<div class="container-fluid" style="padding:0px;">
    <%--head--%>
    <div class="container-fluid first">
        <div class="container">
            <div class="row top">
                <div class="col-md-3 login">
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    ...
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--模态框登陆注册--%>
                    <%--<ul id="123456" class="nav navbar-nav navbar-right">--%>
                    <%--&lt;%&ndash;<li style="float: left;"><a class="btn btn-outline-light btn-sm" data-toggle="modal" data-target="#register" href=""><span class="glyphicon glyphicon-user"></span> 注册</a></li>&ndash;%&gt;--%>
                    <%--<li><a class="btn btn-outline-light btn-sm" data-toggle="modal" data-target="#login" href=""><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>--%>
                    <%--</ul>--%>


                    <%--<button type="button" class="btn btn-light">登录</button>--%>
                    <%--普通登录注册--%>
                    <c:if test="${userSession.uName==null}">
                        <!-- Button trigger modal -->
                        <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">--%>
                            <%--登录--%>
                        <%--</button>--%>

                        <a id="123456" class="btn btn-outline-light btn-sm" href="${pageContext.request.contextPath}/jsp/login.jsp">登录</a>
                    </c:if>

                    <c:if test="${userSession.uName !=null}">
                        <div class="row">
                            <div class="col-md">欢迎：${userSession.uName}</div>
                        </div>
                        <div class="row" style="margin-bottom: 15px;">
                            <div class="col-md">邮箱：${userSession.uEmail}</div>
                        </div>
                        <div class="row">
                            <div class="col-md"><a class="btn btn-outline-light btn-sm" href="${pageContext.request.contextPath}/user/logout">注销登录</a></div>
                        </div>
                        <%--<p id="userSession">${userSession.uName}<br>${userSession.uEmail}<a class="btn btn-outline-light btn-sm" href="${pageContext.request.contextPath}/user/logout">注销登录</a></p>--%>
                    </c:if>


                </div>
                <div class="col-md-6 logo">
                    <h1>院校失物招领</h1>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="row middle">
                <div class="col-md-3"></div>
                <div class="col-md-2 hr">
                    <hr>
                </div>
                <div class="col-md-2">
                    服务于院校的便民网站
                </div>
                <div class="col-md-2 hr">
                    <hr>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="row down">
                <div class="col-md">
                    <a class="menu" href="${pageContext.request.contextPath}/m/getMassagesList">首页</a>
                </div>
                <div class="col-md">
                    <a class="menu" href="${pageContext.request.contextPath}/m/getDiscoverList">失物招领</a>
                </div>
                <div class="col-md">
                    <a class="menu" href="${pageContext.request.contextPath}/m/getFindList">寻物启事</a>

                </div>
                <div class="col-md">
                    <c:if test="${userSession.uName==null}">
                        <a <%--onclick="toLogin()" --%>class="menu" href="${pageContext.request.contextPath}/user/toLogin" >个人中心</a>
                    </c:if>
                    <c:if test="${userSession.uName!=null}">
                        <a <%--onclick="toPersonalCenter('${userSession.uName}')"--%> class="menu" href="${pageContext.request.contextPath}/m/toPersonalCenter?uName=${userSession.uName}">个人中心</a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <%--body--%>
        <div class="abcd">
            <span id="flag1"></span>
            <span id="flag3"></span>
            <span id="flag4"></span>
        </div>
     <div class="container" style="width:1000px; padding-top:30px;">
         <div class="row massage">
             <div class="col-md">
                 <h3>我的账号:</h3>
                 <hr>
             </div>
         </div>
         <div class="row massage">
             <div class="col-md ">
                 <p>姓名：&nbsp;${userMs.uName}</p>
                 <p>邮箱：&nbsp;${userMs.uEmail}</p>
             </div>
             <div class="col-md ">
                 <p><button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#userUpdateName">修改名字</button>&nbsp;<button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#userUpdateEmail">修改邮箱</button>&nbsp;<button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#userUpdatePassword">修改密码</button></p>
             </div>
         </div>


         <!-- Modal          修改名字 -->
         <div class="modal fade" id="userUpdateName" tabindex="-1" role="dialog" data-backdrop="static" <%--aria-labelledby="staticBackdropLabel" --%>aria-hidden="true">
             <div class="modal-dialog modal-dialog-centered" role="document">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h3 class="modal-title" id="userUpdateNameTitle">修改用户名</h3>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                         </button>
                     </div>
                     <div class="modal-body">
                         <form id="changeUserName" action="${pageContext.request.contextPath}/user/userUpdateName" method="POST" enctype="multipart/form-data">
                             <label for="newName">填写新的用户名（注意格式）：</label><br>
                             <input id="newName" name="uName" placeholder="${userMs.uName}"><br>
                         </form>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                         <button type="button" class="btn btn-primary" onclick="toSaveChanges()">Save changes</button>
                     </div>
                 </div>
             </div>
         </div>
         <!-- Modal         修改邮箱   -->
         <div class="modal fade" id="userUpdateEmail" tabindex="-1" role="dialog" data-backdrop="static" <%--aria-labelledby="staticBackdropLabel"--%> aria-hidden="true">
             <div class="modal-dialog modal-dialog-centered" role="document">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h3 class="modal-title" id="userUpdateEmailTitle">修改邮箱</h3>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                         </button>
                     </div>
                     <div class="modal-body">
                         <form id="changeUserEmail" action="${pageContext.request.contextPath}/user/userUpdateEmail" method="POST" enctype="multipart/form-data" style="margin: 15px auto 15px auto;padding: 0px 15%;">
                             <%--<input  type="email" name="uEmail" placeholder="${userMs.eMail}"><br>--%>
                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <svg class="bi bi-envelope-fill" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M2.05 5.555L10 10.414l7.95-4.859A2 2 0 0016 4H4a2 2 0 00-1.95 1.555zM18 6.697l-5.875 3.59L18 13.743V6.697zm-.168 8.108l-6.675-3.926-1.157.707-1.157-.707-6.675 3.926A2 2 0 004 16h12a2 2 0 001.832-1.195zM2 13.743l5.875-3.456L2 6.697v7.046z"></path>
                                    </svg>
                                </span>
                                 <input  type="email" maxlength="30"  id="newEmail" name="uEmail" placeholder="${userMs.uEmail}" class="form-control" size="12">

                             </div>
                             <div style="clear:both">&nbsp;</div>
                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <svg class="bi bi-document-code" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M6 3h8a2 2 0 012 2v10a2 2 0 01-2 2H6a2 2 0 01-2-2V5a2 2 0 012-2zm0 1a1 1 0 00-1 1v10a1 1 0 001 1h8a1 1 0 001-1V5a1 1 0 00-1-1H6z" clip-rule="evenodd"></path>
                                      <path fill-rule="evenodd" d="M10.646 7.646a.5.5 0 01.708 0l2 2a.5.5 0 010 .708l-2 2a.5.5 0 01-.708-.708L12.293 10l-1.647-1.646a.5.5 0 010-.708zm-1.292 0a.5.5 0 00-.708 0l-2 2a.5.5 0 000 .708l2 2a.5.5 0 00.708-.708L7.707 10l1.647-1.646a.5.5 0 000-.708z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                                 <input type="text" id="mailCode"  name="mailCode" <%--onmouseleave="validataMailCode()"--%> class="form-control" size="12" placeholder="验证码">
                                 <input type="button"<%-- class="form-control"--%> class="btn btn-outline-success rounded-pill" onclick="sendEmail(this)" id="getverification2" value="点击获取验证码"/>
                             </div>
                         </form>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                         <button type="button" class="btn btn-primary" onclick="toSaveChangeEmail()">提交更改</button>
                     </div>
                 </div>
             </div>
         </div>

         <!-- Modal             修改密码   -->
         <div class="modal fade" id="userUpdatePassword" tabindex="-1" role="dialog" data-backdrop="static" <%--aria-labelledby="staticBackdropLabel"--%> aria-hidden="true">
             <div class="modal-dialog modal-dialog-centered" role="document">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h3 class="modal-title" id="userUpdatePasswordTitle">修改密码</h3>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                         </button>
                     </div>
                     <div class="modal-body">
                         <form id="changeUserPassword" action="${pageContext.request.contextPath}/user/userUpdatePassword" method="POST" enctype="multipart/form-data" style="margin: 15px auto 15px auto;padding: 0px 15%;">
                             <%--<input  type="email" name="uEmail" placeholder="${userMs.eMail}"><br>--%>
                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <svg class="bi bi-unlock-fill" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M2.5 10a2 2 0 012-2h7a2 2 0 012 2v5a2 2 0 01-2 2h-7a2 2 0 01-2-2v-5z"></path>
                                      <path fill-rule="evenodd" d="M10.5 5a3.5 3.5 0 117 0v3h-1V5a2.5 2.5 0 00-5 0v3h-1V5z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                                 <input type="hidden" id="successPassword" value="${userMs.uPassword}">
                                 <input  type="password" maxlength="16"  id="oldPassword"  placeholder="请您输入您修改之前的密码" class="form-control" size="12">
                             </div>
                             <div style="clear:both">&nbsp;</div>
                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <svg class="bi bi-unlock-fill" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M2.5 10a2 2 0 012-2h7a2 2 0 012 2v5a2 2 0 01-2 2h-7a2 2 0 01-2-2v-5z"></path>
                                      <path fill-rule="evenodd" d="M10.5 5a3.5 3.5 0 117 0v3h-1V5a2.5 2.5 0 00-5 0v3h-1V5z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                                 <input  type="password" maxlength="16"  id="newPassword" name="uPassword" placeholder="请您输入新的密码" class="form-control" size="12">
                             </div>
                             <div style="clear:both">&nbsp;</div>
                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <svg class="bi bi-document-code" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" d="M6 3h8a2 2 0 012 2v10a2 2 0 01-2 2H6a2 2 0 01-2-2V5a2 2 0 012-2zm0 1a1 1 0 00-1 1v10a1 1 0 001 1h8a1 1 0 001-1V5a1 1 0 00-1-1H6z" clip-rule="evenodd"></path>
                                      <path fill-rule="evenodd" d="M10.646 7.646a.5.5 0 01.708 0l2 2a.5.5 0 010 .708l-2 2a.5.5 0 01-.708-.708L12.293 10l-1.647-1.646a.5.5 0 010-.708zm-1.292 0a.5.5 0 00-.708 0l-2 2a.5.5 0 000 .708l2 2a.5.5 0 00.708-.708L7.707 10l1.647-1.646a.5.5 0 000-.708z" clip-rule="evenodd"></path>
                                    </svg>
                                </span>
                                 <input  type="hidden" maxlength="30"  id="userEmail" name="uEmail" value="${userMs.uEmail}" class="form-control" size="12">
                                 <input type="text" id="mailCode2"  name="mailCode" <%--onmouseleave="validataMailCode()"--%> class="form-control" size="12" placeholder="修改密码需邮箱验证">
                                 <input type="button"<%-- class="form-control"--%> class="btn btn-outline-success rounded-pill" onclick="sendEmail2(this)" id="getverification2" value="点击获取验证码"/>
                             </div>
                         </form>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                         <button type="button" class="btn btn-primary" onclick="toSaveChangePassword()">提交更改</button>
                     </div>
                 </div>
             </div>
         </div>


        <%--内容--%>
         <div class="row massage" style="margin-top:15px;">
             <div class="col-md">
                 <h3>我的消息:</h3>
                 <hr>
             </div>
         </div>
        <c:forEach items="${UserLaunchMs}" var="LaunchMs">
            <div class="row massage" id="banners">
                <div class="col-md-12">
                    <div class="feed_tegao long">
                        <h5>
                            <a href="${pageContext.request.contextPath}/m/toDetails?mId=${LaunchMs.mId}" target="_blank">${LaunchMs.mAreaId}:${LaunchMs.mTitle}</a>
                        </h5>
                        <p class="picture"><a href="${pageContext.request.contextPath}/m/toDetails?mId=${LaunchMs.mId}" target="_blank"><img src="${LaunchMs.mImage}" alt="${LaunchMs.mAreaId}:${LaunchMs.mTitle}"></a></p>
                        <button type="button" class="btn btn-outline-danger del" data-toggle="tooltip" data-placement="top" title="删除后的信息将在个人中心消失，如需恢复请联系管理员" onclick="todel(${LaunchMs.mId})">删除消息</button>
                        <c:if test="${LaunchMs.mPostStatus eq '1'}">
                            <button type="button" class="btn btn-warning del-1" data-toggle="tooltip" data-placement="left" title="如果您的这个物品已寻回，请点我" onclick="toPost(${LaunchMs.mId})">已经找到</button>
                        </c:if>
                        <c:if test="${LaunchMs.mPostStatus eq '0'}">
                            <button type="button" class="btn btn-success del-1" data-toggle="tooltip" data-placement="left" title="需要公开展示消息？点我公开" onclick="toPost(${LaunchMs.mId})">重新发布</button>
                        </c:if>
                        <%--<p class="summary">所在地点：${LaunchMs.mAreaId} <br>发布时间：${LaunchMs.mLaunchDate}<br>信息类型：寻物启事</p>--%>
                        <%--<p>${LaunchMs.mPostStatus}</p>--%>

                    </div>
                </div>
            </div>
        </c:forEach>
     </div>
    <%--footer--%>
     <div id="Footer">
        <p class="top-nav">
            <span style="color: #000">友情链接：</span>

            <a href="#" target="_blank">XXXX科技有限公司</a>

            <a href="#" target="_blank">XXXXXX公司</a>

            <a href="#" target="_blank">XX信息网</a>

            <a href="#" target="_blank">XXX</a>
        </p>

        <p class="site-info">
            <span>Copyright © 2019-2020 DEDECMS. 仅为个人学习项目 版权所有<a href="/" target="_blank">Power by 集宁师范学院-计算机学院-wenlan</a> 备案号：<a href="#" <%--target="_blank"--%>> 粤ICP备00000000号-1</a></span><%--<a href="#" &lt;%&ndash;target="_blank"&ndash;%&gt;></a>--%>
        </p>
         <a href="http://www.beian.miit.gov.cn" target="_blank"></a>
     </div>
</div>

</body>
<script type="text/javascript">
    <%--旧密码非空，新密码非空，旧密码等于正确的密码，新旧密码不能相等，新密码格式正确，验证码输入正确，提交--%>
    function toSaveChangePassword() {
        var oldPwd = $("#oldPassword").val();
        var newPwd = $("#newPassword").val();
        var sccPwd = $("#successPassword").val();
        if (oldPwd !=""&&oldPwd!=null){
            if(newPwd!=""&&newPwd !=null){
                if (oldPwd == sccPwd){
                    if (newPwd!=oldPwd) {
                        var pwd = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
                        if (!pwd.test(newPwd)){
                            alert("新密码至少包含 数字和英文，长度6-16位！请重新输入")
                        }else {
                            var mailCode=$("#mailCode2").val();
                            var mailCodeReturn=$("#mailCodeReturn2").val();
                            if (mailCode != mailCodeReturn){
                                alert("验证码错误")
                            }else {
                                $("#changeUserPassword").submit();
                            }
                        }
                    }else {
                        alert("新密码不能与旧密码相同哦！请重新输入")
                    }
                }else {
                    alert("您的原始密码输入错误！请重新输入")
                }
            }else {
                alert("请输入新密码")
            }
        } else {
            alert("请输入原始密码！")
        }
    }

    function sendEmail2(that) {
        //清空验证码
        $("#mailCode2").empty();
        //将 id=“userEmail”  的值放入 val
        var val = $("#userEmail").val();
        Timing(that);
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/user/sendMailNew",
            //将邮箱地址放到键为 “uEmail” 中，，传到 sendMail() 方法
            data:{"uEmail":val},
            dataType:"json",
            success:function (obj1) {
                $("#mailCode2").append("<input type='hidden' id='mailCodeReturn2' value='"+obj1.mailCode+"'>");
                alert("验证码已经发送");
            }
        })
    }
    function toSaveChangeEmail() {

        validataMailCode();
        var VerificationCode = document.getElementById('flag3').innerHTML;
        debugger;
        if(VerificationCode!=""){
            alert("验证码错误请重新输入")
        }else {
            $("#changeUserEmail").submit();
        }

    }

    function getUserEmailFlag1() {
        var val = $("#newEmail").val();
        var emailtest=/^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
        if (!emailtest.test(val)){

            $("#flag4").text("🍂你家邮箱这种格式啊？");
        }else {
            $("#flag4").text("");
            // getUserEmailFlag();
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
        var val = $("#newEmail").val();
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/user/userEmailFlag",
            data:{"userMailFlag":val},
            dataType:"json",
            async:false,
            success:function (obj3) {
                $("#flag4").text(obj3.mailFlag);
            }
        })
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
        debugger;
        var feikongEmail = $("#newEmail").val();
        if(feikongEmail!=""&&feikongEmail!=null){
            getUserEmailFlag1();
            var zhengzeEmail  = $("#flag4").text();
            if (zhengzeEmail==""){
                // $("#changeUserName").submit();
                getUserEmailFlag();
                var feichongfuEmail  = document.getElementById('flag4').innerHTML;
                if(feichongfuEmail!=""&& feichongfuEmail.trim()!=""){
                    alert("这个邮箱已经有账号了")
                }else {
                    //清空验证码
                    $("#mailCode").empty();
                    //将 id=“email”  的值放入 val
                    var val = $("#newEmail").val();
                    Timing(that);
                    $.ajax({
                        type:"POST",
                        url:"${pageContext.request.contextPath}/user/sendMailUpdate",
                        //将邮箱地址放到键为 “uEmail” 中，，传到 sendMail() 方法
                        data:{"uEmail":val},
                        dataType:"json",
                        success:function (obj1) {
                            $("#mailCode").append("<input type='hidden' id='mailCodeReturn' value='"+obj1.mailCode+"'>");
                            alert("验证码已经发送");
                        }
                    })
                }
            } else {
                alert("邮箱格式错误")
            }
        }else {
            alert("邮箱不能为空");
        }
    }

    function getUserFlag() {
        var newName = $("#newName").val();
        var name = /^([\u4e00-\u9fa5]{2,4})|([A-Za-z0-9_]{4,16})|([a-zA-Z0-9_\u4e00-\u9fa5]{3,16})$/;
        if (!name.test(newName)) {
            $("#flag1").text("🗿名字只能是中文或者数字或者英文");
        }else {
            $("#flag1").text("");
        }
    }

    function getUserFlag1() {
        //将  id="uName"  的值放入 ss 中
        var ss = $("#newName").val();
        //设置 id="flag1" 的标签内容初始化为空
        $("#flag1").text("");
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
            async:false,
            success:function (obj4) {
                $("#flag1").text(obj4.message)
            }
        })
    }

    /**
     * 提交模态框修改名字时进行（非空，非重复，正则）验证
     */
    function toSaveChanges() {
        var feikong = $("#newName").val();
        if(feikong !=null && feikong !=""){
            getUserFlag1();
            debugger;
            var feichongfu = document.getElementById('flag1').innerHTML;
            if(feichongfu!=""&& feichongfu.trim()!=""){
                alert("用户名重复！重新想一个")
            }else {
                getUserFlag();
                var zhengze = $("#flag1").text();
                if (zhengze==""){
                    $("#changeUserName").submit();
                } else {
                    alert("🗿名字只能是中文或者数字或者英文")
                }
            }
        }else {
            alert("用户名不能为空");
        }

    }

    function toPost(mId) {
        location.href="${pageContext.request.contextPath}/m/toPost?mId="+mId;
    }
    function todel(mId) {
        location.href="${pageContext.request.contextPath}/m/todel?mId="+mId;
    }
    <%--var userLogA=document.getElementById('123456').innerHTML;--%>
    <%--var userSession=document.getElementById('userSession').innerHTML;--%>
    <%--var logoutA=document.createElement('a');    //创建a标签--%>
    <%--logoutA.href='${pageContext.request.contextPath}/user/logout';      //增加a标签的href属性--%>
    <%--logoutA.innerHTML='注销登录';--%>
    <%--&lt;%&ndash;userSession.appendChild(logoutA);&ndash;%&gt;--%>
    <%--// userSession=userSession.replace(/\s+/g,"");--%>
    <%--&lt;%&ndash;<a class="btn btn-outline-light btn-sm" href="${pageContext.request.contextPath}/user/logout">注销登录</a>&ndash;%&gt;--%>
    <%--if(userSession==""){--%>
        <%--document.getElementById('userSession').style.display="none";--%>
        <%--document.getElementById('123456').style.display="block";--%>
    <%--}else {--%>
        <%--document.getElementById('123456').style.display="none";--%>
        <%--// document.getElementById('userSession').append("<a class='btn btn-outline-light btn-sm' href='/user/logout'>注销登录</a>").style.display="block";--%>
        <%--document.getElementById('userSession').appendChild(logoutA).style.display="block";--%>
    <%--}--%>


    function toLogin() {
        location.href="${pageContext.request.contextPath}/user/toLogin";
    }
    function toLaunchFind(uId) {
        location.href="${pageContext.request.contextPath}/m/toLaunchFind?uId="+uId;
    }

</script>
</html>
