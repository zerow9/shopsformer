<%@ page import="org.apache.shiro.SecurityUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
    <title>验证邮箱</title>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/stepstyle.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/public/basic/js/jquery-1.7.2.min.js"></script>
    <script src="/public/amazeUI/assets/js/amazeui.js"></script>
</head>
<body>
<!--头 -->
<jsp:include page="/public/common/top.jsp"/>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">
            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">绑定邮箱</strong> /
                    <small>Email</small>
                </div>
            </div>
            <hr/>
            <!--进度条-->
            <div class="m-progress">

            </div>
            <form class="am-form am-form-horizontal" id="update" action="/user/updateUserEmail" method="post">
                <div class="am-form-group">
                    <label for="email" class="am-form-label">原邮箱</label>
                    <div class="am-form-content">
                        <input type="email" id="email" value="<%=SecurityUtils.getSubject().getPrincipal()%>" readonly>
                    </div>
                </div>
                <div class="am-form-group code">
                    <label for="user-code" class="am-form-label">验证码</label>
                    <div class="am-form-content">
                        <input type="tel" id="user-code" name="code" placeholder="验证码">
                    </div>
                    <a class="btn" href="javascript:void(0);" onclick="sendMessage();" id="btnSendCode">
                        <div class="am-btn am-btn-danger">验证码</div>
                    </a>
                </div>
                <div class="am-form-group">
                    <label for="userEmail" class="am-form-label">新邮箱</label>
                    <div class="am-form-content">
                        <input type="email" name="userEmail" id="userEmail" placeholder="请输入新邮箱">
                    </div>
                </div>
                <div class="info-btn">
                    <div class="am-btn am-btn-danger" onclick="sub()">保存修改</div>
                </div>
            </form>
        </div>
        <jsp:include page="/public/common/tail.jsp"/>
    </div>
    <jsp:include page="/public/common/personalMenu.jsp"/>
</div>
<script src="/public/basic/js/email.js"></script>
</body>
</html>