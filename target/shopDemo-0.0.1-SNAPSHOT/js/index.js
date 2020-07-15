function idEmpty(){
    if ($("#username").val() == "" || $("#password").val() == ""){
        alert("账号和密码不能为空");
        return false;
    }else{
        return true;
    }
}

function regIsEmpty(){
    if ($("#regusername").val() == "" || $("#regpassword").val() == "" || $("#conpassword").val() == ""){
        alert("注册失败，请完善相关信息");
        return false;
    }else if($("#regpassword").val() != $("#conpassword").val()){
        alert("注册失败，两次密码不一样");
        return false;
    }else{
        alert("注册成功");
        return true;
    }
}