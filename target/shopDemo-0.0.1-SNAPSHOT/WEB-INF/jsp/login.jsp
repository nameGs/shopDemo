<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_min_341.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
</head>

<body class="body">
<div class="div01">
        <div class="div02">
            <div class="index">
                <span id="ss">${error == null?"密码登录":error}</span>
            </div>
            <div class="div04">
                <form action="findUser.action" method="post" onsubmit="return idEmpty()">
                    <div style="padding-top: 50px;">
                        <input id="username" placeholder="请输入账号"  class="form-control" type="text"  name="username"/>&nbsp;&nbsp;
                        <span style="color: #FF0000;" id="p1"></span><br>
                    </div>
                    <div><input id="password" placeholder="请输入密码"  type="password" class="form-control" name="password"/>&nbsp;&nbsp;<span style="color: #FF0000;" id="p2"></span><br /></div>
                    <input type="submit" class="btn btn-default"  value="登录" id="button01"/>
                    <input type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/jumpRegister.action'" value="注册" id="button02"/>
                </form>
            </div>
        </div>
    </div>
<div ></div>
</body>
</html>