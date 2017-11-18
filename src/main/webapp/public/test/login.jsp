<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/public/common/publicHead.jsp" %>
    <title>登录</title>
    <link rel="stylesheet" href="/public/basic/css/dlstyle.css">
    <link rel="stylesheet" href="/public/basic/css/movedown.css">
    <link rel="stylesheet" href="/public/basic/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/public/basic/css/bootstrapValidator.css">
    <script src="/public/basic/js/bootstrapValidator.js"></script>
</head>

<body>

<div class="login-boxtitle">
    <a href="/index.jsp"><img alt="logo" src="/public/images/logobig.png"/></a>
</div>

<div class="login-banner">
    <div class="login-main">
        <div class="login-banner-bg"><span></span><img src="/public/images/big.jpg"/></div>
        <div class="login-box">

            <h3 class="title">登录商城</h3>

            <div class="clear"></div>

            <div class="login-form">
                <form action="/user/login" method="post" id="login-form">
                    <div class="form-group">
                        <%--<label for="user"><i class="am-icon-user"></i></label>--%>
                        <input class="form-control" type="text" name="username" id="user" placeholder="请输入邮箱">
                    </div>
                    <div class="form-group">
                        <%--<label for="password"><i class="am-icon-lock"></i></label>--%>
                        <input class="form-control" type="password" name="password" id="password" placeholder="请输入密码">
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
<jsp:include page="/public/common/footer.jsp" flush="true"/>

<script type="text/javascript">

    //    表单输入验证
    $(document).ready(function () {
        $('#login-form').bootstrapValidator({
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    validators: {
                        notEmpty: {
                            message: '邮箱地址不能为空！'
                        },
                        emailAddress: {
                            message: '邮箱地址不正确！'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空！'
                        }
                    }
                }
            }
        });
    });

    //   begin：记住密码
    var rememberMe = false;

    function remember() {
        rememberMe = !rememberMe;
    }

    function add() {
        var obj = document.getElementById("add");
        if (rememberMe) {
            obj.action = "/user/login?rememberMe=" + rememberMe;
            obj.submit();
        } else
            obj.submit();
    }

    //    end：记住密码

</script>
</body>
</html>
