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
    <title>用户列表</title>
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
        function toPost(mId) {
            location.href="${pageContext.request.contextPath}/m/adminToPost?mId="+mId;
        }
        function todel(mId) {
            location.href="${pageContext.request.contextPath}/m/adminTodel?mId="+mId;
        }
        function deleteUser(id) {
            location.href="${pageContext.request.contextPath}/admin/deleteUser?id="+id;
        }
        function updateUserRecoveryFlag(id,recoveryFlag) {
            location.href="${pageContext.request.contextPath}/admin/updateUserRecoveryFlag?id="+id+"&recoveryFlag="+recoveryFlag;
        }
        function updateUserIceFlag(id,iceFlag) {
            location.href="${pageContext.request.contextPath}/admin/updateUserIceFlag?id="+id+"&iceFlag="+iceFlag;
        }
        function updateUserDelFlag(id,delFlag) {
            // alert(id)
            location.href="${pageContext.request.contextPath}/admin/updateUserDelFlag?id="+id+"&delFlag="+delFlag;
        }

        window.onload = function () {
            var options = $("#pageSize").options;
            var pageSize = "${pageCountUtil.pageSize}"
            for (var i in options){
                if (options[i].value()==pageSize){
                    options[i].attr("selected",true);
                }
            }
        }
        function page(pageNow) {
            var pageSize = $("#pageSize").val();
            location.href="${pageContext.request.contextPath}/m/getAllMsg?pageNow="+pageNow+"&pageSize="+pageSize;
        }
    </script>
</head>
<body class="gray-bg">

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <%--查询--%>
                            <form  method="GET" action="${pageContext.request.contextPath}/m/getAllMsg" role="form" class="form-inline">
                                <input type="text" placeholder="标题" value="${selectByValue}" name="selectByValue">
                                <button type="submit"  class="btn btn-sm btn-primary m-t-n-xs">查询</button>
                            </form>
                            <div class="dataTables_length" id="DataTables_Table_0_length">
                                <label type="hidden">
                                    <%--每页显示多少条--%>

                                    <select id="pageSize" onchange="page(${pageCountUtil.pageNow})" style="display: none">

                                        <option value="${pageCountUtil.pageSize}">${pageCountUtil.pageSize}</option>
                                        <option value="5">5</option>
                                        <option value="10">10</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-2">

                        </div>
                        <div class="col-sm-4"><label class="pull-right">共${tableCount}条</label></div>
                    </div>
                </div>

                <%--表格内容--%>
                <div class="ibox-content">
                    <table class="table table-striped table-bordered table-hover dataTables-example">
                        <thead>
                            <tr>
                                <th style="width: 3%;text-align: center">ID</th>
                                <th style="width: 6%;text-align: center">地点范围</th>
                                <th style="width: 6%;text-align: center">物品类型</th>
                                <th style="width: 35%;text-align: center">标题</th>
                                <th style="width: 6%;text-align: center">发布用户</th>
                                <th style="width: 9%;text-align: center">发布时间</th>
                                <td style="width: 8%;text-align: center">略缩图</td>
                                <th style="width: 8%;text-align: center">拾到/失物时间</th>
                                <th style="width: 7%;text-align: center">发布信息类型</th>
                                <th style="width: 5%;text-align: center">公布状态</th>
                                <th style="width: 7%;text-align: center">信息存在状态</th>
                                <%--<th>操作</th>--%>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${allMsg}" var="allMsgS">
                                <tr style="height: 70px;">
                                    <td style="width: 3%;text-align: center">${allMsgS.mId}</td>
                                    <td style="width: 6%;text-align: center">${allMsgS.mAreaId}</td>
                                    <td style="width: 6%;text-align: center">${allMsgS.mArticleTypeId}</td>
                                    <td style="height: 70px;display: block;overflow: hidden;line-height: 56px;" title="${allMsgS.mTitle}">${allMsgS.mTitle}</td>
                                    <td style="width: 6%;text-align: center">${allMsgS.mUId}</td>
                                    <td style="width: 9%;text-align: center">${allMsgS.mLaunchDate}</td>
                                    <td style="width: 8%;text-align: center"><img class="img-circle" width="80px" height="50px" src="${allMsgS.mImage}"/></td>
                                    <td style="width: 8%;text-align: center">${allMsgS.mArticleTime}</td>
                                    <c:if test="${allMsgS.mType eq '1'}">
                                        <td style="width: 7%;text-align: center">寻物启事</td>
                                    </c:if>
                                    <c:if test="${allMsgS.mType eq '0'}">
                                        <td style="width: 7%;text-align: center">失物招领</td>
                                    </c:if>
                                    <td style="width: 5%;text-align: center">
                                        <c:if test="${allMsgS.mPostStatus eq '1'}">
                                            <button type="button" class="btn btn-warning del-1"  onclick="toPost(${allMsgS.mId})">取消发布</button>
                                        </c:if>
                                        <c:if test="${allMsgS.mPostStatus eq '0'}">
                                            <button type="button" class="btn btn-success del-1" onclick="toPost(${allMsgS.mId})">重新发布</button>
                                        </c:if>
                                    </td>
                                    <td style="width: 7%;text-align: center">
                                        <c:if test="${allMsgS.mDelStatus eq '0'}">
                                            <button type="button" class="btn btn-danger del" onclick="todel(${allMsgS.mId})">删除消息</button>
                                        </c:if>
                                        <c:if test="${allMsgS.mDelStatus eq '1'}">
                                            <button type="button" class="btn btn-primary del" onclick="todel(${allMsgS.mId})">恢复消息</button>
                                        </c:if>
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
    <nav aria-label="Page navigation">
        <ul class="pager">
            <li><input type="button" style="margin-left: 65%" class="btn btn-default" value="首页" onclick="page(1)"></li>
            <li> <input type="button" class="btn btn-default" value="上一页" onclick="page(${pageCountUtil.pageNow-1})"></li>
            第${pageCountUtil.pageNow}页
            <li><input type="button" class="btn btn-default" value="下一页" onclick="page(${pageCountUtil.pageNow+1})"></li>
            <li><input type="button" class="btn btn-default" value="尾页" onclick="page(${pageCountUtil.pageEnd})"></li>
            共${pageCountUtil.pageEnd}页
        </ul>
    </nav>

    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="https://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>
