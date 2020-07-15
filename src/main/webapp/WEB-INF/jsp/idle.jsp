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
    <title>闲置交易</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_min_341.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/addIdleItems.js"></script>
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
                    余额:${user.getMoney()} 元 &nbsp;&nbsp;<button type="button" class="btn btn-default" data-toggle="modal" style="font-size: 10px" data-target="#recharge">充值</button>
                </div>
            </li>
        </ul>
        <%-- 充值模态框 --%>
        <div class="modal fade" id="recharge" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">充值</h4>
                    </div>
                    <form onsubmit="return recharge()" action="recharge.action">
                        <div class="modal-body">
                            充值账户:<input class="form-control" name="userId" type="text" value="${user.getUsername()}" disabled><br><br>
                            充值金额:<input class="form-control" name="money" id="rechargeMoney" type="text" onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
                        </div>
                        <div class="modal-footer">
                            <input type="submit" value="充值" class="btn btn-primary">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <ul class="site-nav-bd-r">
            <li class="menu home">
                <div class="menu-hd">
                    <a href="jumpLoveHeart.action">爱心筹 &nbsp;<div class="glyphicon glyphicon-arrow-right"></div></a>
                </div>
            </li>
        </ul>

    </div>
</div>

<div class="div05">
    <div class="div05_font">
        <h1>闲置交易</h1>
    </div>
</div>

<div class="div06">
    <table>
            <tr>
                <c:forEach items="${idleItemsList}" var="idleItems">
                    <td  class="div07" >
                        <div>
                            <div class="div08">
                                <img width="250px" height="250px" src="img/${idleItems.getPictureName()}">
                            </div>
                            <div class="font">
                                <div  class="div07_font01"><span>${idleItems.getItemName() }</span><br></div>
                                <div  class="div07_font02"><span>&nbsp;&nbsp;&nbsp;&nbsp;"${idleItems.getIdleDescribe() }"</span><br></div>
                                <div  class="div07_font03"><span>现价:${idleItems.getNowPrice()}RMB
                                    <div class="button"><button ${user.getMoney() < idleItems.getNowPrice()?"disabled":""} title="${user.getMoney()<idleItems.getNowPrice()?"您的余额不足":""}${user.getId()==idleItems.getUserId()?"  无法购买自己的商品":""}" onclick="location.href='${pageContext.request.contextPath}/buyIdleItems.action?idleItemsId=${idleItems.getId()}&money=${idleItems.getNowPrice()}&seller=${idleItems.getUserId()}'" class="btn btn-success" ${user.getId()==idleItems.getUserId()?"disabled":""}>购买</button></div>
                                    <br>原价:${idleItems.getOrPrice()}RMB</span></div>
                            </div>
                        </div>
                    </td>
                </c:forEach>
          <td  class="div07">
            <div>
                <button class="div07_img" onclick="location.href='${pageContext.request.contextPath}/jumpAddIdle.action'">
                    <img  src="img/add.jpg" title="添加/管理闲置" >
                </button>
            </div>
          </td>
        </tr>
    </table>
</div>
</body>
</html>
