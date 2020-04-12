// window.onload=function () {
//     var message = "${message}"
//     if(message != null){
//         $("#flag2").text(message);
//     }
//     setTimeout(function () {
//         var ssname = $("#uName").val();
//         if (ssname!='') {
//             getUserFlag()
//         }
//     },1000)
//
// }

function getUserFlag() {
    //将  id="uName"  的值放入 ss 中
    var ss = $("#uName").val();
    // debugger;
    if(ss !=null &&ss !=''){
        //设置 id="flag1" 的标签内容初始化为空
        $("#flag1").text("")
        $.ajax({
            //请求类型为：POST
            type:"POST",
            // 把请求发送到user  中的  getUserFlag() 方法
            url:"/getUserFlag",
            //映射或字符串值。规定连同请求发送到服务器的数据
            data:{"uName":ss},
            //规定预期的服务器响应的数据类型，默认执行智能判断（xml、json、script 或 html）
            dataType:"json",
            //请求成功时执行的回调函数。
            success:function (obj) {
                console.log(obj.message1)
                $("#flag1").text(obj.message1)
                // $("#flag1").append("<span class='glyphicon glyphicon-leaf' >"+obj.message1+"</span>")
            }
        })
    }

}


function submitForm() {
    var str = "0";
    var text1 = $("#flag1").text();
    if (text1 == "🍂您已被封号，请联系管理员解封" || text1 == "") {str = "管理员邮箱：wenlan8231@163.com"}
    // if(){str = "用户名重复";}
    if (str == "0") {
        $("#search_form").submit();
    } else {
//在这里面输入任何合法的js语句
        layer.open({
            type: 1 //Page层类型
            ,area: ['530px', '400px']
            ,title: '联系管理员(别想混过去)'
            ,shade: 0.6 //遮罩透明度
            ,maxmin: true //允许全屏最小化
            ,anim: 6 //0-6的动画形式，-1不开启
            ,content: '<div style="margin:15px;width:500px;height: 298px;"><div style="width: 250px;height: 298px;float: left;"><p><h4>手机号：15804780093</h4></p><br><p><h4>邮&nbsp;箱：wenlan8231@foxmail.com</h4></p><br></div><div style="width: 250px;height: 298px;float: right;text-align: center;"><p><h4>微信扫我联系</h4></p><p><img src="/images/1585729919.jpg" style="width:200px;height:200px;"></p></div></div>'
        });
        // layer.msg(str);
    }
}

/*setInterval*/(
    function () {
        $.get("${context}/getTime",{},function (data) {
            $("#d1").html(data.dateStr);
        })
    }
        ,1000);

setInterval(function () {
    $("#d1").html(new Date().toLocaleString());
},1000);