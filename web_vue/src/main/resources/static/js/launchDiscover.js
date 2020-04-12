function submitForm() {
    var str = "0";
    var areaId = $("#exampleFormControlSelect1").val();
    var areaDetail = $("#inputAddress").val();
    var articleTypeId = $("#exampleFormControlSelect3").val();
    var mTitle = $("#inputTitle").val();
    var mArticleTime = $("#lostTime").val();
    var mImage = $("#imgs").val();
    if(areaId ==""||areaId ==null ){
        str = "请在下拉框中选择地点范围";
    }
    if(areaDetail ==""||areaDetail ==null ){
        str = "请填写详细地址";
    }
    if(articleTypeId ==""||articleTypeId ==null ){
        str = "请在下拉框中选择物品的类型";
    }
    if(mTitle ==""||mTitle ==null ){
        str = "请编写一个简明扼要的标题哦！";
    }
    if(mArticleTime ==""||mArticleTime ==null ){
        str = "请在日期栏目中选择日期";
    }
    if(mImage ==""||mImage ==null ){
        str = "请上传物品图片";
    }
    if(str == "0"){
        $("#toLaunchD").submit();
    }else{
        layer.msg(str);
    }

}