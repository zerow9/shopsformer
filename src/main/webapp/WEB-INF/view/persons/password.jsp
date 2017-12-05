<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
    <title>修改密码</title>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/stepstyle.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/public/basic/js/jquery-1.7.2.min.js"></script>
    <script src="/public/amazeUI/assets/js/amazeui.js"></script>
</head>

<body>
<jsp:include page="/public/common/top.jsp"/>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">
            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> /
                    <small>Password</small>
                </div>
            </div>
            <hr/>
            <div class="m-progress"></div>
            <form class="am-form am-form-horizontal" id="submit" action="#" method="post">
                <div class="am-form-group">
                    <label for="user-old-password" class="am-form-label">原密码</label>
                    <div class="am-form-content">
                        <input type="password" name="oldPassword" id="user-old-password" placeholder="请输入原登录密码" style="border-radius: 4px">
                    </div>
                </div>
                <div class="am-form-group">
                    <label for="user-new-password" class="am-form-label">新密码</label>
                    <div class="am-form-content">
                        <input type="password" name="newPassword" id="user-new-password" placeholder="由数字、字母组合" style="border-radius: 4px">
                    </div>
                </div>
                <div class="am-form-group">
                    <label for="user-confirm-password" class="am-form-label">确认密码</label>
                    <div class="am-form-content">
                        <input type="password" name="userPassword" id="user-confirm-password" placeholder="请再次输入上面的密码" style="border-radius: 4px">
                    </div>
                </div>
                <div class="info-btn">
                    <div class="am-btn am-btn-danger" onclick="submit()">保存修改</div>
                </div>
            </form>
        </div>
        <jsp:include page="/public/common/tail.jsp"/>
    </div>
    <jsp:include page="/public/common/personalMenu.jsp"/>
</div>
</body>
<script type="text/javascript">
    function submit() {
        var url = document.getElementById("submit");
        url.action = "/user/updateUserPassword";
        url.submit();
    }
</script>
</html>