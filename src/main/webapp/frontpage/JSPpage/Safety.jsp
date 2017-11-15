<%--
  Created by IntelliJ IDEA.
  User: TongZhou
  Date: 2017/11/15
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>安全设置</title>

    <link rel="icon" href="../images/picture.ico"/>
    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/infstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
    <jsp:include page="head.jsp"></jsp:include>
    <div class="center">
        <div class="col-main">
            <div class="main-wrap">

                <!--标题 -->
                <div class="user-safety">
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">账户安全</strong> / <small>Set&nbsp;up&nbsp;Safety</small></div>
                    </div>
                    <hr/>

                    <!--头像 -->
                    <div class="user-infoPic">

                        <div class="filePic">
                            <img class="am-circle am-img-thumbnail" src="../images/getAvatar.do.jpg" alt="" />
                        </div>

                        <div class="info-m">
                            <div><b>用户名：<i>小叮当</i></b></div>
                            <div class="u-level">
									<span class="rank r2">
							             <s class="vip1"></s><a class="classes" href="#">铜牌会员</a>
						            </span>
                            </div>
                            <div class="u-safety">
                                <a href="../person/safety.html">
                                    账户安全
                                    <span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">60分</i></span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="check">
                        <ul>
                            <li>
                                <i class="i-safety-lock"></i>
                                <div class="m-left">
                                    <div class="fore1">登录密码</div>
                                    <div class="fore2"><small>为保证您购物安全，建议您定期更改密码以保护账户安全。</small></div>
                                </div>
                                <div class="fore3">
                                    <a href="../person/password.html">
                                        <div class="am-btn am-btn-secondary">修改</div>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <i class="i-safety-wallet"></i>
                                <div class="m-left">
                                    <div class="fore1">支付密码</div>
                                    <div class="fore2"><small>启用支付密码功能，为您资产账户安全加把锁。</small></div>
                                </div>
                                <div class="fore3">
                                    <a href="../../WEB-INF/view/persons/setpay.jsp">
                                        <div class="am-btn am-btn-secondary">立即启用</div>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <i class="i-safety-iphone"></i>
                                <div class="m-left">
                                    <div class="fore1">手机验证</div>
                                    <div class="fore2"><small>您验证的手机：186XXXXXXXX 若已丢失或停用，请立即更换</small></div>
                                </div>
                                <div class="fore3">
                                    <a href="../../WEB-INF/view/persons/bindphone.jsp">
                                        <div class="am-btn am-btn-secondary">换绑</div>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <i class="i-safety-mail"></i>
                                <div class="m-left">
                                    <div class="fore1">邮箱验证</div>
                                    <div class="fore2"><small>您验证的邮箱：5831XXX@qq.com 可用于快速找回登录密码</small></div>
                                </div>
                                <div class="fore3">
                                    <a href="../person/email.html">
                                        <div class="am-btn am-btn-secondary">换绑</div>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <i class="i-safety-idcard"></i>
                                <div class="m-left">
                                    <div class="fore1">实名认证</div>
                                    <div class="fore2"><small>用于提升账号的安全性和信任级别，认证后不能修改认证信息。</small></div>
                                </div>
                                <div class="fore3">
                                    <a href="../person/idcard.html">
                                        <div class="am-btn am-btn-secondary">认证</div>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <i class="i-safety-security"></i>
                                <div class="m-left">
                                    <div class="fore1">安全问题</div>
                                    <div class="fore2"><small>保护账户安全，验证您身份的工具之一。</small></div>
                                </div>
                                <div class="fore3">
                                    <a href="../../WEB-INF/view/persons/question.jsp">
                                        <div class="am-btn am-btn-secondary">认证</div>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
            <!--底部-->
            <jsp:include page="tail.jsp"></jsp:include>
        </div>

        <jsp:include page="InfoMenu.jsp"></jsp:include>
    </div>
</body>
</html>