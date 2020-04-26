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
    <title>详情细览</title>
</head>
<link rel="stylesheet" href="../bootstrap-4.4.1-dist/css/bootstrap.css">
<script src="../jquery-3.4.1/jquery-3.4.1.min.js"></script>
<script src="../bootstrap-4.4.1-dist/js/bootstrap.js"></script>
<script src="../js/popper/popper.js"></script>
<script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
<style type="text/css">
    body{
        text-align:center;
        line-height: 24px;
        font: 14px Helvetica Neue,Helvetica,PingFang SC,Tahoma,Arial,sans-serif;
    }
    hr{
        background-color: #FEFAF5;
        /*height:0.5px;*/
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
    #banners:hover .feed_tegao  h4 a:hover{
        color: #008cdd;
    }
    #banners:hover .feed_tegao  h4 a:link{
        color: #008cdd;
    }
    #banners:hover .feed_tegao  h4 a:visited{
        color: #008cdd;
    }
    .feed_tegao {
        position: relative;
        height: 162px;
        border-bottom: 1px solid #ebebeb;
        padding: 15px 15px 20px 195px;
    }
    .feed_tegao h4 {
        padding-bottom: 6px;
    }
    .feed_tegao h4 a {
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
        width: 160px;
        height: 120px;
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
    article {
        padding: 5px;
    }
    article h1 {
        font-size: 24px;
        padding-bottom: 10px;
        margin-bottom: 10px;
        border-bottom: 1px dotted #999;
    }
    .layui-quote-nm {
        border-style: solid;
        border-width: 1px 1px 1px 5px;
        background: 0 0;
    }
    .layui-elem-quote {
        margin-bottom: 10px;
        padding: 15px;
        line-height: 22px;
        border-left: 5px solid #009688;
        border-radius: 0 2px 2px 0;
        background-color: #f2f2f2;
    }
    .layui-badge-rim, .layui-colla-content, .layui-colla-item, .layui-collapse, .layui-elem-field, .layui-form-pane .layui-form-item[pane], .layui-form-pane .layui-form-label, .layui-input, .layui-layedit, .layui-layedit-tool, .layui-quote-nm, .layui-select, .layui-tab-bar, .layui-tab-card, .layui-tab-title, .layui-tab-title .layui-this:after, .layui-textarea {
        border-color: #e6e6e6;
    }
    .layui-col-md1, .layui-col-md10, .layui-col-md11, .layui-col-md12, .layui-col-md2, .layui-col-md3, .layui-col-md4, .layui-col-md5, .layui-col-md6, .layui-col-md7, .layui-col-md8, .layui-col-md9 {
        float: left;
    }
    .layui-col-lg1, .layui-col-lg10, .layui-col-lg11, .layui-col-lg12, .layui-col-lg2, .layui-col-lg3, .layui-col-lg4, .layui-col-lg5, .layui-col-lg6, .layui-col-lg7, .layui-col-lg8, .layui-col-lg9, .layui-col-md1, .layui-col-md10, .layui-col-md11, .layui-col-md12, .layui-col-md2, .layui-col-md3, .layui-col-md4, .layui-col-md5, .layui-col-md6, .layui-col-md7, .layui-col-md8, .layui-col-md9, .layui-col-sm1, .layui-col-sm10, .layui-col-sm11, .layui-col-sm12, .layui-col-sm2, .layui-col-sm3, .layui-col-sm4, .layui-col-sm5, .layui-col-sm6, .layui-col-sm7, .layui-col-sm8, .layui-col-sm9, .layui-col-xs1, .layui-col-xs10, .layui-col-xs11, .layui-col-xs12, .layui-col-xs2, .layui-col-xs3, .layui-col-xs4, .layui-col-xs5, .layui-col-xs6, .layui-col-xs7, .layui-col-xs8, .layui-col-xs9 {
        position: relative;
        display: block;
        box-sizing: border-box;
    }

    .layui-col-md12 {
        width: 100%;
    }
    .layui-elem-field {
        margin-bottom: 10px;
        padding: 0;
        border-width: 1px;
        border-style: solid;
    }
    fieldset {
        display: block;
        margin-inline-start: 2px;
        margin-inline-end: 2px;
        padding-block-start: 0.35em;
        padding-inline-start: 0.75em;
        padding-inline-end: 0.75em;
        padding-block-end: 0.625em;
        min-inline-size: min-content;
        border-width: 2px;
        border-style: groove;
        border-color: threedface;
        border-image: initial;
    }
    .layui-elem-field legend {
        margin-left: 20px;
        padding: 0 10px;
        font-size: 20px;
        font-weight: 300;
        width: 100px;
    }
    .layui-card:last-child {
         margin-bottom: 0;
     }
    .layui-card {
        margin-bottom: 15px;
        border-radius: 2px;
        background-color: #fff;
        box-shadow: 0 1px 2px 0 rgba(0,0,0,.05);
    }
    .layui-card-header {
        height: auto;
    }
    .layui-card-header {
        position: relative;
        line-height: 42px;
        padding: 0 5px;
        border-bottom: 1px solid #f6f6f6;
        color: #333;
        border-radius: 2px 2px 0 0;
        font-size: 12px;
    }
    .layui-icon {
        font-family: layui-icon!important;
        font-size: 16px;
        font-style: normal;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
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
    <div class="container" style="width:1000px; padding-top:30px;">
        <%--内容--%>
        <div c3lass="row ">
            <div class="col-md massage">
                <c:if test="${msgDetails.mType eq '1'}">
                    <article>
                        <h1>${msgDetails.mTitle}</h1>
                        <div style="line-height: 25px; padding: 5px;color:#c72c3b;font-size:12px;">公告：为防止用户信息被诈骗份子利用，即日起查看手机号须登录，院校失物招领网对恶意骚扰说不！</div>
                        <blockquote class="layui-elem-quote layui-quote-nm">栏目：<a href="">寻物启事</a><span lay-separator=""> </span>
                            发布时间：${msgDetails.mLaunchDate}<span lay-separator=""> </span></blockquote>
                        <fieldset class="layui-elem-field site-demo-button" style="margin-top: 30px;">
                            <legend>信息详情</legend>

                            <div class="layui-col-md12">
                                <div class="layui-card">
                                    <div class="layui-card-header my1">
                                        <svg class="bi bi-phone" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M13 3H7a1 1 0 00-1 1v11a1 1 0 001 1h6a1 1 0 001-1V4a1 1 0 00-1-1zM7 2a2 2 0 00-2 2v11a2 2 0 002 2h6a2 2 0 002-2V4a2 2 0 00-2-2H7z" clip-rule="evenodd"></path>
                                            <path fill-rule="evenodd" d="M10 15a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path>
                                        </svg>
                                        联系电话：
                                        <c:if test="${userSession.uId == null}">
                                            <a href="${pageContext.request.contextPath}/user/toLogin">[请登录后查看联系方式]</a>
                                        </c:if>
                                        <c:if test="${userSession.uId != null}">
                                            ${userDetails.uTelephone}
                                        </c:if>
                                    </div>
                                        <%--<div class="layui-card-header"><i class="layui-icon layui-icon-list" style="font-size:25px; color: #c72c3b;"></i> 性别：女</div>--%>
                                    <div class="layui-card-header">
                                        <svg class="bi bi-geo" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                            <path d="M9.5 6h1v9a.5.5 0 01-1 0V6z"></path>
                                            <path fill-rule="evenodd" d="M8.489 14.095a.5.5 0 01-.383.594c-.565.123-1.003.292-1.286.472-.302.192-.32.321-.32.339 0 .013.005.085.146.21.14.124.372.26.701.383.655.245 1.593.407 2.653.407s1.998-.162 2.653-.407c.329-.124.56-.259.701-.383.14-.125.146-.197.146-.21 0-.018-.018-.147-.32-.339-.283-.18-.721-.35-1.286-.472a.5.5 0 11.212-.977c.63.137 1.193.34 1.61.606.4.253.784.645.784 1.182 0 .402-.219.724-.483.958-.264.235-.618.423-1.013.57-.793.298-1.855.472-3.004.472s-2.21-.174-3.004-.471c-.395-.148-.749-.337-1.013-.571-.264-.234-.483-.556-.483-.958 0-.537.384-.929.783-1.182.418-.266.98-.47 1.611-.606a.5.5 0 01.595.383z" clip-rule="evenodd"></path>
                                        </svg>
                                        丢失地点：${msgDetails.mAreaId} -- ${msgDetails.mAreaDetail}</div>
                                    <div class="layui-card-header">
                                        <svg class="bi bi-person" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M15 16s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002zM5.022 15h9.956a.274.274 0 00.014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C13.516 12.68 12.289 12 10 12c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 00.022.004zm9.974.056v-.002zM10 9a2 2 0 100-4 2 2 0 000 4zm3-2a3 3 0 11-6 0 3 3 0 016 0z" clip-rule="evenodd"></path>
                                        </svg>
                                        联系人员：${userDetails.uName}</div>
                                    <div class="layui-card-header">
                                        <svg class="bi bi-calendar" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M16 2H4a2 2 0 00-2 2v12a2 2 0 002 2h12a2 2 0 002-2V4a2 2 0 00-2-2zM3 5.857C3 5.384 3.448 5 4 5h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H4c-.552 0-1-.384-1-.857V5.857z" clip-rule="evenodd"></path>
                                            <path fill-rule="evenodd" d="M8.5 9a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm-9 3a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm-9 3a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path>
                                        </svg>
                                        丢失时间：${msgDetails.mArticleTime}</div>
                                    <div class="layui-card-header">
                                        <svg class="bi bi-envelope-open" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M2.243 8.929l.514-.858L10 12.417l7.243-4.346.514.858L10 13.583 2.243 8.93z" clip-rule="evenodd"></path>
                                            <path fill-rule="evenodd" d="M9.184 12.68l-6.432 3.752-.504-.864 6.432-3.752.504.864zm1.632 0l6.432 3.752.504-.864-6.432-3.752-.504.864z" clip-rule="evenodd"></path>
                                            <path fill-rule="evenodd" d="M10.47 3.318a1 1 0 00-.94 0l-6 3.2A1 1 0 003 7.4V16a1 1 0 001 1h12a1 1 0 001-1V7.4a1 1 0 00-.53-.882l-6-3.2zm-1.41-.883a2 2 0 011.882 0l6 3.2A2 2 0 0118 7.4V16a2 2 0 01-2 2H4a2 2 0 01-2-2V7.4a2 2 0 011.059-1.765l6-3.2z" clip-rule="evenodd"></path>
                                        </svg>
                                        联系人邮箱：${userDetails.uEmail}</div>
                                    <div class="layui-card-header  my2">
                                        <svg class="bi bi-image" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M16.002 4h-12a1 1 0 00-1 1v10a1 1 0 001 1h12a1 1 0 001-1V5a1 1 0 00-1-1zm-12-1a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V5a2 2 0 00-2-2h-12z" clip-rule="evenodd"></path>
                                            <path d="M12.648 9.646a.5.5 0 01.577-.093l3.777 1.947V16h-14v-2l2.646-2.354a.5.5 0 01.63-.062l2.66 1.773 3.71-3.71z"></path>
                                            <path fill-rule="evenodd" d="M6.502 9a1.5 1.5 0 100-3 1.5 1.5 0 000 3z" clip-rule="evenodd"></path>
                                        </svg>
                                        物品照片：<img src="${msgDetails.mImage}" width="400px">
                                    </div>
                                        <%--<div class="layui-card-header"><i class="layui-icon layui-icon-about" style="font-size:20px; color: #c72c3b;"></i> 备注内容：姓名曹小毛，出生于1990年04月10曰，因小孩出生患有脑瘫，造成她心里压力大，心较弱，2017年12月27日从家中出走，出走前说要去广州挣钱，给儿子治病，到现在与家人无联系，有可能在广州某个美容院工作，望大家帮忙寻找，失踪人电话13539962005家人联系电话，18870485100</div>--%>
                                </div>
                            </div>
                        </fieldset>
                        <!-- page start -->
                        <div class="pagination"><ul></ul></div>
                        <!-- page end -->
                    </article>
                </c:if>
                <c:if test="${msgDetails.mType eq '0'}">
                    <article>
                        <h1>${msgDetails.mTitle}</h1>
                        <div style="line-height: 25px; padding: 5px;color:#c72c3b;font-size:12px;">公告：为防止用户信息被诈骗份子利用，即日起查看手机号须登录，院校失物招领网对恶意骚扰说不！</div>
                        <blockquote class="layui-elem-quote layui-quote-nm">栏目：<a href="">失物招领</a><span lay-separator=""> </span>
                            发布时间：${msgDetails.mLaunchDate}<span lay-separator=""> </span></blockquote>
                        <fieldset class="layui-elem-field site-demo-button" style="margin-top: 30px;">
                            <legend>信息详情</legend>

                            <div class="layui-col-md12">
                                <div class="layui-card">
                                    <div class="layui-card-header my1">
                                        <svg class="bi bi-phone" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M13 3H7a1 1 0 00-1 1v11a1 1 0 001 1h6a1 1 0 001-1V4a1 1 0 00-1-1zM7 2a2 2 0 00-2 2v11a2 2 0 002 2h6a2 2 0 002-2V4a2 2 0 00-2-2H7z" clip-rule="evenodd"></path>
                                            <path fill-rule="evenodd" d="M10 15a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path>
                                        </svg>
                                        联系电话：
                                        <c:if test="${userSession.uId == null}">
                                        <a href="${pageContext.request.contextPath}/user/toLogin">[请登录后查看联系方式]</a>
                                        </c:if>
                                        <c:if test="${userSession.uId != null}">
                                            ${userDetails.uTelephone}
                                        </c:if>
                                    </div>
                                        <%--<div class="layui-card-header"><i class="layui-icon layui-icon-list" style="font-size:25px; color: #c72c3b;"></i> 性别：女</div>--%>
                                    <div class="layui-card-header">
                                        <svg class="bi bi-geo" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                            <path d="M9.5 6h1v9a.5.5 0 01-1 0V6z"></path>
                                            <path fill-rule="evenodd" d="M8.489 14.095a.5.5 0 01-.383.594c-.565.123-1.003.292-1.286.472-.302.192-.32.321-.32.339 0 .013.005.085.146.21.14.124.372.26.701.383.655.245 1.593.407 2.653.407s1.998-.162 2.653-.407c.329-.124.56-.259.701-.383.14-.125.146-.197.146-.21 0-.018-.018-.147-.32-.339-.283-.18-.721-.35-1.286-.472a.5.5 0 11.212-.977c.63.137 1.193.34 1.61.606.4.253.784.645.784 1.182 0 .402-.219.724-.483.958-.264.235-.618.423-1.013.57-.793.298-1.855.472-3.004.472s-2.21-.174-3.004-.471c-.395-.148-.749-.337-1.013-.571-.264-.234-.483-.556-.483-.958 0-.537.384-.929.783-1.182.418-.266.98-.47 1.611-.606a.5.5 0 01.595.383z" clip-rule="evenodd"></path>
                                        </svg>
                                        拾物地点：${msgDetails.mAreaId} -- ${msgDetails.mAreaDetail}</div>
                                    <div class="layui-card-header">
                                        <svg class="bi bi-person" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M15 16s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002zM5.022 15h9.956a.274.274 0 00.014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C13.516 12.68 12.289 12 10 12c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 00.022.004zm9.974.056v-.002zM10 9a2 2 0 100-4 2 2 0 000 4zm3-2a3 3 0 11-6 0 3 3 0 016 0z" clip-rule="evenodd"></path>
                                        </svg>
                                        联系人员：${userDetails.uName}</div>
                                    <div class="layui-card-header">
                                        <svg class="bi bi-calendar" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M16 2H4a2 2 0 00-2 2v12a2 2 0 002 2h12a2 2 0 002-2V4a2 2 0 00-2-2zM3 5.857C3 5.384 3.448 5 4 5h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H4c-.552 0-1-.384-1-.857V5.857z" clip-rule="evenodd"></path>
                                            <path fill-rule="evenodd" d="M8.5 9a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm-9 3a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm-9 3a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2zm3 0a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path>
                                        </svg>
                                        拾物时间：${msgDetails.mArticleTime}</div>
                                    <div class="layui-card-header">
                                        <svg class="bi bi-envelope-open" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M2.243 8.929l.514-.858L10 12.417l7.243-4.346.514.858L10 13.583 2.243 8.93z" clip-rule="evenodd"></path>
                                            <path fill-rule="evenodd" d="M9.184 12.68l-6.432 3.752-.504-.864 6.432-3.752.504.864zm1.632 0l6.432 3.752.504-.864-6.432-3.752-.504.864z" clip-rule="evenodd"></path>
                                            <path fill-rule="evenodd" d="M10.47 3.318a1 1 0 00-.94 0l-6 3.2A1 1 0 003 7.4V16a1 1 0 001 1h12a1 1 0 001-1V7.4a1 1 0 00-.53-.882l-6-3.2zm-1.41-.883a2 2 0 011.882 0l6 3.2A2 2 0 0118 7.4V16a2 2 0 01-2 2H4a2 2 0 01-2-2V7.4a2 2 0 011.059-1.765l6-3.2z" clip-rule="evenodd"></path>
                                        </svg>
                                        联系人邮箱：${userDetails.uEmail}</div>
                                    <div class="layui-card-header  my2">
                                        <svg class="bi bi-image" color="#c72c3b" width="25px" height="25px" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M16.002 4h-12a1 1 0 00-1 1v10a1 1 0 001 1h12a1 1 0 001-1V5a1 1 0 00-1-1zm-12-1a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V5a2 2 0 00-2-2h-12z" clip-rule="evenodd"></path>
                                            <path d="M12.648 9.646a.5.5 0 01.577-.093l3.777 1.947V16h-14v-2l2.646-2.354a.5.5 0 01.63-.062l2.66 1.773 3.71-3.71z"></path>
                                            <path fill-rule="evenodd" d="M6.502 9a1.5 1.5 0 100-3 1.5 1.5 0 000 3z" clip-rule="evenodd"></path>
                                        </svg>
                                        物品照片：<img src="${msgDetails.mImage}" width="400px"></div>
                                        <%--<div class="layui-card-header"><i class="layui-icon layui-icon-about" style="font-size:20px; color: #c72c3b;"></i> 备注内容：姓名曹小毛，出生于1990年04月10曰，因小孩出生患有脑瘫，造成她心里压力大，心较弱，2017年12月27日从家中出走，出走前说要去广州挣钱，给儿子治病，到现在与家人无联系，有可能在广州某个美容院工作，望大家帮忙寻找，失踪人电话13539962005家人联系电话，18870485100</div>--%>
                                </div>
                            </div>
                        </fieldset>
                        <!-- page start -->
                        <div class="pagination"><ul></ul></div>
                        <!-- page end -->
                    </article>
                </c:if>
            </div>
        </div>
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


<!-- 注册窗口 -->
     <div id="register" class="modal fade" tabindex="-1" data-backdrop="static">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-body">
                     <button class="close" data-dismiss="modal">
                         <span>&times;</span>
                     </button>
                 </div>
                 <div class="modal-title">
                     <h1 class="text-center">注册</h1>
                 </div>
                 <div class="modal-body">
                     <form class="form-group" action="">
                             <div class="form-group">
                                 <label for="">用户名</label>
                                 <input class="form-control" type="text" placeholder="6-15位字母或数字">
                                   </div>
                                   <div class="form-group">
                                       <label for="">密码</label>
                                       <input class="form-control" type="password" placeholder="至少6位字母或数字">
                                      </div>
                                     <div class="form-group">
                                         <label for="">再次输入密码</label>
                                       <input class="form-control" type="password" placeholder="至少6位字母或数字">
                                     </div>
                                       <div class="form-group">
                                         <label for="">邮箱</label>
                                          <input class="form-control" type="email" placeholder="例如:123@123.com">
                                     </div>
                                   <div class="text-right">
                                          <button class="btn btn-primary" type="submit">提交</button>
                                         <button class="btn btn-danger" data-dismiss="modal">取消</button>
                                          </div>
                                       <a href="" data-toggle="modal" data-dismiss="modal" data-target="#login">已有账号？点我登录</a>
                               </form>
                           </div>
                           </div>
                   </div>
              </div>
           <!-- 登录窗口 -->
     <div id="login" class="modal fade" data-backdrop="static">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-body">
                     <button class="close" data-dismiss="modal">
                         <span>&times;</span>
                     </button>
                 </div>
                 <div class="modal-title">
                     <h1 class="text-center">登录</h1>
                 </div>
                 <div class="modal-body">
                     <form class="form-group" action="">
                             <div class="form-group">
                                 <label for="">用户名</label>
                                 <input class="form-control" type="text" placeholder="">
                             </div>
                             <div class="form-group">
                                 <label for="">密码</label>
                                 <input class="form-control" type="password" placeholder="">
                             </div>
                             <div class="text-right">
                                 <button class="btn btn-primary" type="submit">登录</button>
                                 <button class="btn btn-danger" data-dismiss="modal">取消</button>
                             </div>
                             <a href="" data-toggle="modal" data-dismiss="modal" data-target="#register">还没有账号？点我注册</a>
                     </form>
                 </div>
             </div>
         </div>
     </div>
</body>
<script type="text/javascript">
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
