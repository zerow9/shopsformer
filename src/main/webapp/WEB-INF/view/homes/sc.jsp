<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>人脸识别</title>
    <style type="text/css">
        video {
            border: 1px solid #ccc;
            display: block;
            margin: 0 0 20px 0;
            float: left;
        }

        #canvas {
            margin-top: 20px;
            border: 1px solid #ccc;
            display: block;
        }
    </style>
</head>
<body>
<form action="#" id="em">
    请输入你的邮箱账号：<input name="username" type="email" placeholder="必填">
    <input name="password" type="password" value="1" hidden>
</form>
<div id="contentHolder">
    <video id="video" width="320" height="320" autoplay></video>
    <button id="picture" style="display:block">拍照</button>
    <canvas style="display:block" id="canvas" width="320" height="320"></canvas>
    <button id="sc" style="display:block">上传</button>
</div>
<script src="/public/basic/js/jquery-1.7.2.min.js"></script>
<script src="/public/basic/js/sc.js"></script>
</body>
</html>
