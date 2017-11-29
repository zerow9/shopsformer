<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>人脸识别</title>
    <jsp:include page="/public/common/publicHead.jsp"/>
    <link href="/public/basic/css/facestyle.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/public/basic/css/dlstyle.css">
    <link href="/public/basic/css/demo.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/public/basic/css/movedown.css">
    <link rel="stylesheet" href="/public/basic/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/public/basic/css/bootstrapValidator.css">
</head>
<body>
<div class="login-boxtitle" style="background-color:#f2e0d4;width: 100%">
    <div class="logo-1"><a href="/index.jsp"><img alt="logo" src="/public/images/logobig0.png"/></a></div>
    <div class="login-1">
        <ul>
            <div>
                <div>
                    <c:if test="${empty user}">
                        <a href="/user/login" target="_top" class="h">亲，请登录</a>
                        <a href="/user/register" target="_top">免费注册</a>
                    </c:if>
                    <c:if test="${!empty user}">
                        <a href="/index.jsp" target="_top" class="h">欢迎：${user.userNickname}</a>
                        <a href="/logout" target="_top">退出</a>
                    </c:if>
                </div>
            </div>
        </ul>
    </div>
</div>
<h2 style="text-align: center">人脸识别登录</h2>
<div>
    <form action="#" id="em" style="margin-left: 40%;width: 300px;">
        <div class="form-group">
            <div class="input-group">
                <label for="user" class="input-group-addon"><i class="am-icon-user"></i></label>
                <input class="form-control" type="email" name="username" id="user" placeholder="请输入邮箱...">
                <input name="password" type="password" value="383ef385d69a446a902619e5dfef08dbs" hidden>
            </div>
        </div>
    </form>

    <div id="contentHolder">
        <div class="photo-1">
            <button id="picture"><i class="am-icon-camera" aria-hidden="true"></i>&nbsp;拍照</button>
            <br/>
            <video id="video" width="320" height="320" autoplay></video>
        </div>
        <div class="photo-2">
            <button id="sc"><i class="am-icon-check-square-o" aria-hidden="true"></i>&nbsp;确认识别</button>
            <canvas id="canvas" width="320" height="320"></canvas>
        </div>
    </div>

    <div style="margin-top: 33%">
        <jsp:include page="/public/common/footer.jsp" flush="true"/>
    </div>
</div>

<script src="/public/basic/js/jquery-1.7.2.min.js"></script>
<script src="/public/basic/js/sc.js"></script>
</body>
</html>
