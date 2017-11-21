<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <%@include file="/public/common/publicHead.jsp" %>
    <title>注册</title>
    <link rel="stylesheet" href="/public/basic/css/dlstyle.css">
    <link rel="stylesheet" href="/public/basic/css/movedown.css">
    <link rel="stylesheet" href="/public/basic/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/public/basic/css/bootstrapValidator.css">
    <%--<script src="/public/basic/js/bootstrap.js"></script>--%>
    <script src="/public/basic/js/bootstrapValidator.js"></script>
</head>

<body>

<%--商城logo--%>
<div class="login-boxtitle">
    <a href="/index.jsp"><img alt="" src="/public/images/logobig.png"/></a>
</div>

<div class="res-banner">
    <div class="res-main">

        <%--登录左侧图片--%>
        <div class="login-banner-bg"><span></span><img src="/public/images/big.jpg"/></div>

        <div class="login-box">

            <h3 class="title">注册</h3>

            <div class="am-tabs" id="doc-my-tabs">

                <%--邮箱注册--%>
                <div class="am-tabs-bd">
                    <div class="am-tab-panel am-active">

                        <form id="register-form">

                            <%--邮箱--%>
                            <div class="form-group" id="userEmail">
                                <div class="input-group">
                                    <label for="email" class="input-group-addon"><i
                                            class="am-icon-envelope-o"></i></label>
                                    <input type="text" class="form-control" name="email" id="email"
                                           placeholder="请输入邮箱地址">
                                </div>
                            </div>

                            <%--邮箱验证码--%>
                            <div class="form-group">
                                <div class="input-group">
                                    <label for="code" class="input-group-addon"><i
                                            class="am-icon-code-fork"></i></label>
                                    <input type="text" class="form-control" name="emailCode" id="code"
                                           placeholder="请输入验证码">
                                    <span class="input-group-addon" id="codeSpan">
                                        <button class="btn btn-info" id="btnSendCode">获取验证码</button>
                                    </span>
                                </div>
                            </div>

                            <%--密码--%>
                            <div class="form-group">
                                <div class="input-group">
                                    <label class="input-group-addon"><i class="am-icon-lock"></i></label>
                                    <input type="password" class="form-control" name="password" placeholder="设置密码">
                                </div>
                            </div>

                            <%--确认密码--%>
                            <div class="form-group">
                                <div class="input-group">
                                    <label class="input-group-addon"><i class="am-icon-lock"></i></label>
                                    <input type="password" class="form-control" name="confirm_password"
                                           placeholder="确认密码">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="term"> 同意商城《服务协议》
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-lg btn-primary btn-block">注册</button>
                            </div>

                        </form>

                    </div>

                </div>
            </div>

        </div>
    </div>
</div>


<%--提示框--%>
<div class="am-modal am-modal-no-btn" tabindex="-1" id="tip-modal">
    <div class="am-modal-dialog">
        <div class="am-modal-hd modal-title">提示
            <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
        </div>
        <div class="am-modal-bd modal-body">
            Modal 内容。
        </div>
    </div>
</div>



<%--底部--%>
<jsp:include page="/public/common/footer.jsp" flush="true"/>

</body>
<script src="/public/basic/js/register.js" type="text/javascript"></script>
</html>
