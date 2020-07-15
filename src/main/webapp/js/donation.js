function donation() {
    var money = $("#needMoney").val()-$("#nowMoney").val();
    if($("#sendMoney").val() == "" ||$("#sendMoney").val() == null){
        alert("请输入捐款金额!");
        return false;
    }
    if($("#userMoney").val() < $("#sendMoney").val()){
        alert("账户余额不足，请充值!");
        return false;
    }
    if($("#sendMoney").val() > money){
        $("#sendMoney").val(money);
        var flag = confirm("您只需捐"+money+"元即可达到需求，是否继续？");
        return flag;
    }
    return true;
}