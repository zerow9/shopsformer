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
    <link href="/public/basic/css/bootstrap.css" type="text/css">
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
            <form class="am-form am-form-horizontal" id="update" action="/updateForgetPassword" method="post">
                <div class="am-form-group">
                    <label for="email" class="am-form-label">原邮箱</label>
                    <div class="am-form-content">
                        <input type="email" id="email" name="userEmail" style="border-radius: 4px;">
                    </div>
                </div>

                <%--邮箱验证码--%>
                <div class="am-form-group">
                    <label for="code" class="am-form-label">验证码</label>
                    <div class="am-form-content">
                        <input type="text" name="code" id="code" placeholder="点击右侧获取验证码"
                               style="border-radius: 4px;width:85%;float: left"><input
                                style="float: right;width: 70px;height:32px"
                                 type="button" class="btn btn-info" id="btnSendCode" value="获取"/>
                    </div>
                </div>

                <div class="am-form-group">
                    <label for="password" class="am-form-label">输入新密码</label>
                    <div class="am-form-content">
                        <input type="password" name="userPassword" id="password" placeholder="输入新密码"
                               style="border-radius: 4px">
                    </div>
                </div>
                <div class="info-btn">
                    <button type="submit" class="am-btn am-btn-danger">提交</button>
                </div>
            </form>
        </div>
        <jsp:include page="/public/common/tail.jsp"/>
    </div>
    <jsp:include page="/public/common/personalMenu.jsp"/>
</div>
<script src="/public/basic/js/register.js"></script>
</body>
</html>