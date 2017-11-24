<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>订单详情</title>

    <link rel="icon" href="/public/images/picture.ico">
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/orstyle.css" rel="stylesheet" type="text/css">

    <script src="/public/amazeUI/assets/js/jquery.min.js"></script>
    <script src="/public/amazeUI/assets/js/amazeui.js"></script>


</head>

<body>
<!--头 -->
<jsp:include page="/public/common/top.jsp"></jsp:include>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-orderinfo">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单详情</strong> /
                        <small>Order&nbsp;details</small>
                    </div>
                </div>
                <hr/>
                <!--进度条-->
                <div class="m-progress">
                    <div class="m-progress-list">
								<span class="step-1 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                   <p class="stage-name">拍下商品</p>
                                </span>
                        <span class="step-2 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                   <p class="stage-name">卖家发货</p>
                                </span>
                        <span class="step-3 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">3<em class="bg"></em></i>
                                   <p class="stage-name">确认收货</p>
                                </span>
                        <span class="step-4 step">
                                   <em class="u-progress-stage-bg"></em>
                                   <i class="u-stage-icon-inner">4<em class="bg"></em></i>
                                   <p class="stage-name">交易完成</p>
                                </span>
                        <span class="u-progress-placeholder"></span>
                    </div>
                    <div class="u-progress-bar total-steps-2">
                        <div class="u-progress-bar-inner"></div>
                    </div>
                </div>
                <div class="order-infoaside">
                    <div class="order-logistics">
                        <a href="#">
                            <div class="icon-log">
                                <i><img src="/public/images/receive.png"></i>
                            </div>
                            <div class="latest-logistics">
                                <p class="text">已签收,签收人是青年城签收，感谢使用天天快递，期待再次为您服务</p>
                                <div class="time-list">
                                    <span class="date">2015-12-19</span><span class="week">周六</span><span class="time">15:35:42</span>
                                </div>
                                <div class="inquire">
                                    <span class="package-detail">物流：天天快递</span>
                                    <span class="package-detail">快递单号: </span>
                                    <span class="package-number">373269427868</span>
                                    <a href="#">查看</a>
                                </div>
                            </div>
                            <span class="am-icon-angle-right icon"></span>
                        </a>
                        <div class="clear"></div>
                    </div>
                    <div class="order-addresslist">
                        <div class="order-address">
                            <div class="icon-add">
                            </div>
                            <p class="new-tit new-p-re">
                                <span class="new-txt">${customVoAddressDetail.address.takeGoodsName}</span>
                                <span class="new-txt-rd2">${fn:substring(customVoAddressDetail.address.addresseePhone, 0,3)}****${fn:substring(customVoAddressDetail.address.addresseePhone,7,11)}</span>
                            </p>
                            <div class="new-mu_l2a new-p-re">
                                <p class="new-mu_l2cw">
                                    <span class="title">收货地址：</span>
                                    <span class="province">${customVoAddressDetail.address.takeGoodsProvince}</span>
                                    <span class="city">${customVoAddressDetail.address.takeGoodsCity}</span>
                                    <span class="dist">${customVoAddressDetail.address.takeGoodsCounty}</span>
                                    <span class="street">${customVoAddressDetail.address.address}</span></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="order-infomain">

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

                        <div class="order-status3">
                            <div class="order-title">
                                <div class="dd-num">订单编号：<a
                                        href="javascript:">${customVoAddressDetail.orders.orderId}</a></div>
                                <span>创建时间：${customVoAddressDetail.orders.orderCreateTimeToString}</span>
                                <!--    <em>店铺：小桔灯</em>-->
                            </div>
                            <div class="order-content">
                                <div class="order-left">
                                    <c:forEach items="${customVoAddressDetail.customVoItemsByOrderDetailIds}"
                                               var="orderDetail">
                                        <ul class="item-list">
                                            <li class="td td-item">
                                                <div class="item-pic">
                                                    <a href="#" class="J_MakePoint">
                                                        <img src="${orderDetail.item.itemImages}"
                                                             class="itempic J_ItemImg"/>
                                                    </a>
                                                </div>
                                                <div class="item-info">
                                                    <div class="item-basic-info">
                                                        <a href="#">
                                                            <p>${orderDetail.item.itemName}</p>
                                                            <p class="info-little">规格：${orderDetail.item.itemFormat}
                                                                <br/>包装：裸装 </p>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="td td-price">
                                                <div class="item-price">
                                                        ${orderDetail.item.itemMarketPrice}
                                                </div>
                                            </li>
                                            <li class="td td-number">
                                                <div class="item-number">
                                                    <span>×</span>${orderDetail.itemNum}
                                                </div>
                                            </li>
                                            <li class="td td-operation">
                                                <div class="item-operation">
                                                    退款/退货
                                                </div>
                                            </li>
                                        </ul>
                                    </c:forEach>
                                </div>
                                <div class="order-right">
                                    <li class="td td-amount">
                                        <div class="item-amount">
                                            合计：${customVoAddressDetail.orders.orderSumPrice}
                                            <p>含运费：<span>${customVoAddressDetail.orders.orderSumPrice+customVoAddressDetail.orders.orderFreight}</span></p>
                                        </div>
                                    </li>
                                    <div class="move-right">
                                        <li class="td td-status">
                                            <div class="item-status">
                                                <p class="Mystatus">卖家已发货</p>
                                                <p class="order-info"><a href="#">查看物流</a></p>
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
                    </div>
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