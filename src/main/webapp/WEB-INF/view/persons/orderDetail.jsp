<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>我的京东--我的订单</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="format-detection" content="telephone=no"/>
    <script type="text/javascript">
        window.pageConfig = {
            compatible: true
        };
    </script>
    <link type="text/css" rel="stylesheet" href="/public/basic/css/global.css"/>
    <link type="text/css" rel="stylesheet" href="/public/basic/css/recommend-goods.css">
    <script type="text/javascript" src="/public/basic/js/base.js"></script>
</head>
<body>

<div id="container">
    <div class="emph-wrap">
        <div class="w">
            <div class="emph-tips">
                <b></b>安全提醒：为了您的财产安全，<strong>不要点击陌生链接、不要向陌生人转账</strong>或透漏银行卡和验证码信息，<strong>谨防诈骗</strong>！
            </div>
        </div>
    </div>
    <div class="w">
        <div class="main">

            <div class="breadcrumb"><a href="//home.jd.com/">我的京东</a><span>&nbsp;&gt;&nbsp;<a
                    href="//order.jd.com/center/list.action">订单中心</a>&nbsp;&gt;&nbsp;<strong>订单：${customVoAddressDetail.orders.orderId}</strong></span>
            </div>
            <!--变量-->
            <span id="pay-button-order" style="display:none"></span>
            <div class="m order-state order-state01">
                <div class="mc state-cont">
                    <!-- 工具条 -->
                    <div class="state-lcol">
                        <div class="state-top">订单号：${customVoAddressDetail.orders.orderId}</div>
                        <h3 class="state-txt ftx-02">完成</h3>
                        <br>
                        <span class="remain-time" style="display: none"><b></b></span>
                        <div class="state-btns">
                            <a id="pay-button-13886555728" class="btn-1 " style="display:none" href="#">付款</a>
                            <a target="_blank" href="//myivc.jd.com/fpzz.html" class="btn-9">查看发票详情</a>
                        </div>
                    </div>
                    <!-- 进度条 -->
                    <div class="state-rcol">
                        <div class="state-rtop">
                            <!--提示信息 -->
                            <div class="ftx-03">
                                订单已经完成，感谢您在京东商城购物，欢迎您对本次交易及所购商品进行评价。
                            </div>
                        </div>
                        <!--进度条 -->

                        <div id="process-04" class="order-process">
                            <div class="node ready"><i class="node-icon icon-start"></i>
                                <ul>
                                    <li class="txt1">&nbsp;</li>
                                    <li class="txt2">提交订单</li>
                                    <li id="track_time_0" class="txt3"></li>
                                </ul>
                            </div>
                            <div class="proce done">
                                <ul>
                                    <li class="txt1"></li>
                                </ul>
                            </div>
                            <div class="node ready"><i class="node-icon icon-pay"></i>
                                <ul>
                                    <li class="txt1">&nbsp;</li>
                                    <li class="txt2">付款成功</li>
                                    <li id="track_time_4" class="txt3"></li>
                                </ul>
                            </div>
                            <div class="proce done">
                                <ul>
                                    <li class="txt1">&nbsp;</li>
                                </ul>
                            </div>
                            <div class="node ready"><i class="node-icon icon-store"></i>
                                <ul>
                                    <li class="txt1">&nbsp;</li>
                                    <li class="txt2">商品出库</li>
                                    <li id="track_time_1" class="txt3"></li>
                                </ul>
                            </div>
                            <div class="proce done">
                                <ul>
                                    <li class="txt1">&nbsp;</li>
                                </ul>
                            </div>
                            <div class="node ready"><i class="node-icon icon-express"></i>
                                <ul>
                                    <li class="txt1">&nbsp;</li>
                                    <li class="txt2">等待收货</li>
                                    <li id="track_time_5" class="txt3"></li>
                                </ul>
                            </div>
                            <div class="proce done">
                                <ul>
                                    <li class="txt1">&nbsp;</li>
                                </ul>
                            </div>
                            <div class="node ready">
                                <i class="node-icon icon-finish"></i>
                                <ul>
                                    <li class="txt1">&nbsp;</li>
                                    <li class="txt2">完成</li>
                                    <li id="track_time_6" class="txt3"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb"></div>
            </div>
            <!-- 订单跟踪及安装跟踪 -->
            <!--  /widgest/order-track/order-track.tpl -->
            <div class="order-track order-track-02 m">
                <!-- 订单跟踪 -->
                <div class="mc">
                    <div class="track-cont J-delivery-track">
                        <div class="track-lcol">
                            <div class="p-item">

                                <div class="p-img">
                                    <a href="//item.jd.com/2250255.html"><img
                                            src="${customVoAddressDetail.customVoItemsByOrderDetailIds[0].item.itemImages}"
                                            alt=""></a>
                                </div>
                            </div>
                        </div>
                        <div class="track-rcol">
                            <div class="track-list">
                                <ul>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- 安装跟踪 -->
                    <div class="track-cont J-install-track" style="display:none">
                        <div class="track-lcol">
                            <div class="install-list" id="install-scrollbar">

                            </div>
                        </div>
                        <div class="track-rcol">
                            <div class="track-list">
                                <ul>

                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="m order-info-mod">
                <div class="order-info mc">
                    <div class="ui-switchable-body">
                        <div class="ui-switchable-panel-main">
                            <div class="ui-switchable-panel">
                                <!-- 收货人信息 -->
                                <div class="dl">
                                    <div class="dt">
                                        <h4>收货人信息
                                        </h4>
                                    </div>
                                    <div class="dd">
                                        <div class="item">
                                                <span class="label">
                                                    收货人：
                                                </span>
                                            <div class="info-rcol">
                                                ${customVoAddressDetail.address.takeGoodsName}
                                            </div>
                                        </div>
                                        <div class="item">
                                                <span class="label">
                                                    地址：
                                                </span>
                                            <div class="info-rcol">
                                                ${customVoAddressDetail.address.takeGoodsProvince}&nbsp;${customVoAddressDetail.address.takeGoodsCounty}&nbsp;${customVoAddressDetail.address.takeGoodsCity}&nbsp;${customVoAddressDetail.address.address}
                                            </div>
                                        </div>
                                        <div class="item">
                                                <span class="label">
                                                    手机号码：
                                                </span>
                                            <div class="info-rcol">
                                                ${customVoAddressDetail.address.addresseePhone}
                                            </div>
                                        </div>

                                    </div>
                                </div>                    <!-- 配送信息 -->
                                <div class="dl">
                                    <div class="dt">
                                        <h4>配送信息</h4>
                                    </div>
                                    <div class="dd">

                                        <div class="item">
                                                <span class="label">
                                                    配送方式：
                                                </span>
                                            <div class="info-rcol">
                                                普通快递
                                            </div>
                                        </div>
                                        <div class="item">
                                                <span class="label">
                                                    运费：
                                                </span>
                                            <div class="info-rcol">
                                                    <span class="f-price">
                                                        &yen;${customVoAddressDetail.orders.orderFreight}
                                                    </span>
                                            </div>
                                        </div>


                                        <div class="item">
                                                <span class="label">
                                                    送货日期：
                                                </span>
                                            <div class="info-rcol">
                                                工作日、双休日与假日均可送货
                                            </div>
                                        </div>
                                        <div class="item">
                                                <span class="label">
                                                    配送时间：
                                                </span>
                                            <div class="info-rcol">
                                                9:00-15:00
                                            </div>
                                        </div>
                                    </div>
                                </div>                    <!-- 付款信息 -->
                                <!-- 非0费用-->
                                <div class="dl" id="pay-info-nozero">
                                    <div class="dt">
                                        <h4>付款信息</h4>
                                    </div>
                                    <div class="dd">
                                        <div class="item">
                                                <span class="label">
                                                    付款方式：
                                                </span>
                                            <div class="info-rcol">
                                                在线支付
                                            </div>
                                        </div>

                                        <div class="item">
                                                <span class="label">
                                                    付款时间：
                                                </span>
                                            <div class="info-rcol">
                                                ${customVoAddressDetail.orders.orderPayTimeToString}
                                            </div>
                                        </div>
                                        <div class="item">
                                                <span class="label">
                                                    商品总额：
                                                </span>
                                            <div class="info-rcol">
                                                    <span class="f-price">
                                                        <%--&yen;<%=sum%>--%>
                                                    </span>
                                            </div>
                                        </div>

                                        <div class="item">
                                                <span class="label">
                                                    应支付金额：
                                                </span>
                                            <div class="info-rcol">
                                                    <span class="f-price">
                                                        <%--&yen;<%=orderSum%>--%>
                                                    </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>                    <!-- 发票信息 -->
                                <div id="J-invoice-info" class="dl">
                                    <div class="dt">
                                        <h4>发票信息</h4>
                                    </div>
                                    <div class="dd">
                                        <div class="item">
                                                <span class="label">
                                                   发票类型：
                                                </span>
                                            <div class="info-rcol">
                                                普通发票
                                            </div>
                                        </div>
                                        <div class="item">
                                                <span class="label">
                                                    发票抬头：
                                                </span>
                                            <div class="info-rcol">
                                                个人
                                            </div>
                                        </div>
                                        <div class="item">
                                                <span class="label">
                                                   发票内容：
                                                </span>
                                            <div class="info-rcol">
                                                明细
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ui-switchable-panel">
                                <!-- 礼品购订单展示送礼人信息 -->
                                <!-- 节能补贴信息 -->
                                <!-- 订单留言 -->
                                <!--备注-->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="order-goods m">
                <div class="mc">
                    <div class="goods-list ">
                        <table class="tb-void tb-order">
                            <colgroup>
                                <col class="grap">
                                <col class="col-goods">
                                <col class="col-number">
                                <col class="col-price">
                                <col class="col-amount">
                                <col class="col-bean">

                                <col class="col-ops">
                                <col class="grap">
                            </colgroup>
                            <thead>
                            <tr>
                                <th class="grap"></th>
                                <th>商品</th>
                                <th>商品编号</th>
                                <th>京东价</th>
                                <th>商品数量</th>
                                <th>操作</th>
                                <th class="grap"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <!-- 获取礼品卡sku对应的贺卡寄语  -->
                            <c:forEach items="${customVoAddressDetail.customVoItemsByOrderDetailIds}"
                                       var="customVoItemsByOrderDetailId">
                            <tr class="first-tr product-2250255">
                                <td class="grap"></td>
                                <td>
                                    <div class="p-item">
                                        <div class="p-img">
                                            <a href="//item.jd.com/2250255.html" target="_blank">
                                                <img class=""
                                                     src="${customVoItemsByOrderDetailId.item.itemImages}"
                                                     title="2250255" width="60" height="60"/>
                                            </a>
                                        </div>
                                        <div class="p-info">
                                            <div class="p-name">
                                                <a href="//item.jd.com/2250255.html" class="a-link" target="_blank"
                                                   title="${customVoItemsByOrderDetailId.item.itemName}">
                                                        ${customVoItemsByOrderDetailId.item.itemName}
                                                </a>
                                            </div>
                                            <div class="clr"></div>
                                            <div id="coupon_2250255" class="fl"></div>


                                            <div class="p-extra">
                                                <span class="txt"></span>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                        ${customVoItemsByOrderDetailId.item.itemId}
                                </td>
                                <td>
                                    <span class="f-price">
                                        &yen;${customVoItemsByOrderDetailId.item.itemPrice}
                                    </span>
                                </td>
                                <td>${customVoItemsByOrderDetailId.itemNum}</td>
                                <td>
                                    <div class="p-btns">
                                        <!-- 根据订单类型屏蔽pop延保商品操作,只显示评价 -->
                                        <a href="//myjd.jd.com/repair/ordersearchlist.action?searchString=13886555728"
                                           target="_blank" class="link-btn mt10">申请售后
                                        </a><br>
                                        <span id="iwo655" class="flk13">
                                                     <a href="//huishou.jd.com" target="_blank"
                                                        class="link-btn mt10">回收旧机
                                                     </a><br>
                                                </span>
                                        <!-- 非下柜商品才有【立即购买】功能-->
                                    </div>
                                </td>
                                <td class="grap"></td>
                            </tr>
                            </c:forEach>
                        </table>
                    </div>

                    <!-- 金额 -->
                    <div class="goods-total">
                        <ul>
                            <li>
                                <span class="label">商品总额：</span>
                                <%--<span class="txt">&yen;<%=sum%></span>--%>
                            </li>
                            <li>
                                <span class="label">赠送积分：</span>
                                <%--<span class="txt"><%=(new   Double(sum)).intValue()%></span>--%>
                            </li>
                            <li>
                                <span class="label">返　　现：</span>
                                <span class="txt">-&yen;0.00</span>
                            </li>
                            <li>
                                <span class="label">运　　费：</span>
                                <span class="txt">
                                        &yen;${customVoAddressDetail.orders.orderFreight}
                                    </span>
                            </li>
                            <li class="ftx-01">
                                <span class="label">应付总额：</span>
                                <%--<span class="txt count">&yen;<%=orderSum%></span>--%>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
