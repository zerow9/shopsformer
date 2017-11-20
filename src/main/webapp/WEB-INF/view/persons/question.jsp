<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>安全问题</title>

    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="/public/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/css/stepstyle.css" rel="stylesheet" type="text/css">

    <script src="/public/amazeUI/assets/js/jquery.min.js" type="text/javascript"></script>
    <script src="/public/amazeUI/assets/js/amazeui.js" type="text/javascript"></script>

</head>

<body>
<!--头 -->
<jsp:include page="/public/common/publicHead.jsp"/>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">设置安全问题</strong> /
                    <small>Set&nbsp;Safety&nbsp;Question</small>
                </div>
            </div>
            <hr/>
            <!--进度条-->
            <div class="m-progress">
                <div class="m-progress-list">
							<span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">设置安全问题</p>
                            </span>
                    <span class="step-2 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                <p class="stage-name">完成</p>
                            </span>
                    <span class="u-progress-placeholder"></span>
                </div>
                <div class="u-progress-bar total-steps-2">
                    <div class="u-progress-bar-inner"></div>
                </div>
            </div>
            <form class="am-form am-form-horizontal">
                <div class="am-form-group select">
                    <label class="am-form-label">问题一</label>
                    <div class="am-form-content">
                        <select data-am-selected>
                            <option value="a" selected>请选择安全问题</option>
                            <option value="b">您最喜欢的颜色是什么？</option>
                            <option value="c">您的故乡在哪里？</option>
                        </select>
                    </div>
                </div>
                <div class="am-form-group">
                    <label for="user-answer1" class="am-form-label">答案</label>
                    <div class="am-form-content">
                        <input type="text" id="user-answer1" placeholder="请输入安全问题答案">
                    </div>
                </div>
                <div class="am-form-group select">
                    <label class="am-form-label">问题二</label>
                    <div class="am-form-content">
                        <select data-am-selected>
                            <option value="a" selected>请选择安全问题</option>
                            <option value="b">您最喜欢的颜色是什么？</option>
                            <option value="c">您的故乡在哪里？</option>
                        </select>
                    </div>
                </div>
                <div class="am-form-group">
                    <label for="user-answer2" class="am-form-label">答案</label>
                    <div class="am-form-content">
                        <input type="text" id="user-answer2" placeholder="请输入安全问题答案">
                    </div>
                </div>
                <div class="info-btn">
                    <div class="am-btn am-btn-danger">保存修改</div>
                </div>

            </form>

        </div>
        <!--底部-->
        <jsp:include page="/public/common/tail.jsp"/>
    </div>
    <jsp:include page="/public/common/personalMenu.jsp"/>
</div>
</body>
</html>