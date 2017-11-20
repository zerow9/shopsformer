<%@ page import="org.apache.shiro.SecurityUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>安全设置</title>

    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/infstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="/public/common/top.jsp"/>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">
            <!--标题 -->
            <div class="user-safety">
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">账户安全</strong> /
                        <small>Set&nbsp;up&nbsp;Safety</small>
                    </div>
                </div>
                <hr/>

                <!--头像 -->
                <div class="user-infoPic">

                    <div class="filePic">
                        <img class="am-circle am-img-thumbnail" src="/public/images/getAvatar.do.jpg"
                             alt=""/>
                    </div>

                    <div class="info-m">
                        <div><b>用户名：<i>${user.userNickname}</i></b></div>
                        <div class="u-level">
									<span class="rank r2">
							             <s class="vip1"></s><a class="classes" href="#">铜牌会员</a>
						            </span>
                        </div>
                        <div class="u-safety">
                            <a href="#">
                                账户安全
                                <span class="u-profile"><i class="bc_ee0000" style="width: 60px;"
                                                           width="0">60分</i></span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="check">
                    <ul>
                        <li>
                            <i class="i-safety-lock"></i>
                            <div class="m-left">
                                <div class="fore1">修改登录密码</div>
                                <div class="fore2">
                                    <small>为保证您购物安全，建议您定期更改密码以保护账户安全。</small>
                                </div>
                            </div>
                            <div class="fore3">
                                <a href="/user/safePassword">
                                    <div class="am-btn am-btn-secondary">修改</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <i class="i-safety-mail"></i>
                            <div class="m-left">
                                <div class="fore1">修改邮箱</div>
                                <div class="fore2">
                                    <small>您验证的邮箱：<font color="red"><%=SecurityUtils.getSubject().getPrincipal()%>
                                    </font>可用于快速找回登录密码
                                    </small>
                                </div>
                            </div>
                            <div class="fore3">
                                <a href="/user/safeEmail">
                                    <div class="am-btn am-btn-secondary">换绑</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <i class="i-safety-idcard"></i>
                            <div class="m-left">
                                <div class="fore1">实名认证</div>
                                <div class="fore2">
                                    <small>用于提升账号的安全性和信任级别，认证后不能修改认证信息。</small>
                                </div>
                            </div>
                            <div class="fore3">
                                <a href="/public/person/idcard.html">
                                    <div class="am-btn am-btn-secondary">认证</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <i class="i-safety-security"></i>
                            <div class="m-left">
                                <div class="fore1">安全问题</div>
                                <div class="fore2">
                                    <small>保护账户安全，验证您身份的工具之一。</small>
                                </div>
                            </div>
                            <div class="fore3">
                                <a href="question.jsp">
                                    <div class="am-btn am-btn-secondary">认证</div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
        <!--底部-->
        <jsp:include page="/public/common/tail.jsp"/>
    </div>
    <jsp:include page="/public/common/personalMenu.jsp"/>
</div>
</body>
</html>
