<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/3
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>回显</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<form action="${pageContext.request.contextPath}/m/updateArticle" method="post">
    <input type="hidden" value="${getArticleById.resId}" name="resId">
    地点名称：<input type="text" value="${getArticleById.resName}" name="resName">

    <input type="submit" value="确认修改">
    <a class="btn btn-outline btn-primary" href="javascript:history.go(-1)">返回</a>
</form>
</body>
</html>