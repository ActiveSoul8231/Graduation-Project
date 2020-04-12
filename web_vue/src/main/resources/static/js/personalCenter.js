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