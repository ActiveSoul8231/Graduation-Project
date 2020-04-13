
var nametag=false;pwd1tag = false;teltag=false;pwd2tag = false; emailtag = false; mailcodetag = false;

var namemsg="请输入用户名";pwd1msg = "请输入密码";telmsg="请输入手机号";pwd2msg = "请确认输入密码";emailmsg = "请输入邮箱";mailcodemsg = "请填写注册码";

//    正则
function getName() {
    debugger
    var ss = $("#uName").val();
    var name = /^([\u4e00-\u9fa5]{2,4})|([A-Za-z0-9_]{4,16})|([a-zA-Z0-9_\u4e00-\u9fa5]{3,16})$/;
    if (ss !=null && ss != ""){
        if (!name.test(ss)){
            nametag=false;
            namemsg="🗿名字只能是中文或者数字或者英文";
            $("#flag1").text("🗿名字只能是中文或者数字或者英文");
        }else {
            nametag = true;
            $("#flag1").text("");
            getUserFlag();
        }
    }else {
        nametag=false;
        namemsg = "名字不能为空"
    }

}

/*密码至少包含 数字和英文，长度6-16*/
function passwordZZ() {
    var password = $("#password1").val();
    var pwd = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
    if (!pwd.test(password)){
        pwd1tag = false;
        pwd1msg = "密码至少包含 数字和英文，长度6-16位";
        $("#flag6").text("🍂密码至少包含 数字和英文，长度6-16位");
    }else {
        pwd1tag = true;
        $("#flag6").text("");
    }
}
function getUserTel1() {
    var userTels = $("#userTel").val();
    var phonetest=/^(?:(?:\+|00)86)?1(?:(?:3[\d])|(?:4[5-7|9])|(?:5[0-3|5-9])|(?:6[5-7])|(?:7[0-8])|(?:8[\d])|(?:9[1|8|9]))\d{8}$/;
    if (!phonetest.test(userTels)){
        teltag= false;
        telmsg="手机号格式错误";
        $("#flag5").text("🍂手机号格式不对吧？");
    }else {
        teltag=true;
        $("#flag5").text("");
        getUserTel();
    }
}
function getUserEmailFlag1() {
    var val = $("#email").val();
    var emailtest=/^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
    if (!emailtest.test(val)){
        emailtag=false;
        emailmsg="邮箱格式错误";
        $("#flag4").text("🍂你家邮箱这种格式啊？");
    }else {
        emailtag=true;
        $("#flag4").text("");
        getUserEmailFlag();
    }
}

/*注册时使用此点击事件是为了异步提交判断用户名是否已经被占用*/
/*flag1 注册时判断用户名是否唯一*/
function getUserFlag() {
    //将  id="uName"  的值放入 ss 中
    var ss = $("#uName").val();
    //设置 id="flag1" 的标签内容初始化为空
    $("#flag1").text("")
    $.ajax({
        //请求类型为：POST
        type:"POST",
        // 把请求发送到user  中的  getUserName() 方法
        url:"/getUserName",
        //映射或字符串值。规定连同请求发送到服务器的数据
        data:{"uName":ss},
        //规定预期的服务器响应的数据类型，默认执行智能判断（xml、json、script 或 html）
        dataType:"json",
        //请求成功时执行的回调函数。
        success:function (obj4) {
            if (obj4.message!=""){
                nametag=false;
                namemsg=obj4.message;
            }else{
                nametag=true;
            }
            $("#flag1").text(obj4.message)
        }
    })
}

// flag2 判断两次输入密码是否重复
function passwordVerification() {
    var password1 = $("#password1").val();
    var password2 = $("#password2").val();
    if(password1 != password2){
        pwd2tag=false;
        pwd2msg = "两次密码输入不一致";
        $("#flag2").text("🍂两次密码输入不一致");
    }else{
        pwd2tag=true;
        $("#flag2").text("");
    }
}



/**
 * 前端  ajax  验证  验证码是否正确
 */
// flag3 判断邮箱验证码是否相同
function validataMailCode() {
    var mailCode=$("#mailCode").val();
    var mailCodeReturn=$("#mailCodeReturn").val();
    if (mailCode != mailCodeReturn){
        mailcodetag=false;
        mailcodemsg="验证码错误";
        $("#flag3").text("🍂验证码是这个嘛？");
    }else {
        mailcodetag=true;
        $("#flag3").text("");
    }
}

