function upLoad(){
    var idleItemsName = $("#idleItemsName").val();
    var idleItemsOrPrice = $("#idleItemsOrPrice").val();
    var idleItemsNowPrice = $("#idleItemsNowPrice").val();
    var idleItemsDescribe = $("#idleItemsDescribe").val();
    var idleItemsPicture = $("#idleItemsPicture").val();
    if( idleItemsName == null ||
        idleItemsOrPrice == null ||
        idleItemsNowPrice == null ||
        idleItemsDescribe == null ||
        idleItemsPicture == null){
        alert("请完善相关信息！");
        return false;
    }
    return true;
}
function recharge() {
    var money = $("#rechargeMoney").val();
    if(money == null || money == ""){
        alert("充值金额不能为空！");
        return false;
    }
    return true;
}
