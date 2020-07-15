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
    <title>增加闲置</title>
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
        <h1>上架闲置</h1>
    </div>
</div>
<div style="width: 1400px; margin: 0 auto;">
    <div class="addIdle_div02">
        <div class="addIdle_div02_form">
            <form  action="addIdleItems.action" method="post" enctype="multipart/form-data" onsubmit="return upLoad()">
                <span>闲置名称：</span><input type="text" id="idleItemsName" name="itemsName" class="form-control" maxlength="6" placeholder="不能超出六个字"><br>
                <span>闲置原价：</span><input type="text" placeholder="只能输入数字和小数点" onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')" id="idleItemsOrPrice" name="orPrice" class="form-control"><br>
                <span>闲置现价：</span><input type="text" placeholder="只能输入数字和小数点" onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')" id="idleItemsNowPrice" name="nowPrice" class="form-control"><br>
                <span>闲置介绍：</span><input type="text" id="idleItemsDescribe" name="describe" class="form-control" maxlength="25" placeholder="不能超过25个字"><br>
                <span>闲置图片：</span><input type="file" id="idleItemsPicture" name="pictureName"  multiple><Br>
                <input type="submit" class="btn btn-info" value="上传" >
            </form>
        </div>
    </div>
</div>
</body>
</html>
