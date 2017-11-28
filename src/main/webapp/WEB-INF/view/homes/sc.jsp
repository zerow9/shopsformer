<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>人脸识别</title>
    <link href="/public/basic/css/facestyle.css" rel="stylesheet"/>
    <jsp:include page="/public/common/publicHead.jsp"/>
    <link rel="stylesheet" href="/public/basic/css/dlstyle.css">
</head>
<body style="text-align: center">
<div>
    <form action="#" id="em">
        <h2>请输入你的邮箱账号：</h2><input name="username" type="email" placeholder="必填" style="width:200px;height:30px">
        <input name="password" type="password" value="1" hidden>
    </form>
    <div id="contentHolder">
        <div style="float: left;margin-left: 30%;margin-top: 33px">
            <button id="picture" style="display:block">拍照</button>
            <br>
            <video id="video" width="320" height="320" autoplay></video>
        </div>
        <div style="float: right;margin-right: 20%;margin-top: 33px">
            <button id="sc" style="display:block">确认识别</button>
            <canvas style="display:block" id="canvas" width="320" height="320"></canvas>
        </div>

    </div>
    <div style="margin-top:100px"><jsp:include page="/public/common/footer.jsp" flush="true"/></div>
</div>
<script src="/public/basic/js/jquery-1.7.2.min.js"></script>
<script src="/public/basic/js/sc.js"></script>
</body>
</html>
