<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>爱心筹</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_min_341.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/publicBenefit.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquerySession.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//g.alicdn.com/tb/global/3.4.17/global-min.css?t=20150525">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/idle.css">
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
        <ul class="site-nav-bd-r" >
            <li class="menu home">
                <div class="menu-hd">
                    <a href="jumpIdle.action">闲置 &nbsp;<div class="glyphicon glyphicon-arrow-right"></div></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="div05">
    <div class="div05_font">
        <h1>爱心筹</h1>
    </div>
</div>
<div class="div06">
    <table>
        <tr>
            <c:forEach items="${publicBenefitList}" var="publicBenefit">
                <td  class="div07" >
                    <div>
                        <div class="div08">
                            <img width="250px" height="250px" src="img/${publicBenefit.getPictureName()}">
                        </div>
                        <div class="font">
                            <div  class="div07_font03"><span>姓名:${publicBenefit.getUserName() }</span></div><br>
                            <div  class="div07_font03"><span>年龄:${publicBenefit.getAge()}</span></div><br>
                            <div  class="div07_font03"><span>性别:${publicBenefit.getGender()}</span></div><br>
                            <div  class="div07_font03"><span>已捐金额:${publicBenefit.getMoneyNumber()} <br>
                                <div class="button">
                                     <button  class="btn btn-success" onclick="location.href='${pageContext.request.contextPath}/jumpOnePublicBenefit.action?id=${publicBenefit.getId()}' ">查看</button>
                                </div>
                                <label style="color: blue;font-size: 25px ">${publicBenefit.getMoneyNumber() == publicBenefit.getNeedMoney()?"完成":"未完成"}</label>
                            </div>
                        </div>
                    </div>
                </td>
            </c:forEach>
            <td  class="div07">
                <div>
                    <button class="div07_img" onclick="location.href='${pageContext.request.contextPath}/jumpAddPublicBenefit.action'">
                        <img  src="img/add.jpg" title="上传病例" >
                    </button>
                </div>
            </td>
        </tr>
    </table>
</div>
</body>
</html>