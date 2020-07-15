<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>详情界面</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_min_341.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/donation.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//g.alicdn.com/tb/global/3.4.17/global-min.css?t=20150525">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/idle.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/moreMessage.css">
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
                    余额:${user.getMoney()} 元 &nbsp;
                </div>
            </li>
        </ul>
    </div>
</div>

<div class="div05">
    <div class="div05_font">
        <h1 style="float: left">详情</h1>
        <div class="moreMessageBody-times-fontBody">
            <div class="moreMessageBody-times-fontBody-left"><label>需要资金：</label>${publicBenefit.getNeedMoney()}</div>
            <div class="moreMessageBody-times-fontBody-center"><label>援助次数：</label>${publicBenefit.getTimes()}</div>
            <div class="moreMessageBody-times-fontBody-right"><label>已筹资金：</label>${publicBenefit.getMoneyNumber()}</div>
        </div>

    </div>

</div>

<div class="moreMessageBody">
    <div class="moreMessageBody-times" >

    </div><br>
    <div class="moreMessageBody-img"><img width="300px" height="300px" src="img/${publicBenefit.getPictureName()}"></div>
    <div class="moreMessageBody-font">
        <table class="table table-condensed">
            <tr><td class="active"><label>姓名：</label>${publicBenefit.getUserName()}</td></tr>
            <tr><td><label>年龄：</label>${publicBenefit.getAge()}</td></tr>
            <tr><td class="active"><label>性别：</label>${publicBenefit.getGender()}</td></tr>
            <tr><td><label>病例介绍：</label>${publicBenefit.getIllnessDescribe()}</td></tr>
        </table>
    </div>
    <div class="moreMessageBody-button">
        <button class="btn btn-danger moreMessageBody-button02" onclick="location.href='${pageContext.request.contextPath}/jumpLoveHeart.action'">取消</button>
        <button class="btn btn-success moreMessageBody-button01" data-toggle="modal" data-target=".bs-example-modal-sm" title="${publicBenefit.getMoneyNumber() == publicBenefit.getNeedMoney()?"筹集资金已足够":""}" ${publicBenefit.getMoneyNumber() == publicBenefit.getNeedMoney()?"disalbed":""} >筹资</button>
    </div>
</div>

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <form action="donation.action" onsubmit="return donation()">
                <div class="modal-body">
                    <input id="needMoney" hidden value="${publicBenefit.getNeedMoney()}">
                    <input id="nowMoney" hidden value="${publicBenefit.getMoneyNumber()}">
                    <input  value="${user.getMoney()}" hidden id="userMoney">
                    <label>捐款编号：</label><input class="form-control" type="text" readonly id="publicBenefitId" name="publicBenefitId" value="${publicBenefit.getId()}">
                    <label>捐款资金：</label><input type="text" class="form-control" name="money" id="sendMoney">
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-success" value="捐款" >
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        </div>
                </div>
            </form>
        </div>
    </div>
</div>



</body>
</html>
