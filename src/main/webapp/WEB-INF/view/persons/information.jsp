<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
    <title>个人资料</title>
    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/infstyle.css" rel="stylesheet" type="text/css">
    <script src="/public/amazeUI/assets/js/jquery.min.js" type="text/javascript"></script>
    <script src="/public/amazeUI/assets/js/amazeui.js" type="text/javascript"></script>

</head>
<body>
<jsp:include page="/public/common/top.jsp"/>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-info">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> /
                        <small>Personal&nbsp;information</small>
                    </div>
                </div>
                <hr/>

                <!--头像 -->
                <div class="user-infoPic">

                    <div class="filePic">
                        <input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
                        <img class="am-circle am-img-thumbnail" src="/public/images/getAvatar.do.jpg" readonly/>
                    </div>

                    <div class="info-m">
                        <div><b>用户名：<i>${user.userNickname}</i></b></div>
                        <div class="u-level">
									<span class="rank r2">
							             <s class="vip1"></s><a class="classes" href="#">积分铜牌会员</a>
						            </span>
                        </div>
                        <div class="u-safety">
                        </div>
                    </div>
                </div>

                <!--个人信息 -->
                <div class="info-main">
                    <form class="am-form am-form-horizontal" action="updateUser" method="post">
                        <div hidden>
                            <input type="hidden" name="userUuid" value="${user.userUuid}">
                            <input type="hidden" name="userPassword" value="${user.userPassword}">
                        </div>
                        <div class="am-form-group">
                            <label class="am-form-label">昵称</label>
                            <div class="am-form-content">
                                <input type="text" value="${user.userNickname}" name="userNickname">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-form-label">姓名</label>
                            <div class="am-form-content">
                                <input type="text" value="${user.userName}" name="userName">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-form-label">性别</label>
                            <div class="am-form-content sex">
                                <label class="am-radio-inline">
                                    <input type="radio" id="nan" name="userSex" value="男" data-am-ucheck> 男
                                </label>
                                <label class="am-radio-inline">
                                    <input type="radio" id="girl" name="userSex" value="女" data-am-ucheck> 女
                                </label>
                                <label class="am-radio-inline">
                                    <input type="radio" id="sex" name="userSex" value="" data-am-ucheck> 保密
                                </label>
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-form-label">积分</label>
                            <div class="am-form-content">
                                <input type="text" value="${user.userScore}" name="userScore" readonly>
                            </div>
                        </div>

                        <div class="am-form-group" hidden>
                            <label class="am-form-label">生日</label>
                            <div class="am-form-content">
                                <input value="${user.userAge}" type="text" name="userAge" readonly>
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-form-label">电话</label>
                            <div class="am-form-content">
                                <input value="${user.userPhone}" type="tel" name="userPhone">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-form-label">电子邮件</label>
                            <div class="am-form-content">
                                <input value="${user.userEmail}" name="userEmail" type="email" readonly>
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-form-label">注册日期</label>
                            <div class="am-form-content">
                                <input value="${user.userRegisterDateTimeToString}" type="text" readonly>
                            </div>
                        </div>
                        <div class="am-form-group" hidden="hidden">
                            <label class="am-form-label">用户组</label>
                            <div class="am-form-content">
                                <input value="用户" type="text" readonly>
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-form-label">登陆次数</label>
                            <div class="am-form-content">
                                <input value="${user.userLandNumber}" name="userLandNumber" type="text" readonly>
                            </div>
                        </div>

                        <div class="am-form-group safety">
                            <label class="am-form-label">账号安全</label>
                            <div class="am-form-content safety">
                                <a href="#">
                                    <span class="am-icon-angle-right"></span>
                                </a>
                            </div>
                        </div>
                        <div class="info-btn">
                            <input type="submit" class=" am-btn am-btn-danger" value="点击更新"/>
                        </div>
                    </form>
                </div>

            </div>
        </div>
        <jsp:include page="/public/common/footer.jsp"/>
    </div>
    <jsp:include page="/public/common/personalMenu.jsp" flush="true"/>
</div>
<script type="text/javascript">
    var sex = '${user.userSex}';
    if (sex === '男') {
        document.getElementById('nan').setAttribute('checked', 'checked');
    } else if (sex === '女') {
        document.getElementById('girl').setAttribute('checked', 'checked');
    } else {
        document.getElementById('sex').setAttribute('checked', 'checked');
    }
</script>
</body>
</html>
