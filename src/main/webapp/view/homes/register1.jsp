<%--
  Created by IntelliJ IDEA.
  User: 63465
  Date: 2017/11/15 0015
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <%@include file="/view/common/head.html" %>

    <title>注册</title>

    <link href="../../frontpage/css/dlstyle.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="../../frontpage/css/bootstrap.css"/>
    <link rel="stylesheet" href="../../frontpage/css/bootstrapValidator.css"/>
    <script type="text/javascript" src="../js/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/bootstrapValidator.js"></script>
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
                        <form id="defaultForm" method="post" action="" class="form-horizontal"
                              data-bv-message="This value is not valid"
                              data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                              data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                              data-bv-feedbackicons-validating="glyphicon glyphicon-refresh" >
                            <div class="user-email">
                                <div class="col-lg-5" style="width: 100%">
                                    <label style="width:20px;height: 16px;margin-top: 9px;margin-left:20px; "><i class="am-icon-envelope-o"></i></label>
                                    <input class="form-control" style="padding-left: 30px" name="email" type="email" data-bv-emailaddress-message="请输入合法的邮箱！" />
                                </div>
                            </div>

                            <div class="user-email" >
                                <div class="col-lg-5" style="width: 100%">
                                    <label for="password" style="width:20px;height: 16px;margin-top: 9px;margin-left:20px; "><i class="am-icon-lock"></i></label>
                                    <input type="password" class="form-control" name="password" style="padding-left: 30px"
                                           required data-bv-notempty-message="密码必填不能为空！"
                                           data-bv-identical="true" data-bv-identical-field="confirmPassword" data-bv-identical-message="两次输入的密码不一致！"
                                           data-bv-different="true" data-bv-different-field="email" data-bv-different-message="密码和邮箱不能相同！"/>
                                </div>
                            </div>

                            <div class="user-email">
                                <div class="col-lg-5" style="width: 100%">
                                    <label for="passwordRepeat" style="width:20px;height: 16px;margin-top: 9px;margin-left:20px; "><i class="am-icon-lock"></i></label>
                                    <input type="password" class="form-control" name="confirmPassword" style="padding-left: 30px"
                                           required data-bv-notempty-message="确认密码不能为空！"
                                           data-bv-identical="true" data-bv-identical-field="password" data-bv-identical-message="两次输入密码不一致！"
                                           data-bv-different="true" data-bv-different-field="email" data-bv-different-message="密码和帐号不能相同！"/>
                                </div>
                            </div>

                        </form>

                        <div class="login-links">
                            <label for="reader-me">
                                <input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
                            </label>
                        </div>
                        <div   class="col-lg-9 col-lg-offset-3">
                            <input type="submit" id="btn" name="btn" value="注册" class="btn btn-primary" >
                        </div>

                    </div>

                    <%--  手机号码注册--%>

                    <div class="am-tab-panel">
                        <form method="post">
                            <div class="user-phone">
                                <label for="phone"><i class="am-icon-mobile-phone am-icon-md"></i></label>
                                <input type="tel" name="" id="phone" placeholder="请输入手机号">
                            </div>
                            <div class="verification">
                                <label for="code"><i class="am-icon-code-fork"></i></label>
                                <input type="tel" name="" id="code" placeholder="请输入验证码">
                                <a class="btn" href="javascript:void(0);" onclick="sendMobileCode();"
                                   id="sendMobileCode">
                                    <span id="dyMobileButton">获取</span></a>
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
                            <input type="submit" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
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
    <jsp:include page="../common/footer.jsp" flush="true"/>
</div>

<script>
    $(function () {
        $('#doc-my-tabs').tabs();
    })
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#defaultForm').bootstrapValidator();
    });
</script>
</body>

</html>
