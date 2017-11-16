<%--
  Created by IntelliJ IDEA.
  User: 63465
  Date: 2017/11/15 0015
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<head lang="en">
    <meta charset="UTF-8">
    <title>登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" href="/view/images/favicon.ico"/>
    <link rel="stylesheet" href="/frontpage/AmazeUI-2.4.2/assets/css/amazeui.css"/>
    <link rel="stylesheet" href="/frontpage/css/dlstyle.css">
</head>

<body>

<div class="login-boxtitle">
    <a href="/view/homes/home.jsp"><img alt="logo" src="/view/images/logobig.png"/></a>
</div>

<div class="login-banner">
    <div class="login-main">
        <div class="login-banner-bg"><span></span><img src="/view/images/big.jpg"/></div>
        <div class="login-box">

            <h3 class="title">登录商城</h3>

            <div class="clear"></div>

            <div class="login-form">
                <form action="/user/loginInfo" method="post" id="add">
                    <div class="user-name">
                        <label for="user"><i class="am-icon-user"></i></label>
                        <input type="text" name="username" id="user" placeholder="邮箱/手机/用户名">
                    </div>
                    <div class="user-pass">
                        <label for="password"><i class="am-icon-lock"></i></label>
                        <input type="password" name="password" id="password" placeholder="请输入密码">
                    </div>
                </form>
            </div>

            <div class="login-links">
                <label for="remember-me"><input id="remember-me" name="rememberMe" type="checkbox" onclick="remember()">记住密码</label>
                <a href="#" class="am-fr">忘记密码</a>
                <a href="/user/register" class="zcnext am-fr am-btn-default">注册</a>
                <br/>
            </div>

            <div class="am-cf">
                <input type="submit" value="登 录" class="am-btn am-btn-primary am-btn-sm" onclick="add()">
            </div>
            <div class="partner">
                <h3>合作账号</h3>
                <div class="am-btn-group">
                    <ul>
                        <li>
                            <a href="#"><i class="am-icon-qq am-icon-sm"></i><span>QQ登录</span></a>
                        </li>
                        <li>
                            <a href="#"><i class="am-icon-weibo am-icon-sm"></i><span>微博登录</span> </a>
                        </li>
                        <li>
                            <a href="#"><i class="am-icon-weixin am-icon-sm"></i><span>微信登录</span> </a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>

<%--底部--%>
<jsp:include page="/view/common/footer.jsp" flush="true"/>
<script type="text/javascript">
    var rememberMe = false;

    function remember() {
        rememberMe = !rememberMe;
    }

    function add() {
        var obj = document.getElementById("add");
        if (rememberMe) {
            obj.action = "/user/loginInfo?rememberMe=" + rememberMe;
            obj.submit();
        } else
            obj.submit();
    }
</script>
</body>
</html>
