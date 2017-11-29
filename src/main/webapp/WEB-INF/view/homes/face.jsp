<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>人脸识别</title>
    <jsp:include page="/public/common/publicHead.jsp"/>
    <link href="/public/basic/css/facestyle.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/public/basic/css/dlstyle.css">
    <link href="/public/basic/css/demo.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/public/basic/css/movedown.css">
    <link rel="stylesheet" href="/public/basic/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/public/basic/css/bootstrapValidator.css">
</head>
<body>
<div class="login-boxtitle" style="background-color:#f2e0d4;width: 100%">
    <div class="logo-1"><a href="/index.jsp"><img alt="logo" src="/public/images/logobig0.png"/></a></div>
    <h2 style="text-align: center">人脸上传</h2>
    <div id="contentHolder">
        <div class="photo-1">
            <button id="picture"><i class="am-icon-camera" aria-hidden="true"></i>&nbsp;拍照</button>
            <br/>
            <video id="video" width="320" height="320" autoplay></video>
        </div>
        <div class="photo-2">
            <button id="sc"><i class="am-icon-check-square-o" aria-hidden="true"></i>&nbsp;上传</button>
            <canvas id="canvas" width="320" height="320"></canvas>
        </div>
    </div>

    <div style="margin-top: 33%">
        <jsp:include page="/public/common/footer.jsp" flush="true"/>
    </div>
</div>
<script src="/public/basic/js/jquery-1.7.2.min.js"></script>
<script src="/public/basic/js/face.js"></script>
</body>
</html>
