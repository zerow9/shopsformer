<%--
  Created by IntelliJ IDEA.
  User: 63465
  Date: 2017/11/15 0015
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/public/common/head.jsp" %>
    <title>付款成功页面</title>
    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet">
    <link href="/public/basic/css/demo.css" rel="stylesheet"/>
    <link href="/public/css/sustyle.css" rel="stylesheet"/>
</head>

<body>

<%--顶部--%>
<jsp:include page="/public/common/top.jsp" flush="true"/>

<div class="take-delivery">
    <div class="status">
        <h2>您已成功付款</h2>
        <div class="successInfo">
            <ul>
                <li>付款金额<em>¥9.90</em></li>
                <div class="user-info">
                    <p>收货人：艾迪</p>
                    <p>联系电话：15871145629</p>
                    <p>收货地址：湖北省 武汉市 武昌区 东湖路75号众环大厦</p>
                </div>
                请认真核对您的收货信息，如有错误请联系客服

            </ul>
            <div class="option">
                <span class="info">您可以</span>
                <a href="../person/order.html" class="J_MakePoint">查看<span>已买到的宝贝</span></a>
                <a href="../person/orderinfo.html" class="J_MakePoint">查看<span>交易详情</span></a>
            </div>
        </div>
    </div>
</div>

<%--底部--%>
<jsp:include page="/public/common/footer.jsp" flush="true"/>

</body>
</html>
