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
    <link rel="stylesheet" href="../../frontpage/dict/vendor/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="../../frontpage/dict/dist/css/bootstrapValidator.css"/>

    <script type="text/javascript" src="../../frontpage/dict/vendor/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../../frontpage/dict/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../frontpage/dict/dist/js/bootstrapValidator.js"></script>
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

                        <form  id="enableForm"  method="post" action="" class="form-horizontal"
                               data-bv-message="This value is not valid"
                               data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                               data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                               data-bv-feedbackicons-validating="glyphicon glyphicon-refresh" >
                            <div class="form-group">
                                <div class="col-sm-5" style="width: 100%">
                                    <label style="width:20px;height: 16px;margin-top: 9px;margin-left:20px; "><i class="am-icon-envelope-o"></i></label>
                                    <input class="form-control" style="padding-left: 30px" name="email" type="email" placeholder="邮箱"data-bv-emailaddress="true"
                                           data-bv-emailaddress-message="请输入正确的邮箱！" />
                                </div>
                            </div>

                            <div class="form-group" >
                                <div class="col-sm-5" style="width: 100%">
                                    <label for="password" style="width:20px;height: 16px;margin-top: 9px;margin-left:20px; "><i class="am-icon-lock"></i></label>
                                    <input type="password" class="form-control" name="password" placeholder="密码" style="padding-left: 30px"
                                           data-bv-notempty="true" data-bv-notempty-message="密码不能为空！"
                                           data-bv-identical="true" data-bv-identical-field="confirmPassword" data-bv-identical-message="密码和确认密码不一致！"
                                           data-bv-different="true" data-bv-different-field="username" data-bv-different-message="密码和用户名不能相同！" />

                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-5" style="width: 100%">
                                    <label for="passwordRepeat" style="width:20px;height: 16px;margin-top: 9px;margin-left:20px; "><i class="am-icon-lock"></i></label>
                                    <input type="password" class="form-control" name="confirmPassword" placeholder="确认密码" style="padding-left: 30px"
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
                        <div class="am-cf" class="form-group">
                            <input type="submit" id="btn" name="btn" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl" style="border-radius:4px;">
                            <label style="height: 10px;width: 100%"></label>
                            <a class="am-btn am-btn-primary am-btn-sm am-fl" href="#" style="height: 37px;font-size: 16px;border-radius:4px;">返回首页</a>
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
                                <a class="btn" href="javascript:void(0);"
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

<%--<script type="text/javascript">
    $(document).ready(function() {
        $('#defaultForm').bootstrapValidator();
    });
</script>--%>
<script type="text/javascript">
    $(function(){/* 文档加载，执行一个函数*/
        $('#enableForm')
            .bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {/*input状态样式图片*/
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },

                    password: {
                        message:'密码无效',
                        validators: {
                            notEmpty: {
                                message: '密码不能为空'
                            },
                            stringLength: {
                                min: 6,
                                max: 30,
                                message: '用户名长度必须在6到30之间'
                            },
                            identical: {//相同
                                field: 'password', //需要进行比较的input name值
                                message: '两次密码不一致'
                            },
                            different: {//不能和用户名相同
                                field: 'username',//需要进行比较的input name值
                                message: '不能和用户名相同'
                            },
                            regexp: {
                                regexp: /^[a-zA-Z0-9_\.]+$/,
                                message: 'The username can only consist of alphabetical, number, dot and underscore'
                            }
                        }
                    },
                confirmPassword: {
                        message: '密码无效',
                        validators: {
                            notEmpty: {
                                message: '用户名不能为空'
                            },
                            stringLength: {
                                min: 6,
                                max: 30,
                                message: '用户名长度必须在6到30之间'
                            },
                            identical: {//相同
                                field: 'password',
                                message: '两次密码不一致'
                            },
                            different: {//不能和用户名相同
                                field: 'username',
                                message: '不能和用户名相同'
                            },
                            regexp: {//匹配规则
                                regexp: /^[a-zA-Z0-9_\.]+$/,
                                message: 'The username can only consist of alphabetical, number, dot and underscore'
                            }
                        }
                    },
                    email: {
                        validators: {
                            notEmpty: {
                                message: '邮件不能为空'
                            },
                            emailAddress: {
                                message: '请输入正确的邮件地址如：123@qq.com'
                            }
                        }
                    },


            })
            .on('success.form.bv', function(e) {//点击提交之后
                // Prevent form submission
                e.preventDefault();

                // Get the form instance
                var $form = $(e.target);

                // Get the BootstrapValidator instance
                var bv = $form.data('bootstrapValidator');

                // Use Ajax to submit form data 提交至form标签中的action，result自定义
                $.post($form.attr('action'), $form.serialize(), function(result) {

                });
            });
    });

</script>
</body>

</html>
