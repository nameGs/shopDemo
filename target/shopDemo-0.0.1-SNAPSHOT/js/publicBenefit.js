function donation() {
    var donationMoney = $("#donationMoney").val();
    var userMoney = $("#donationUserMoney").val();
    donationMoney = parseFloat(donationMoney);
    if(donationMoney == null || donationMoney == ""){
        alert("请填写捐款金额!");
        return false;
    }else{
        if(donationMoney > userMoney){
            alert("捐款失败，账户余额不足");
            return false;
        }else{
            return true;
        }
    }
}
function addPublicBenefit() {
    var name = $("#name").val();
    var age = $("#age").val();
    var gender = $("#gender").val();
    var pictureName = $("#publicBenefitPicture");
    id(name == null ||
        age == null ||
        gender == null ||
        pictureName == null)
    {
        alert("请补全信息");
        return false;
    }
    return true;
}
function setVal(publicBenefitMoney,publicBenefitId,userId) {
    $("#publicBenefitMoney").val(publicBenefitMoney);
    $("#publicBenefitId").val(publicBenefitId);
    $("#donationUserId").val(userId);
}