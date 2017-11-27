<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/public/common/publicHead.jsp" %>
    <title>付款成功页面</title>
    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/demo.css" rel="stylesheet"/>
    <link href="/public/basic/css/sustyle.css" rel="stylesheet" type="text/css"/>
    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/cartstyle.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/jsstyle.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/addstyle.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/public/basic/js/jquery-1.7.2.min.js"></script>
</head>
<body>

<%--顶部--%>
<jsp:include page="/public/common/top.jsp" flush="true"/>

<div class="take-delivery">
    <div class="status">
        <h2>您已成功付款</h2>
        <div class="successInfo">
            <ul>
                <li>付款金额<em style="font-size: larger">￥${sumCart}</em></li>
                <div class="user-info">
                    <p>&nbsp;&nbsp;&nbsp;收货人： ${add.takeGoodsName}</p>
                    <p>联系电话：${add.addresseePhone}</p>
                    <p>收货地址：${add.takeGoodsProvince}${add.takeGoodsCity}${add.takeGoodsCounty}${add.address}</p>
                </div>
                请认真核对您的收货信息，如有错误请联系客服
            </ul>
            <div class="option">
                <span class="info">您可以</span>
                <a href="/user/order/order" class="J_MakePoint">查看<span>交易详情</span></a>
            </div>
        </div>
    </div>
</div>

<%--底部--%>
<jsp:include page="/public/common/footer.jsp" flush="true"/>

</body>
</html>