// flag4 判断用户邮箱是否唯一
function getUserEmailFlag() {
    var val = $("#email").val();
    $.ajax({
        type:"POST",
        url:"/getuserEmailFlag",
        data:{"userMailFlag":val},
        dataType:"json",
        success:function (obj3) {
            if (obj3.mailFlag!=""){
                emailtag=false;
                emailmsg=obj3.mailFlag;
            }else{
                emailtag=true;
            }
            $("#flag4").text(obj3.mailFlag);
        }
    })
}


//    判断注册用户的手机号是否唯一
function getUserTel() {
    var val = $("#userTel").val();

    $.ajax({
        type:"POST",
        url:"/getuserTel",
        data:{"uTelephone":val},
        dataType:"json",
        success:function (obj2) {
            if (obj2.phoneFlag!=""){
                teltag=false;
                telmsg=obj2.phoneFlag
            }else{
                teltag=true;
            }
            $("#flag5").text(obj2.phoneFlag);
        }
    })

    // if (!phonetest.test(val)){
    //     $("#flag5").text("手机号格式不对！");
    // }
}

function submitForm() {
    debugger
    if (!nametag){
        layer.msg(namemsg);
        return false;
    }
    if (!pwd1tag){
        layer.msg(pwd1msg);
        return false;
    }
    if (!pwd2tag){
        layer.msg(pwd2msg);
        return false;
    }
    if (!teltag){
        layer.msg(telmsg);
        return false;
    }
    if (!emailtag){
        layer.msg(emailmsg);
        return false;
    }
    if (!mailcodetag){
        layer.msg(mailcodemsg);
        return false;
    }

    layer.ready(function () {
        $("#search_form").submit();
        layer.msg('注册成功');
    })

    // debugger
    // var str = "0";
    // var text1 = $("#flag1").text();
    // var input1 = $("#uName").text();
    // var text2 = $("#flag2").text();
    // var input2 = $("#password2").text();
    // var text3 = $("#flag3").text();
    // var input3 = $("#mailCode").text();
    // var text4 = $("#flag4").text();
    // var input4 = $("#email").text();
    // var text5 = $("#flag5").text();
    // var input5 = $("#userTel").text();
    // var text6 = $("#flag6").text();
    // var input6 = $("#password1").text();
    // if(text1 != ""){str = "用户名重复";}
    // if(text2 != ""&& input2==""){str="两次密码不同";}
    // if(text3 != ""&& input3==""){str="验证码怎么输错了";}
    // if(text4 != ""&& input4==""){str="邮箱不能重复或者格式错误"}
    // if(text5 != ""&& input5==""){str="手机号不能重复或者格式错误哦"}
    // if(text6 != ""&& input6==""){str="密码格式有些错误哦"}
    // if(input1 == ""){str="yyy"}
    // if(str == "0"){$("#search_form").submit();
    // }else{
    //     layer.msg(str);
    // }
}

var orgcountdown=60;

function Timing(that) {
    if (orgcountdown == 0) {
        that.removeAttribute("disabled");
        $("#getverification2").css("background","#d9e6fa");
        that.value="重新获取验证码";
        orgcountdown = 60;
        return;
    } else {
        that.setAttribute("disabled", true);
        $("#getverification2").css("background","#AAAAAA");
        that.value="重新发送(" + orgcountdown + ")";
        orgcountdown--;
    }
    setTimeout(function() {Timing(that) },1000)
}

//接收邮箱验证码转成的 json 文件
function sendEmail(that) {
    //清空验证码
    $("#mailCode").empty();
    //将 id=“email”  的值放入 val
    var val = $("#email").val();
    $("#flag1").text("");

    Timing(that);
// debugger
    $.ajax({
        type:"POST",
        url:"/getsendMail",
        //将邮箱地址放到键为 “uEmail” 中，，传到 sendMail() 方法
        data:{"uEmail":val},
        dataType:"json",
        success:function (obj1) {
            $("#mailCode").append("<input type='hidden' id='mailCodeReturn' value='"+obj1.mailCode+"'>");
            layer.msg('验证码已经发送');
        }
    })
}
