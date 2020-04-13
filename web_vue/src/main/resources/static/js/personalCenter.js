var usernametag = false;       useremailtag = false;
var usernamemsg = "请输入新名字";   useremailmsg = "请输入新邮箱";

$(function(){
    $("a.disableHref").click(function(event){
        return false;
// 	    		  event.preventDefault();
    });
});

//ViewModel
var vue = new Vue({
    el:'#app',
    data:{
        personalList:{
            userMs:{},
            personListMs:[]
        },
        pagination:{}
    },
    mounted:function () {//mounted    表示这个Vue  对象加载成功了
        var str = this;
        str.findListPersonal(1);

    },
    methods:{
        findListPersonal:function (start) {
            var self = this;
            var url = "/getPersonMsgList?start="+start;
            var index = layer.load()
            axios.get(url).then(function (data) {
                vue.pagination = data.data.data.personListMs;
                // console.log(data);
                if (data.status=='200'){
                    self.personalList = data.data.data;

                }else{
                    alert("连接服务器失败")
                }
                layer.close(index);
            })
        },
        jump: function(page){
            if('first'== page && 1!=vue.pagination.pageNum)
                vue.findListPersonal(1);

            else if('pre'== page &&	vue.pagination.hasPreviousPage )
                vue.findListPersonal(vue.pagination.prePage);

            else if('next'== page && vue.pagination.hasNextPage)
                vue.findListPersonal(vue.pagination.nextPage);

            else if('last'== page && vue.pagination.pageNum!=vue.pagination.pages)
                vue.findListPersonal(vue.pagination.pages);

        },
        jumpByNumber: function(start){
            if(start!=vue.pagination.pageNum)
                vue.findListPersonal(start);
        },
        toPost: function (mId,start,status) {
            if (status ==1){
                layer.confirm('如果您的这个物品已寻回，请确定', {
                    btn: ['确定','取消'] //按钮
                }, function(){
                    layer.msg('确定', {icon: 1});
                    var pMId = mId;
                    var url = "/toPost?mId="+pMId;
                    axios.post(url).then(function () {
                        console.log("信息状态修改完成")
                        vue.findListPersonal(start);
                    })
                }, function(){
                });
            }else if (status ==2) {
                layer.confirm('需要公开展示消息？确定公开', {
                    btn: ['确定','取消'] //按钮
                }, function(){
                    layer.msg('确定', {icon: 1});

                    var pMId = mId;
                    var url = "/toPost?mId="+pMId;
                    axios.post(url).then(function () {
                        console.log("信息状态修改完成")
                        vue.findListPersonal(start);
                    })
                }, function(){
                });
            }else {
                layer.confirm('确定删除消息吗？', {
                    btn: ['确定','取消'] //按钮
                }, function(){
                    layer.msg('确定', {icon: 1});
                    var pMId = mId;
                    var url = "/todel?mId="+pMId;
                    axios.post(url).then(function () {
                        console.log("信息删除完成")
                        vue.findListPersonal(start);
                        layer.msg("删除成功")
                    })
                }, function(){
                });
            }
        },
        todel: function (mId,start) {
            var url = "/toDel?mId="+mId;
            axios.post(url).then(function () {
                console.log("用户删除完成")
                vue.findListPersonal(start);
                layer.msg("删除完成，如需恢复请联系管理员")
            })
        }
    }
})

/**
 * 提交模态框修改名字时进行（非空，正则，非重复）验证
 *
 * function toSaveChanges()
 *
 * function getUserFlag1()
 *
 * function getUserFlag()
 */
function toSaveChanges() {
    debugger
    var feikong = $("#newName").val();
    if(feikong !=null && feikong !=""){
        getUserFlag();
        if (usernametag==true){
            getUserFlag1();
            debugger;
            // var feichongfu = document.getElementById('flag1').innerHTML;
            if(!usernametag){
                layer.msg(usernamemsg);
                return false;
            }else {
                $("#changeUserName").submit();
            }
        } else {
            layer.msg(usernamemsg)
            return false;
        }
    }else {
        layer.msg("用户名不能为空");
    }
}

function getUserFlag1() {
    //将  id="uName"  的值放入 ss 中
    var ss = $("#newName").val();
    //设置 id="flag1" 的标签内容初始化为空
    $("#flag1").text("");
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
        async:false,
        success:function (obj4) {
            if (obj4.message!= ""){
                usernametag = false;
                usernamemsg = "用户名重复！重新想一个";
            }else {
                usernametag = true;
                // $("#flag1").text(obj4.message)
            }
        }
    })
}

function getUserFlag() {
    var newName = $("#newName").val();
    var name = /^([\u4e00-\u9fa5]{2,4})|([A-Za-z0-9_]{4,16})|([a-zA-Z0-9_\u4e00-\u9fa5]{3,16})$/;
    if (!name.test(newName)) {
        usernametag = false;
        usernamemsg = "名字只能是中文或者数字或者英文";
        // $("#flag1").text("🗿名字只能是中文或者数字或者英文");
    }else {
        usernametag = true;
        // $("#flag1").text("");
    }
}

/*
*       普通用户修改邮箱，验证（非空，正则，邮箱唯一，验证码）
* */

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
        debugger;
        var feikongEmail = $("#newEmail").val();
        if(feikongEmail!=""&&feikongEmail!=null){
            getUserEmailFlag1();
            if (useremailtag==true){
                getUserEmailFlag();
                if(!useremailtag){
                    layer.msg(useremailmsg);
                }else {
                    //清空验证码
                    $("#mailCode").empty();
                    //将 id=“email”  的值放入 val
                    var val = $("#newEmail").val();
                    Timing(that);
                    $.ajax({
                        type:"POST",
                        url:"/getsendMailUpdate",
                        //将邮箱地址放到键为 “uEmail” 中，，传到 sendMail() 方法
                        data:{"uEmail":val},
                        dataType:"json",
                        success:function (obj1) {
                            $("#mailCode").append("<input type='hidden' id='mailCodeReturn' value='"+obj1.mailCode+"'>");
                            layer.msg("验证码已经发送");
                        }
                    })
                }
            } else {
                layer.msg(useremailmsg);
            }
        }else {
            layer.msg("邮箱不能为空");
        }
    }

    function getUserEmailFlag1() {
        var val = $("#newEmail").val();
        var emailtest=/^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
        if (!emailtest.test(val)){
            useremailtag = false;
            useremailmsg = "邮箱格式错误";
        }else {
            useremailtag = true;
        }
    }

    function getUserEmailFlag() {
        var val = $("#newEmail").val();
        $.ajax({
            type:"POST",
            url:"/getuserEmailFlag",
            data:{"userMailFlag":val},
            dataType:"json",
            async:false,
            success:function (obj3) {
                if (obj3.mailFlag != ""){
                    useremailtag = false;
                    useremailmsg = "该邮箱已经注册过"
                }else {
                    useremailtag = true;
                }
            }
        })
    }

    // 判断邮箱验证码是否相同
    function validataMailCode() {
        var mailCode=$("#mailCode").val();
        var mailCodeReturn=$("#mailCodeReturn").val();
        if (mailCode != mailCodeReturn){
            useremailtag = false;
            useremailmsg = "验证码错误";
        }else {
            useremailtag = true;
        }
    }

    function toSaveChangeEmail() {
        validataMailCode();
        debugger;
        if(!useremailtag){
            layer.msg(useremailmsg);
        }else {
            $("#changeUserEmail").submit();
        }

    }