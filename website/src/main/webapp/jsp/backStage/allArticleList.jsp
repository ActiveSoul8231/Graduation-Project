<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/1 0001
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>物品列表</title>
    <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-3.3.4.css">

<%--数据表格--%>
    <link rel="shortcut icon" href="favicon.ico"> <link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="../../test/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="../../test/css/animate.css" rel="stylesheet">
    <link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

    <%--表单样式--%>
    <link href="../../test/css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="../../test/css/plugins/chosen/chosen.css" rel="stylesheet">

    <link href="../../test/css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">

    <link href="../../test/css/plugins/cropper/cropper.min.css" rel="stylesheet">

    <link href="../../test/css/plugins/switchery/switchery.css" rel="stylesheet">

    <link href="../../test/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">

    <link href="../../test/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">

    <link href="../../test/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <link href="../../test/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="../../test/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">

    <link href="../../test/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

    <link href="../../test/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">

    <link href="../../test/css/animate.css" rel="stylesheet">
    <link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
    <script src="https://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>

    <script src="../../test/js/bootstrap.min.js"></script>
    <%--<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <script type="text/javascript">
        function toAddArticle() {
            location.href="${pageContext.request.contextPath}/m/adminToAddArticle";
        }
        function toUpdate(resId) {
            location.href="${pageContext.request.contextPath}/m/adminToUpdateArticle?resId="+resId;
        }
        function todel(resId) {
            location.href="${pageContext.request.contextPath}/m/adminTodelArticle?resId="+resId;
        }

        <%--window.onload = function () {--%>
            <%--var options = $("#pageSize").options;--%>
            <%--var pageSize = "${pageCountUtil.pageSize}"--%>
            <%--for (var i in options){--%>
                <%--if (options[i].value()==pageSize){--%>
                    <%--options[i].attr("selected",true);--%>
                <%--}--%>
            <%--}--%>
        <%--}--%>
        <%--function page(pageNow) {--%>
            <%--var pageSize = $("#pageSize").val();--%>
            <%--location.href="${pageContext.request.contextPath}/m/getAllMsg?pageNow="+pageNow+"&pageSize="+pageSize;--%>
        <%--}--%>
    </script>
</head>
<body class="gray-bg">

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <button type="button" class="btn btn-outline-primary" onclick="toAddArticle()">添加物品</button>
                            <%--查询--%>
                            <%--<form  method="GET" action="${pageContext.request.contextPath}/m/getAllMsg" role="form" class="form-inline">--%>
                                <%--<input type="text" placeholder="标题" value="${selectByValue}" name="selectByValue">--%>
                                <%--<button type="submit"  class="btn btn-sm btn-primary m-t-n-xs">查询</button>--%>
                            <%--</form>--%>
                            <%--<div class="dataTables_length" id="DataTables_Table_0_length">--%>
                                <%--<label>--%>
                                    <%--&lt;%&ndash;每页显示多少条&ndash;%&gt;--%>
                                    <%--每页--%>
                                    <%--<select id="pageSize" onchange="page(${pageCountUtil.pageNow})" style="display: none">--%>

                                        <%--<option value="${pageCountUtil.pageSize}">${pageCountUtil.pageSize}</option>--%>
                                        <%--<option value="5">5</option>--%>
                                        <%--<option value="10">10</option>--%>
                                    <%--</select>条记录--%>
                                <%--</label>--%>
                            <%--</div>--%>
                        </div>
                        <div class="col-sm-2">

                        </div>
                        <div class="col-sm-4"><%--<label class="pull-right">共${tableCount}条</label>--%></div>
                    </div>
                </div>

                <%--表格内容--%>
                <div class="ibox-content">
                    <table class="table table-striped table-bordered table-hover dataTables-example">
                        <thead>
                            <tr>
                                <th style="width: 3%;text-align: center">ID</th>
                                <th style="width: 6%;text-align: center">物品类型</th>
                                <th style="width: 91%;text-align: right">操作</th>
                                <%--<th>操作</th>--%>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${allArticle}" var="allArticleS">
                                <tr style="height: 52px;">
                                    <td style="width: 3%;text-align: center">${allArticleS.resId}</td>
                                    <td style="width: 6%;text-align: center">${allArticleS.resName}</td>
                                    </td>
                                    <td style="width: 91%;text-align: right">
                                        <button type="button"  class="btn btn-outline-info"  onclick="toUpdate(${allArticleS.resId})">修改</button>
                                        <button type="button"  class="btn btn-outline-danger"  onclick="todel(${allArticleS.resId})">删除</button>
                                        <%--disabled--%>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--翻页--%>
    <%--<nav aria-label="Page navigation">--%>
        <%--<ul class="pager">--%>
            <%--<li><input type="button" style="margin-left: 65%" class="btn btn-default" value="首页" onclick="page(1)"></li>--%>
            <%--<li> <input type="button" class="btn btn-default" value="上一页" onclick="page(${pageCountUtil.pageNow-1})"></li>--%>
            <%--第${pageCountUtil.pageNow}页--%>
            <%--<li><input type="button" class="btn btn-default" value="下一页" onclick="page(${pageCountUtil.pageNow+1})"></li>--%>
            <%--<li><input type="button" class="btn btn-default" value="尾页" onclick="page(${pageCountUtil.pageEnd})"></li>--%>
            <%--共${pageCountUtil.pageEnd}页--%>
        <%--</ul>--%>
    <%--</nav>--%>

    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="https://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>
