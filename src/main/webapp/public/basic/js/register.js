$(document).ready(function () {

    // 提示模态框实例
    var $modal = $('#tip-modal');

    // 获取验证码
    var getEmailCodeBtn = $('#btnSendCode').click(function () {
        var waitTime = 60;
        var emailInputVal = $('#email').val();
        if (emailInputVal === '') {
            $modal.find(".modal-body").text('请先输入邮件地址！');
            $modal.modal();
        } else {
            $.ajax({
                url: '/user/getEmailCode',
                type: 'POST',
                data: 'email=' + emailInputVal,
                success: function (result) {
                    $modal.find(".modal-body").text(result.msg);
                    $modal.modal();
                    // $modal.modal('close');
                },
                error: function () {
                    $modal.find(".modal-body").text('发送验证码失败，请检查你的网络状态。');
                    $modal.modal();
                }
            });

            // 重新获取验证码倒计时
            setInterval(function () {
                waitTime--;
                if (waitTime > 0) {
                    getEmailCodeBtn.attr("disabled", "true");
                    getEmailCodeBtn.text('重新获取（' + waitTime + '秒）');
                } else if (waitTime === 0) {
                    getEmailCodeBtn.text('重新获取验证码');
                    getEmailCodeBtn.removeAttr("disabled");
                } else {
                    clearInterval(this);
                }
            }, 1000);
        }
    });

//    表单输入验证
    $('#register-form').bootstrapValidator({
        container: 'popover',//气泡提示；默认为label提示
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        // verbose: false,     //	当一个字段有多个验证器时，对这个字段的验证将在遇到第一个遇到的错误时终止。因此，只有与该字段相关的第一个错误消息才会显示给用户
        fields: {
            email: {
                // trigger: 'blur',//触发器：当用户焦点离开该字段后，开始验证
                validators: {
                    notEmpty: {
                        message: '邮箱地址不能为空！'
                    },
                    stringLength: {
                        min: 4,
                        max: 30,
                        message: '邮箱地址长度应为4到30位'
                    },
                    emailAddress: {
                        message: '邮箱地址不正确！'
                    },
                    threshold: 6, //有6字符以上才发送ajax请求。
                    remote: {   //ajax远程验证
                        url: '/user/hasUser',//验证地址
                        message: '该用户已注册',//提示消息
                        delay: 2000,//设置2秒发送一次ajax
                        type: 'POST'//请求方式
                        /**自定义提交数据，默认值提交当前input value
                         *  data: function(validator) {
                               return {
                                   password: $('[name="passwordNameAttributeInYourForm"]').val(),
                                   whatever: $('[name="whateverNameAttributeInYourForm"]').val()
                               };
                            }
                         */
                    }
                }
            },
            emailCode: {
                validators: {
                    notEmpty: {
                        message: '验证码不能为空！'
                    },
                    stringLength: {
                        min: 6,
                        max: 6,
                        message: '验证码长度应该为6位！'
                    }
                }
            },
            password: {
                enabled: true,  // 是否开始该字段验证，默认：是
                validators: {
                    notEmpty: {
                        message: '密码不能为空！'
                    },
                    stringLength: {
                        min: 6,
                        max: 16,
                        message: '邮箱地址长度应为6到16位'
                    }
                }
            },
            confirm_password: {
                enabled: true,
                validators: {
                    notEmpty: {
                        message: '密码不能为空！'
                    },
                    stringLength: {
                        min: 6,
                        max: 16,
                        message: '邮箱地址长度应为6到16位'
                    },
                    identical: {
                        field: 'password',
                        message: '两次输入的密码不一致！'
                    }
                }
            },
            term: {
                validators: {
                    notEmpty: {
                        message: '要完成注册，你需要同意本网站的协议与条款'
                    }
                }
            }
        }
    })
        .on('success.form.bv', function (e) {
            // 防止表单提交
            e.preventDefault();

            // 获取表单实例
            var $form = $(e.target);

            // 获取BootstrapValidator实例
            var bv = $form.data('bootstrapValidator');

            // 使用Ajax提交表单数据
            $.ajax({
                type: 'POST',
                url: '/user/addUser',
                data: $form.serialize(),
                success: function (result) {
                    console.log('成功数据' + result.msg);
                },
                error: function (result) {
                    console.log('错误数据' + result.msg);
                },
                dataType: 'json'
            });
        });
});

