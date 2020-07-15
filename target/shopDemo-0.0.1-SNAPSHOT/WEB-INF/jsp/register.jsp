<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/10
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
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
            <form action="register.action" method="post" onsubmit="return regIsEmpty()">
                <div>
                    <input id="regusername" placeholder="请输入账号"  class="form-control" type="text"  name="username"/>&nbsp;&nbsp;
                    <span style="color: #FF0000;" id="p3"></span><br>
                </div>
                <div><input id="regpassword" placeholder="请输入密码"  type="password" class="form-control" name="password"/>
                    &nbsp;&nbsp;<span style="color: #FF0000;" id="p4"></span><br />
                </div>
                <div><input id="conpassword" placeholder="请确认密码"  type="password" class="form-control" />
                    &nbsp;&nbsp;<span style="color: #FF0000;" id="p5"></span><br />
                </div>
                <input type="submit" class="btn btn-default" value="注册" id="button03"/>
            </form>
        </div>
    </div>
</div>
</body>
</html>
