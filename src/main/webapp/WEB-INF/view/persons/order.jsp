<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
    <jsp:include page="/public/common/publicHead.jsp"/>
    <title>订单管理</title>

    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/orstyle.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/sweetalert.css" rel="stylesheet" type="text/css">



</head>
<body>
<jsp:include page="/public/common/top.jsp"/>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-order">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> /
                        <small>Order</small>
                    </div>
                </div>
                <hr/>

                <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

                    <ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
                        <li
                                <c:if test="${customVoOrders.attribute==1}">
                                class="am-active"
                                </c:if>
                            ><a href="#tab1">所有订单</a></li>
                        <li
                                <c:if test="${customVoOrders.attribute==2}">
                                    class="am-active"
                                </c:if>
                            ><a href="#tab2">待付款</a></li>
                        <li
                                <c:if test="${customVoOrders.attribute==3}">
                                    class="am-active"
                                </c:if>
                            ><a href="#tab3">待发货</a></li>
                        <li
                                <c:if test="${customVoOrders.attribute==4}">
                                    class="am-active"
                                </c:if>
                            ><a href="#tab4">待收货</a></li>
                        <li
                                <c:if test="${customVoOrders.attribute==5}">
                                    class="am-active"
                                </c:if>
                            ><a href="#tab5">待评价</a></li>
                    </ul>

                    <div class="am-tabs-bd">
                        <%--全部订单--%>
                        <div class="am-tab-panel am-fade
                            <c:if test="${customVoOrders.attribute==1}">am-in am-active</c:if>" id="tab1">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <c:forEach items="${customVoOrders.allOrders}" var="customVoItemsByOrderId">
                                        <!--交易成功-->
                                        <c:if test="${!empty customVoItemsByOrderId.customVoItemsByOrderDetailIds}">
                                            <div class="order-status5">
                                                <div class="order-title">
                                                    <div class="dd-num">订单编号：<a
                                                            href="javascript:">${customVoItemsByOrderId.orders.orderId}</a>
                                                    </div>
                                                    <span>创建时间：${customVoItemsByOrderId.orders.orderCreateTimeToString}</span>
                                                    <!--    <em>店铺：小桔灯</em>-->
                                                </div>
                                                <div class="order-content">
                                                    <div class="order-left">
                                                        <c:forEach
                                                                items="${customVoItemsByOrderId.customVoItemsByOrderDetailIds}"
                                                                var="customVoItemsByOrderDetailIdsx">

                                                            <ul class="item-list">
                                                                <li class="td td-item">
                                                                    <div class="item-pic">
                                                                        <a href="#" class="J_MakePoint">
                                                                            <img src="${customVoItemsByOrderDetailIdsx.item.itemImages}"
                                                                                 class="itempic J_ItemImg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="item-info">
                                                                        <div class="item-basic-info">
                                                                            <a href="#">
                                                                                <p>${customVoItemsByOrderDetailIdsx.item.itemName}</p>
                                                                                <p class="info-little">
                                                                                    规格：${customVoItemsByOrderDetailIdsx.item.itemFormat}
                                                                                    <br/>包装：裸装 </p>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="td td-price">
                                                                    <div class="item-price">
                                                                            ${customVoItemsByOrderDetailIdsx.item.itemMarketPrice}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-number">
                                                                    <div class="item-number">
                                                                        <span>×</span>${customVoItemsByOrderDetailIdsx.itemNum}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-operation">
                                                                    <div class="item-operation">

                                                                    </div>
                                                                </li>
                                                            </ul>

                                                        </c:forEach>
                                                    </div>
                                                    <div class="order-right">
                                                        <li class="td td-amount">
                                                            <div class="item-amount">
                                                                合计：${customVoItemsByOrderId.orders.orderSumPrice}
                                                                <p>含运费：<span>${customVoItemsByOrderId.orders.orderSumPrice+customVoItemsByOrderId.orders.orderFreight}</span></p>
                                                            </div>
                                                        </li>
                                                        <div class="move-right">
                                                            <li class="td td-status">
                                                                <div class="item-status">
                                                                    <c:if test="${customVoItemsByOrderId.orders.takeGoodsStatus==1}">
                                                                        <p class="Mystatus">交易成功</p>
                                                                    </c:if>
                                                                    <p class="order-info"><a
                                                                            href="/user/order/orderDetail?orderId=${customVoItemsByOrderId.orders.orderId}">订单详情</a>
                                                                    </p>

                                                                    <p class="order-info"><a
                                                                            href="logistics.html">查看物流</a>
                                                                    </p>
                                                                </div>
                                                            </li>
                                                            <li class="td td-change">
                                                                <div class="am-btn am-btn-danger anniu">
                                                                    <a href="javascript:void(0);"
                                                                       onclick="deleteOrder(${customVoItemsByOrderId.orders.orderId})">删除订单</a>
                                                                </div>
                                                            </li>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>

                            </div>

                        </div>

                        <%--待付款订单--%>
                        <div class="am-tab-panel am-fade
                            <c:if test="${customVoOrders.attribute==2}">am-in am-active</c:if>" id="tab2">

                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <c:forEach items="${customVoOrders.payStatus}" var="pay">
                                        <c:if test="${!empty pay.customVoItemsByOrderDetailIds}">
                                            <div class="order-status1">
                                                <div class="order-title">
                                                    <div class="dd-num">订单编号：<a
                                                            href="javascript:">${pay.orders.orderId}</a>
                                                    </div>
                                                    <span>创建时间：${pay.orders.orderCreateTimeToString}</span>
                                                    <!--    <em>店铺：小桔灯</em>-->
                                                </div>
                                                <div class="order-content">
                                                    <div class="order-left">
                                                        <c:forEach items="${pay.customVoItemsByOrderDetailIds}"
                                                                   var="payCustomVoItem">
                                                            <ul class="item-list">
                                                                <li class="td td-item">
                                                                    <div class="item-pic">
                                                                        <a href="#" class="J_MakePoint">
                                                                            <img src="${payCustomVoItem.item.itemImages}"
                                                                                 class="itempic J_ItemImg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="item-info">
                                                                        <div class="item-basic-info">
                                                                            <a href="#">
                                                                                <p>${payCustomVoItem.item.itemName}</p>
                                                                                <p class="info-little">
                                                                                    规格：${payCustomVoItem.item.itemFormat}
                                                                                    <br/>包装：裸装 </p>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="td td-price">
                                                                    <div class="item-price">
                                                                            ${payCustomVoItem.item.itemMarketPrice}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-number">
                                                                    <div class="item-number">
                                                                        <span>×</span>${payCustomVoItem.itemNum}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-operation">
                                                                    <div class="item-operation">

                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </c:forEach>
                                                    </div>
                                                    <div class="order-right">
                                                        <li class="td td-amount">
                                                            <div class="item-amount">
                                                                合计：${pay.orders.orderSumPrice}
                                                                <p>含运费：<span>${pay.orders.orderSumPrice+pay.orders.orderFreight}</span></p>
                                                            </div>
                                                        </li>
                                                        <div class="move-right">
                                                            <li class="td td-status">
                                                                <div class="item-status">
                                                                    <p class="Mystatus">等待买家付款</p>
                                                                    <p class="order-info"><a href="#">取消订单</a></p>

                                                                </div>
                                                            </li>
                                                            <li class="td td-change">
                                                                <a href="pay.html">
                                                                    <div class="am-btn am-btn-danger anniu">
                                                                        一键支付
                                                                    </div>
                                                                </a>
                                                            </li>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                        <%--待发货订单--%>
                        <div class="am-tab-panel am-fade
                            <c:if test="${customVoOrders.attribute==3}">am-in am-active</c:if>" id="tab3">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <c:forEach items="${customVoOrders.sendStatus}" var="send">
                                        <c:if test="${!empty send.customVoItemsByOrderDetailIds}">
                                            <div class="order-status2">
                                                <div class="order-title">
                                                    <div class="dd-num">订单编号：<a
                                                            href="javascript:">${send.orders.orderId}</a></div>
                                                    <span>付款时间：${send.orders.orderPayTimeToString}</span>
                                                    <!--    <em>店铺：小桔灯</em>-->
                                                </div>
                                                <div class="order-content">
                                                    <div class="order-left">
                                                        <c:forEach items="${send.customVoItemsByOrderDetailIds}"
                                                                   var="sendCustomVoItem">
                                                            <ul class="item-list">
                                                                <li class="td td-item">
                                                                    <div class="item-pic">
                                                                        <a href="#" class="J_MakePoint">
                                                                            <img src="${sendCustomVoItem.item.itemImages}"
                                                                                 class="itempic J_ItemImg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="item-info">
                                                                        <div class="item-basic-info">
                                                                            <a href="#">
                                                                                <p>${sendCustomVoItem.item.itemName}</p>
                                                                                <p class="info-little">
                                                                                    规格：${sendCustomVoItem.item.itemFormat}
                                                                                    <br/>包装：裸装 </p>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="td td-price">
                                                                    <div class="item-price">
                                                                            ${sendCustomVoItem.item.itemMarketPrice}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-number">
                                                                    <div class="item-number">
                                                                        <span>×</span>${sendCustomVoItem.itemNum}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-operation">
                                                                    <div class="item-operation">
                                                                        <a href="refund.html">退款</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </c:forEach>
                                                    </div>
                                                    <div class="order-right">
                                                        <li class="td td-amount">
                                                            <div class="item-amount">
                                                                合计：${send.orders.orderSumPrice}
                                                                <p>含运费：<span>${send.orders.orderSumPrice+send.orders.orderFreight}</span></p>
                                                            </div>
                                                        </li>
                                                        <div class="move-right">
                                                            <li class="td td-status">
                                                                <div class="item-status">
                                                                    <p class="Mystatus">买家已付款</p>
                                                                    <p class="order-info"><a
                                                                            href="/user/order/orderDetail?orderId=${send.orders.orderId}">订单详情</a>
                                                                    </p>
                                                                </div>
                                                            </li>
                                                            <li class="td td-change">
                                                                <div class="am-btn am-btn-danger anniu">
                                                                    提醒发货
                                                                </div>
                                                            </li>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                        <%--待收货订单--%>
                        <div class="am-tab-panel am-fade
                            <c:if test="${customVoOrders.attribute==4}">am-in am-active</c:if>" id="tab4">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <c:forEach items="${customVoOrders.takeGoodsStatus}" var="takeGoods">
                                        <c:if test="${!empty takeGoods.customVoItemsByOrderDetailIds}">
                                            <div class="order-status3">
                                                <div class="order-title">
                                                    <div class="dd-num">订单编号：<a
                                                            href="javascript:">${takeGoods.orders.orderId}</a></div>
                                                    <span>发货时间：${takeGoods.orders.sendGoodsTimeToString}</span>
                                                    <!--    <em>店铺：小桔灯</em>-->
                                                </div>
                                                <div class="order-content">
                                                    <div class="order-left">
                                                        <c:forEach items="${takeGoods.customVoItemsByOrderDetailIds}"
                                                                   var="takeGoodsCustomVoItem">
                                                            <ul class="item-list">
                                                                <li class="td td-item">
                                                                    <div class="item-pic">
                                                                        <a href="#" class="J_MakePoint">
                                                                            <img src="${takeGoodsCustomVoItem.item.itemImages}"
                                                                                 class="itempic J_ItemImg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="item-info">
                                                                        <div class="item-basic-info">
                                                                            <a href="#">
                                                                                <p>${takeGoodsCustomVoItem.item.itemName}</p>
                                                                                <p class="info-little">
                                                                                    规格：${takeGoodsCustomVoItem.item.itemFormat}
                                                                                    <br/>包装：裸装 </p>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="td td-price">
                                                                    <div class="item-price">
                                                                            ${takeGoodsCustomVoItem.item.itemMarketPrice}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-number">
                                                                    <div class="item-number">
                                                                        <span>×</span>${takeGoodsCustomVoItem.itemNum}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-operation">
                                                                    <div class="item-operation">
                                                                        <a href="refund.html">退款/退货</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </c:forEach>
                                                    </div>
                                                    <div class="order-right">
                                                        <li class="td td-amount">
                                                            <div class="item-amount">
                                                                合计：${takeGoods.orders.orderSumPrice}
                                                                <p>含运费：<span>${takeGoods.orders.orderSumPrice+takeGoods.orders.orderFreight}</span></p>
                                                            </div>
                                                        </li>
                                                        <div class="move-right">
                                                            <li class="td td-status">
                                                                <div class="item-status">
                                                                    <p class="Mystatus">卖家已发货</p>
                                                                    <p class="order-info"><a
                                                                            href="/user/order/orderDetail?orderId=${takeGoods.orders.orderId}">订单详情</a>
                                                                    </p>
                                                                    <p class="order-info"><a
                                                                            href="logistics.html">查看物流</a>
                                                                    </p>
                                                                    <p class="order-info"><a href="#">延长收货</a></p>
                                                                </div>
                                                            </li>
                                                            <li class="td td-change">
                                                                <div class="am-btn am-btn-danger anniu">
                                                                    确认收货
                                                                </div>
                                                            </li>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                        <%--待评价订单--%>
                        <div class="am-tab-panel am-fade
                            <c:if test="${customVoOrders.attribute==5}">am-in am-active</c:if>" id="tab5">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <!--不同状态的订单	-->
                                    <c:forEach items="${customVoOrders.discussStatus}" var="discuss">
                                        <c:if test="${!empty discuss.customVoItemsByOrderDetailIds}">
                                            <div class="order-status4">
                                                <div class="order-title">
                                                    <div class="dd-num">订单编号：<a
                                                            href="javascript:">${discuss.orders.orderId}</a></div>
                                                    <span>成交时间：${discuss.orders.orderCompletionTimeToString}</span>

                                                </div>
                                                <div class="order-content">
                                                    <div class="order-left">
                                                        <c:forEach items="${discuss.customVoItemsByOrderDetailIds}"
                                                                   var="discussCustomVoItem">
                                                            <ul class="item-list">
                                                                <li class="td td-item">
                                                                    <div class="item-pic">
                                                                        <a href="#" class="J_MakePoint">
                                                                            <img src="${discussCustomVoItem.item.itemImages}"
                                                                                 class="itempic J_ItemImg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="item-info">
                                                                        <div class="item-basic-info">
                                                                            <a href="#">
                                                                                <p>${discussCustomVoItem.item.itemName}</p>
                                                                                <p class="info-little">
                                                                                    规格：${discussCustomVoItem.item.itemFormat}
                                                                                    <br/>包装：裸装 </p>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="td td-price">
                                                                    <div class="item-price">
                                                                            ${discussCustomVoItem.item.itemMarketPrice}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-number">
                                                                    <div class="item-number">
                                                                        <span>×</span>${discussCustomVoItem.itemNum}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-operation">
                                                                    <div class="item-operation">
                                                                        <a href="refund.html">退款/退货</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </c:forEach>
                                                    </div>
                                                    <div class="order-right">
                                                        <li class="td td-amount">
                                                            <div class="item-amount">
                                                                合计：${discuss.orders.orderSumPrice}
                                                                <p>含运费：<span>${discuss.orders.orderSumPrice+discuss.orders.orderFreight}</span></p>
                                                            </div>
                                                        </li>
                                                        <div class="move-right">
                                                            <li class="td td-status">
                                                                <div class="item-status">
                                                                    <p class="Mystatus">交易成功</p>
                                                                    <p class="order-info"><a
                                                                            href="/user/order/orderDetail?orderId=${discuss.orders.orderId}">订单详情</a>
                                                                    </p>
                                                                    <p class="order-info"><a
                                                                            href="logistics.html">查看物流</a>
                                                                    </p>
                                                                </div>
                                                            </li>
                                                            <li class="td td-change">
                                                                <a href="commentlist.html">
                                                                    <div class="am-btn am-btn-danger anniu">
                                                                        评价商品
                                                                    </div>
                                                                </a>
                                                            </li>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--底部-->
        <jsp:include page="/public/common/footer.jsp"/>
    </div>
    <jsp:include page="/public/common/personalMenu.jsp" flush="true"/>

</body>
<script src="/public/amazeUI/assets/js/jquery.min.js" type="text/javascript"></script>
<script src="/public/amazeUI/assets/js/amazeui.js"></script>
<script src="/public/basic/js/sweetalert.min.js" type="text/javascript"></script>
<script src="/public/basic/js/orderOperation.js"></script>
</html>