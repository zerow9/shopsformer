<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <%@include file="/view/common/head.html" %>
    <title>注册</title>
    <link href="/frontpage/css/dlstyle.css" rel="stylesheet" type="text/css">
</head>

<body>

<div class="login-boxtitle">
    <a href="#"><img alt="" src="/view/images/logobig.png"/></a>
</div>

<div class="res-banner">
    <div class="res-main">
        <div class="login-banner-bg"><span></span><img src="/view/images/big.jpg"/></div>
        <div class="login-box">

            <div class="am-tabs" id="doc-my-tabs">
                <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
                    <li class="am-active">
                        <a href="">邮箱注册</a>
                    </li>
                    <li>
                        <a href="">手机号注册</a>
                    </li>
                </ul>

                <div class="am-tabs-bd">
                    <div class="am-tab-panel am-active">
                        <form method="post" action="/user/addUser" id="update">
                            <div class="user-email">
                                <label for="email"><i class="am-icon-envelope-o"></i></label>
                                <input type="email" name="userEmail" id="email" placeholder="请输入邮箱账号">
                            </div>
                            <div class="verification">
                                <label for="code"><i class="am-icon-code-fork"></i></label>
                                <input type="text" name="emailId" id="code" placeholder="请输入验证码">
                                <span class="btn" href="javascript:void(0);" id="sendMobileCode">
                                    <button id="btnSendCode" onclick="sendMessage()">获取</button>
                                </span>
                            </div>
                            <div class="user-pass">
                                <label for="password"><i class="am-icon-lock"></i></label>
                                <input type="password" name="userPassword" placeholder="设置密码">
                            </div>
                            <div class="user-pass">
                                <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
                                <input type="password" name="otherUserPassword" placeholder="确认密码">
                            </div>A
                        </form>
                        <div class="login-links">
                            <label for="reader-me">
                                <input type="checkbox"> 点击表示您同意商城《服务协议》
                            </label>
                        </div>
                        <div class="am-cf">
                            <input type="submit" onclick="sub()" value="注册"
                                   class="am-btn am-btn-primary am-btn-sm am-fl">
                        </div>
                    </div>

                    <div class="am-tab-panel">
                        <form method="post">
                            <div class="user-phone">
                                <label for="phone"><i class="am-icon-mobile-phone am-icon-md"></i></label>
                                <input type="tel" name="" id="phone" placeholder="请输入手机号">
                            </div>
                            <div class="user-pass">
                                <label for="password"><i class="am-icon-lock"></i></label>
                                <input type="password" name="" id="password" placeholder="设置密码">
                            </div>
                            <div class="user-pass">
                                <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
                                <input type="password" name="" id="passwordRepeat" placeholder="确认密码">
                            </div>
                        </form>
                        <div class="login-links">
                            <label for="reader-me">
                                <input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
                            </label>
                        </div>
                        <div class="am-cf">
                            <input type="submit" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
                        </div>
                        <hr>
                    </div>

                    <script>
                        $(function () {
                            $('#doc-my-tabs').tabs();
                        })
                    </script>

                </div>
            </div>

        </div>
    </div>

    <%--底部--%>
    <jsp:include page="../../../view/common/footer.jsp" flush="true"/>
</body>
<script src="/frontpage/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="/view/js/email.js" type="text/javascript"></script>
</html>
