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
    <script src="/public/basic/js/bootstrapValidator.js"></script>
</head>
<body>
<div class="login-boxtitle" style="background-color:#f2e0d4;width: 100%">
    <a href="/index.jsp"><img alt="logo" src="/public/images/logobig0.png"/></a>
</div>
<br/>
<h2 style="text-align: center">人脸识别登录</h2>
<br/>
<div>
    <form action="#" id="em" style="margin-left: 40%;width: 300px;">
        <div class="form-group">
            <div class="input-group">
                <label for="user" class="input-group-addon"><i class="am-icon-user"></i></label>
                <input class="form-control" type="email" name="username" id="user" placeholder="请输入邮箱...">
                <input name="password" type="password" value="1" hidden>
            </div>
        </div>
    </form>

    <div id="contentHolder">
        <div class="photo-1">
            <button id="picture"><i class="am-icon-fa fa-camera" aria-hidden="true"></i>拍照</button>
            <br>
            <video id="video" width="320" height="320" autoplay></video>
        </div>
        <div class="photo-2">
            <button id="sc"><i class="am-icon-fa fa-check-square-o" aria-hidden="true"></i>确认识别</button>
            <canvas id="canvas" width="320" height="320"></canvas>
        </div>
    </div>

    <div style="margin-top: 35%">
        <jsp:include page="/public/common/footer.jsp" flush="true"/>
    </div>
</div>
<script src="/public/basic/js/jquery-1.7.2.min.js"></script>
<script src="/public/basic/js/sc.js"></script>
<script>
    function drawRoundedRect(ctx, x, y, width, height, r, fill, stroke) {
        ctx.save();
        ctx.beginPath(); // draw top and top right corner
        ctx.moveTo(x + r, y);
        ctx.arcTo(x + width, y, x + width, y + r, r); // draw right side and bottom right corner
        ctx.arcTo(x + width, y + height, x + width - r, y + height, r); // draw bottom and bottom left corner
        ctx.arcTo(x, y + height, x, y + height - r, r); // draw left and top left corner ctx.arcTo(x, y, x + r, y, r);
        if (fill) {
            ctx.fill();
        }
        if (stroke) {
            ctx.stroke();
        }
        ctx.restore();
    }

    function drawScreen() {
        ctx.strokeStyle = 'rgb(150,0,0)';
        ctx.fillStyle = 'rgb(0,150,0)';
        ctx.lineWidth = 7;
        drawRoundedRect(ctx, 30, 50, 200, 220, 20, true, true);
        ctx.strokeStyle = 'rgb(150,0,150)';
        ctx.fillStyle = 'rgba(0,0,150,0.6)';
        ctx.lineWidth = 7;
        drawRoundedRect(ctx, 300, 100, 250, 150, 8, true, false);
    }
</script>
</body>
</html>
