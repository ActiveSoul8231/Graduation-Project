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
    <title>首页</title>
</head>
<link rel="stylesheet" href="../bootstrap-4.4.1-dist/css/bootstrap.css">
<script src="../jquery-3.4.1/jquery-3.4.1.min.js"></script>
<script src="../bootstrap-4.4.1-dist/js/bootstrap.js"></script>
<script src="../js/popper/popper.js"></script>
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
    /* 媒体选择器 */

    /* <= 414 */
    @media screen and (max-width: 414px){
        .first{
            height: 340px;
            background-color: #c82b3a;
            padding:0px;
            color: #FEFAF5;
        }
    }

    @media screen and (max-width:414px) {
        .ssss{
            height: 340px;
        }
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
        padding: 0 70px 0 30px;
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
        width: 70px;
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
</style>
<body>
<div class="container-fluid" style="padding:0px;">
    <%--head--%>
    <div class="container-fluid first">
        <div class="container ssss">
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

                    <input type="hidden" value="<%=request.getSession().getAttribute("userSession")%>">

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
                <div class="col-md .ml-auto">
                    <a class="menu" href="${pageContext.request.contextPath}/m/getMassagesList">首页</a>
                </div>
                <div class="col-md .ml-auto">
                    <a class="menu" href="${pageContext.request.contextPath}/m/getDiscoverList">失物招领</a>
                </div>
                <div class="col-md .ml-auto">
                    <a class="menu" href="${pageContext.request.contextPath}/m/getFindList">寻物启事</a>
                </div>
                <div class="col-md .ml-auto">
                    <c:if test="${userSession.uName==null}">
                        <a <%--onclick="toLogin()" --%>class="menu" href="${pageContext.request.contextPath}/user/toLogin" >个人中心</a>
                    </c:if>
                    <c:if test="${userSession.uName!=null}">
                        <a <%--onclick="toPersonalCenter('${userSession.uName}')"--%> class="menu" href="${pageContext.request.contextPath}/m/toPersonalCenter">个人中心</a>
                    </c:if>
                    <%--<a &lt;%&ndash;onclick="toPersonalCenter('${userSession.uName}')"&ndash;%&gt; class="menu" href="${pageContext.request.contextPath}/m/toPersonalCenter">个人中心</a>-   ?uName=${userSession.uName} --%>
                </div>
            </div>
        </div>
    </div>
    <%--body--%>
    <div class="container">
        <div class="row top">
            <div class="col-md-3"></div>
            <div class="col-md-3">
                <c:if test="${userSession.uName==null}">
                    <p type="button" class="btn btn-danger btn-lg launch border-top-0" onclick="toLogin()">
                        <svg class="bi bi-search" width="32" height="32" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M12.442 12.442a1 1 0 011.415 0l3.85 3.85a1 1 0 01-1.414 1.415l-3.85-3.85a1 1 0 010-1.415z" clip-rule="evenodd"></path>
                            <path fill-rule="evenodd" d="M8.5 14a5.5 5.5 0 100-11 5.5 5.5 0 000 11zM15 8.5a6.5 6.5 0 11-13 0 6.5 6.5 0 0113 0z" clip-rule="evenodd"></path>
                        </svg>
                        发布寻物
                    </p>
                </c:if>
                <c:if test="${userSession.uName !=null}">
                    <p type="button" class="btn btn-danger btn-lg launch border-top-0" onclick="toLaunchFind('${userSession.uName}')">
                        <svg class="bi bi-search" width="32" height="32" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M12.442 12.442a1 1 0 011.415 0l3.85 3.85a1 1 0 01-1.414 1.415l-3.85-3.85a1 1 0 010-1.415z" clip-rule="evenodd"></path>
                            <path fill-rule="evenodd" d="M8.5 14a5.5 5.5 0 100-11 5.5 5.5 0 000 11zM15 8.5a6.5 6.5 0 11-13 0 6.5 6.5 0 0113 0z" clip-rule="evenodd"></path>
                        </svg>
                        发布寻物
                    </p>
                </c:if>
            </div>
            <div class="col-md-3">
                <c:if test="${userSession.uName==null}">
                    <p type="button" class="btn btn-danger btn-lg launch border-top-0" onclick="toLogin()">
                        <svg class="bi bi-bucket" width="32" height="32" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M10 3.5A4.5 4.5 0 005.5 8h-1a5.5 5.5 0 1111 0h-1A4.5 4.5 0 0010 3.5z" clip-rule="evenodd"></path>
                            <path fill-rule="evenodd" d="M3.61 7.687A.5.5 0 014 7.5h12a.5.5 0 01.488.608l-1.826 8.217a1.5 1.5 0 01-1.464 1.175H6.802a1.5 1.5 0 01-1.464-1.175L3.512 8.108a.5.5 0 01.098-.42zm1.013.813l1.691 7.608a.5.5 0 00.488.392h6.396a.5.5 0 00.488-.392l1.69-7.608H4.624z" clip-rule="evenodd"></path>
                        </svg>
                        发布招领
                    </p>
                </c:if>
                <c:if test="${userSession.uName !=null}">
                    <p type="button" class="btn btn-danger btn-lg launch border-top-0" onclick="toLaunchDiscover('${userSession.uName}')">
                        <svg class="bi bi-bucket" width="32" height="32" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M10 3.5A4.5 4.5 0 005.5 8h-1a5.5 5.5 0 1111 0h-1A4.5 4.5 0 0010 3.5z" clip-rule="evenodd"></path>
                            <path fill-rule="evenodd" d="M3.61 7.687A.5.5 0 014 7.5h12a.5.5 0 01.488.608l-1.826 8.217a1.5 1.5 0 01-1.464 1.175H6.802a1.5 1.5 0 01-1.464-1.175L3.512 8.108a.5.5 0 01.098-.42zm1.013.813l1.691 7.608a.5.5 0 00.488.392h6.396a.5.5 0 00.488-.392l1.69-7.608H4.624z" clip-rule="evenodd"></path>
                        </svg>
                        发布招领
                    </p>
                </c:if>
            </div>
            <div class="col-md-3"></div>
        </div>
        <%--轮播图--%>
        <div class="row Carousel">
            <div class="col-md-12">
                <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-interval="100">
                            <img src="../asdfadsfa/lb2.png" class="d-block w-100" alt="...">
                            <%--<svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="占位符：第一张幻灯片"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#555" dy=".3em">First slide</text></svg>--%>
                        </div>
                        <div class="carousel-item" data-interval="100">
                            <img src="../asdfadsfa/lb3.png" class="d-block w-100" alt="...">
                            <%--<svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="占位符：第二张幻灯片"><title>Placeholder</title><rect width="100%" height="100%" fill="#666"></rect><text x="50%" y="50%" fill="#444" dy=".3em">Second slide</text></svg>--%>
                        </div>
                        <div class="carousel-item" data-interval="100">
                            <img src="../asdfadsfa/lb1.png" class="d-block w-100" alt="...">
                            <%--<svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="占位符：第三张幻灯片"><title>Placeholder</title><rect width="100%" height="100%" fill="#555"></rect><text x="50%" y="50%" fill="#333" dy=".3em">Third slide</text></svg>--%>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <%--内容--%>
        <div class="row  no-gutters massage">
            <div class="col-sm-6 col-md-6">
                <div class="apt">
                    <h4>失物招领</h4>
                    <p class="entit"><span>THE LOST THING</span></p>
                </div>
                <div class="apc">
                    <ul class="ulist">
                        <c:forEach items="${mTypeZero}" var="typeZero">
                            <li>
                                <p class="num top3">
                                    <svg class="bi bi-award" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M10 2l1.669.864 1.858.282.842 1.68 1.337 1.32L15.4 8l.306 1.854-1.337 1.32-.842 1.68-1.858.282L10 14l-1.669-.864-1.858-.282-.842-1.68-1.337-1.32L4.6 8l-.306-1.854 1.337-1.32.842-1.68 1.858-.282L10 2z"></path>
                                      <path d="M6 13.794V18l4-1 4 1v-4.206l-2.018.306L10 15.126 8.018 14.1 6 13.794z"></path>
                                    </svg>
                                </p>
                                <a href="${pageContext.request.contextPath}/m/toDetails?mId=${typeZero.mId}" title="${typeZero.mAreaId}:${typeZero.mTitle}">${typeZero.mAreaId}:${typeZero.mTitle}</a>
                                <span class="tm">${typeZero.mLaunchDate}</span>
                            </li>
                        </c:forEach>
                    </ul>
                    <a href="${pageContext.request.contextPath}/m/getDiscoverList" class="btn btn-outline-success rounded-pill" style="margin-left:40%">查看更多</a>
                </div>

            </div>
            <div class="col-sm-6 col-md-6">
                <div class="apt">
                    <h4>寻物启事</h4>

                    <p class="entit"><span>LOOKING FOR SOMETHING</span></p>
                </div>
                <div class="apc">
                    <ul class="ulist">
                        <c:forEach items="${mTypeOne}" var="typeOne">
                            <li>
                                <p class="num top3">
                                    <svg class="bi bi-award" width="1em" height="1em" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M10 2l1.669.864 1.858.282.842 1.68 1.337 1.32L15.4 8l.306 1.854-1.337 1.32-.842 1.68-1.858.282L10 14l-1.669-.864-1.858-.282-.842-1.68-1.337-1.32L4.6 8l-.306-1.854 1.337-1.32.842-1.68 1.858-.282L10 2z"></path>
                                        <path d="M6 13.794V18l4-1 4 1v-4.206l-2.018.306L10 15.126 8.018 14.1 6 13.794z"></path>
                                    </svg>
                                </p>
                                <a href="${pageContext.request.contextPath}/m/toDetails?mId=${typeOne.mId}" title="${typeOne.mAreaId}:${typeOne.mTitle}">${typeOne.mAreaId}:${typeOne.mTitle}</a>
                                <span class="tm">${typeOne.mLaunchDate}</span>
                            </li>
                        </c:forEach>


                    </ul>
                    <a href="${pageContext.request.contextPath}/m/getFindList" class="btn btn-outline-success rounded-pill" style="margin-left:40%">查看更多</a>
                </div>
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
    // var userLogA=document.getElementById('123456').innerHTML;
    <%--var userSession=document.getElementById('userSession').innerHTML;--%>
    <%--var logoutA=document.createElement('a');    //创建a标签--%>
    <%--logoutA.href='${pageContext.request.contextPath}/user/logout';      //增加a标签的href属性--%>
    <%--logoutA.innerHTML='注销登录';--%>
    <%--&lt;%&ndash;userSession.appendChild(logoutA);&ndash;%&gt;--%>
    // userSession=userSession.replace(/\s+/g,"");
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
    function toLaunchFind(uName) {
        location.href="${pageContext.request.contextPath}/m/toLaunchFind?uName="+uName;
    }
    function toLaunchDiscover(uName) {
        location.href="${pageContext.request.contextPath}/m/toLaunchDiscover?uName="+uName;
    }
    function toPersonalCenter(uName) {
        location.href="${pageContext.request.contextPath}/m/toPersonalCenter?uName="+uName;
    }

</script>
</html>
