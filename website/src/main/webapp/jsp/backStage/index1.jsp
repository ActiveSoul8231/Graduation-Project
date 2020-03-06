<%--
  Created by IntelliJ IDEA.
  User: yangzhichao
  Date: 2019/9/26
  Time: 8:45 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- cilicili - 主页按键页面  -->
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>装饰加载</title>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <style>
        body{
            padding:0;
            margin:0;
            width:100%;
            height:100vh;
            background:radial-gradient(#9b59b6, #8e44ad);
        }
        .wrapper{
            width:200px;
            height:60px;
            position: absolute;
            left:50%;
            top:50%;
            transform: translate(-50%, -50%);
        }
        .circle{
            width:20px;
            height:20px;
            position: absolute;
            border-radius: 50%;
            background-color: #fff;
            left:15%;
            transform-origin: 50%;
            animation: circle .5s alternate infinite ease;
        }

        @keyframes circle{
            0%{
                top:60px;
                height:5px;
                border-radius: 50px 50px 25px 25px;
                transform: scaleX(1.7);
            }
            40%{
                height:20px;
                border-radius: 50%;
                transform: scaleX(1);
            }
            100%{
                top:0%;
            }
        }
        .circle:nth-child(2){
            left:45%;
            animation-delay: .2s;
        }
        .circle:nth-child(3){
            left:auto;
            right:15%;
            animation-delay: .3s;
        }
        .shadow{
            width:20px;
            height:4px;
            border-radius: 50%;
            background-color: rgba(0,0,0,.5);
            position: absolute;
            top:62px;
            transform-origin: 50%;
            z-index: -1;
            left:15%;
            filter: blur(1px);
            animation: shadow .5s alternate infinite ease;
        }

        @keyframes shadow{
            0%{
                transform: scaleX(1.5);
            }
            40%{
                transform: scaleX(1);
                opacity: .7;
            }
            100%{
                transform: scaleX(.2);
                opacity: .4;
            }
        }
        .shadow:nth-child(4){
            left: 45%;
            animation-delay: .2s
        }
        .shadow:nth-child(5){
            left:auto;
            right:15%;
            animation-delay: .3s;
        }
        .wrapper span{
            position: absolute;
            top:75px;
            font-family: 'Lato';
            font-size: 20px;
            letter-spacing: 12px;
            color: #fff;
            left:15%;
        }</style>
    <span style="font-size:18px;">   </span><span style="font-size:24px;"><meta http-equiv="refresh" content="3;URL=${pageContext.request.contextPath}/m/getAllData"> </span>

</head>
<body>
<div class="wrapper">
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="circle"></div>
    <div class="shadow"></div>
    <div class="shadow"></div>
    <div class="shadow"></div>
    <span>Loading</span>
</div>



<script>
</script>

</body>
</html>
