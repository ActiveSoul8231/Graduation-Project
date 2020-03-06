<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加地点</title>
</head>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
<form action="${pageContext.request.contextPath}/m/addArticle" method="post">
    物品名称：<input type="text" name="resName">

    <input type="submit" value="添加">
    <a class="btn btn-outline btn-primary" href="javascript:history.go(-1)">返回</a>
</form>
</body>
</html>