<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/11
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传病例</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_min_341.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/addIdleItems.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquerySession.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//g.alicdn.com/tb/global/3.4.17/global-min.css?t=20150525">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/addIdle.css">
    <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
</head>

<body class="body">
<div id="J_SiteNav" class="site-nav">
    <div id="J_SiteNavBd" class="site-nav-bd">
        <ul id="J_SiteNavBdL" class="site-nav-bd-l" ${user == null?"":"hidden"}>
            <li id="J_LoginInfo" class="menu">
                <div id="J_LoginInfoHd" class="menu-hd">
                    <a href="${pageContext.request.contextPath}/index.action" target="_top" class="h" style="color: #6c6c6c">登录</a>
                    <a href="${pageContext.request.contextPath}/jumpRegister.action" target="_top">注册</a>
                </div>
            </li>
        </ul>

        <ul id="J_SiteNavBdR" class="site-nav-bd-r" style="float: left" ${user == null?"hidden":""}>
            <li class="J_Menu menu my-taobao">
                <div id="money" class="menu-hd J_MenuMyTaobao">
                    用户:${user.getUsername()}&nbsp;|&nbsp;
                    爱心值:${user.getLoveHeart()}&nbsp;|&nbsp;
                    余额:${user.getMoney()} 元
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="addIdle_div01">
    <div class="addIdle_div01_font">
        <h1>上传病例</h1>
    </div>
</div>
<div style="width: 1400px; margin: 0 auto;">
    <div class="addIdle_div02">
        <div class="addIdle_div02_form">
            <form id="addPublicBenefit" action="addPublicBenefit.action" method="post" enctype="multipart/form-data" onsubmit="return addPublicBenefit()">
                <input type="text" hidden name="userId" value="${user.getId()}">
                <label>病人名字：</label><input type="text" id="name" name="userName"   class="form-control"  ><br>
                <label>病人年龄：</label><input type="text" id="age" name="age" placeholder="只能输入数字" onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')" class="form-control" maxlength="6" ><br>
                <label>病人性别：</label><br>
                <select form="addPublicBenefit" class="form-control" name="gender">
                    <option selected value="男">男</option>
                    <option >女</option>
                </select><Br>
                <label>所需金额：</label><br>
                <input type="text" name="needMoney" id="needMoney" placeholder="只能输入数字" onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')" class="form-control"><br>
                <label>病情描述：</label><br>
                <textarea name="describe" form="addPublicBenefit" class="form-control" placeholder="请在此处输入文本"></textarea><br>
                <label>病例图片(包含医院盖章证明)：</label><input type="file" id="publicBenefitPicture" name="pictureName"  multiple><Br>
                <input type="submit" class="btn btn-info" value="上传" >
            </form>
        </div>
    </div>
</div>
</body>
</html>
