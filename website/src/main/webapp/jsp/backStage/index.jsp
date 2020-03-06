<%--
  Created by IntelliJ IDEA.
  User: yangzhichao
  Date: 2019/9/26
  Time: 7:55 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title>后台</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="../../test/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../test/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="../../test/css/animate.css" rel="stylesheet">
    <link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout indexB" style="overflow:hidden;">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <!--  左侧 - 头部   -->
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <%--<i class="fa fa-area-chart"></i>--%><img class="fa" style="height: 30px;" src="https://activesoul8231.github.io/favicon11.ico">
                                        <strong class="font-bold">院校失物招领</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div class="logo-element">
                            <img style="height: 30px;" src="https://activesoul8231.github.io/favicon11.ico">
                        </div>
                    </li>
                    <!--  左侧 - 头部 - 结束  -->

                    <!--  第一部分 - 开始  -->
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope"><p>${admin.uName}</p>
                            <p>${admin.uEmail}</p></span>
                    </li>
                    <!--  左侧 - 主页按钮 显示登陆以后第一页面  -->
                    <li>
                        <a class="J_menuItem" href="../../jsp/backStage/index1.jsp">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">主页</span>
                        </a>
                    </li>
                    <!--  左侧 - 主页按钮 - 结束 -->
                    <li>
                        <a class="J_menuItem" href="${pageContext.request.contextPath}/m/getAllMsg">
                            <!--  左侧图标  -->
                            <i class="fa fa fa-bar-chart-o"></i>
                            <!--  一级菜单名称 - 综合信息管理  -->
                            <span class="nav-label">综合信息管理</span>
                            <%--<span class="fa arrow"></span>--%>
                            <!--  一级菜单名称 - 结束 -->
                        </a>
                    </li>
                    <!--  页面分割线 - 开始 -->
                    <li class="line dk"></li>
                    <!--  页面分割线 - 结束 -->

                    <!--  第一部分 - 结束  -->

                    <!--  第二部分 - 开始  -->
                    <li>
                        <a class="J_menuItem" href="${pageContext.request.contextPath}/m/adminToGetUser?uName=${admin.uName}" <%--onclick="toGetUser('${admin.uName}')"--%>>
                            <!--  左侧图标  -->
                            <i class="fa fa fa-bar-chart-o"></i>
                            <!--  一级菜单名称 - banner  -->
                            <span class="nav-label">用户管理</span>
                            <%--<span class="fa arrow"></span>--%>
                            <!--  一级菜单名称 - 结束 -->
                        </a>
                    </li>
                    <!--  页面分割线 - 开始 -->
                    <li class="line dk"></li>
                    <!--  页面分割线 - 结束 -->

                    <!--  第二部分 - 结束  -->

                    <!--  第三部分 - 开始  -->
                    <li>
                        <a class="J_menuItem" href="${pageContext.request.contextPath}/m/toGetArea">
                            <!--  左侧图标  -->
                            <i class="fa fa fa-bar-chart-o"></i>
                            <!--  一级菜单名称 - banner  -->
                            <span class="nav-label">地区管理</span>
                            <%--<span class="fa arrow"></span>--%>
                            <!--  一级菜单名称 - 结束 -->
                        </a>
                    </li>
                    <!--  页面分割线 - 开始 -->
                    <li class="line dk"></li>
                    <!--  页面分割线 - 结束 -->

                    <!--  第三部分 - 结束  -->

                    <!--  第四部分 - 开始  -->
                    <li>
                        <a class="J_menuItem" href="${pageContext.request.contextPath}/m/toGetArticle">
                            <!--  左侧图标  -->
                            <i class="fa fa fa-bar-chart-o"></i>
                            <!--  一级菜单名称 - banner  -->
                            <span class="nav-label">物品类型管理</span>
                            <%--<span class="fa arrow"></span>--%>
                            <!--  一级菜单名称 - 结束 -->
                        </a>
                    </li>
                    <!--  第四部分 - 开始  -->

                </ul>
            </div>
        </nav>
        <!--  左侧导航结束  -->

        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i class="fa fa-bars"></i> </a>

                        <%--<form role="search" class="navbar-form-custom" method="post" action="${pageContext.request.contextPath}/admin/userList">--%>
                            <%--<div class="form-group">--%>
                                <%--<input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search">--%>
                            <%--</div>--%>
                        <%--</form>--%>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">

                        <li class="dropdown">
                                <a class="fa fa-bell" href="${pageContext.request.contextPath}/user/adminLogout">注销</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe id="J_iframe" width="100%" height="100%" src="../../jsp/backStage/index1.jsp" frameborder="0" data-id="index1.jsp" seamless></iframe>
            </div>
        </div>
        <!--右侧部分结束-->
    </div>

<!-- 全局js -->
<script src="../../test/js/jquery.min.js"></script>
<script src="../../test/js/bootstrap.min.js"></script>
<script src="../../test/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../../test/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="../../test/js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="../../test/js/hAdmin.js"></script>
<script type="text/javascript" src="../../test/js/index.js"></script>

<!-- 第三方插件 -->
<script src="../../test/js/plugins/pace/pace.min.js"></script>
<script type="text/javascript">
    function toGetUser(uName) {
        location.href="${pageContext.request.contextPath}/m/adminToGetUser?uName="+uName;
    }
</script>
</body>
</html>
