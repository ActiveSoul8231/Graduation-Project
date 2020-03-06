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
    <title>失物招领列表页</title>
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
        <c:forEach items="${mTypeZero}" var="typeZero">
            <div class="row massage" id="banners">
                <div class="col-md-12">
                    <div class="feed_tegao long">
                        <h4>
                            <a  href="${pageContext.request.contextPath}/m/toDetails?mId=${typeZero.mId}" target="_blank">${typeZero.mAreaId}:${typeZero.mTitle}</a>
                        </h4>
                        <p class="picture"><a href="${pageContext.request.contextPath}/m/toDetails?mId=${typeZero.mId}" target="_blank"><img src="${typeZero.mImage}" alt="${typeZero.mAreaId}:${typeZero.mTitle}"></a></p>
                        <p class="summary">所在地点：${typeZero.mAreaId} <br>发布时间：${typeZero.mLaunchDate}<br>信息类型：失物招领</p>
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

    function toDetails(mId) {
        location.href="${pageContext.request.contextPath}/m/toDetails?mId="+mId;
    }

</script>
</html>
