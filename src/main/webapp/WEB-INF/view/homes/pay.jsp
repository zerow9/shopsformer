<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>结算页面</title>
    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet">
    <link href="/public/basic/css/demo.css" rel="stylesheet"/>
    <link href="/public/basic/css/sustyle.css" rel="stylesheet"/>
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/cartstyle.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/jsstyle.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/sweetalert.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/addstyle.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function showImg() {
            document.getElementById("wxImg").style.display = 'block';
        }

        function hideImg() {
            document.getElementById("wxImg").style.display = 'none';
        }
    </script>
</head>
<body>
<!--顶部导航条 -->
<jsp:include page="/public/common/top.jsp" flush="true"/>
<div class="clear"></div>
<!--悬浮搜索框-->
<div class="concent">
    <!--地址 -->
    <div class="paycont">
        <div class="user-address">
            <h3>选择确认收货地址 </h3>
            <div class="control">
            </div>
            <div class="clear"></div>
            <ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails" style="margin-left: 50px;">
                <c:forEach items="${addresses}" var="address">
                    <li class="user-addresslist <c:if test="${address.isDefaultAddress==1}">defaultAddr</c:if>" <c:if
                            test="${address.isDefaultAddress!=1}"> onclick="updateDefaultAddress(${address.addressId})"</c:if>>
                        <span class="new-option-r"><i class="am-icon-check-circle"></i>确认收货地址</span>
                        <p class="new-tit new-p-re">
                            <span class="new-txt">${address.takeGoodsName}</span>
                            <span class="new-txt-rd2">${fn:substring(address.addresseePhone, 0,3)}****${fn:substring(address.addresseePhone,7,11)}</span>
                        </p>
                        <div class="new-mu_l2a new-p-re">
                            <p class="new-mu_l2cw">
                                <span class="title">地址：</span>
                                <span class="province">${address.takeGoodsProvince}</span>
                                <span class="city">${address.takeGoodsCity}</span>
                                <span class="dist">${address.takeGoodsCounty}</span>
                                <span class="street">${address.address}</span></p>
                        </div>
                        <div class="new-addr-btn" style="margin-bottom: -37px">
                            <a href="/user/address/selectAddress?addressId=${address.addressId}"><i
                                    class="am-icon-edit" id="updateEdit"></i>编辑</a>
                            <c:if test="${address.isDefaultAddress!=1}">
                                <span class="new-addr-bar">|</span>
                                <a href="javascript:void(0);"
                                   onclick="deleteAddress(${address.addressId})"><i
                                        class="am-icon-trash" id="deleteAddrss"></i>删除</a>
                            </c:if>
                        </div>
                    </li>
                </c:forEach>
            </ul>

            <div class="clear"></div>
        </div>

        <!--支付方式-->
        <div class="logistics">
            <h3>选择支付方式</h3>
            <ul class="pay-list">
                <li class="pay taobao"><img src="/public/images/zhifubao.jpg"/>支付宝<span></span></li>
            </ul>
        </div>
        <div class="clear"></div>

        <!--订单 -->
        <div class="concent">
            <div id="payTable">
                <h3>确认订单信息</h3>
                <div class="cart-table-th">
                    <div class="wp">

                        <div class="th th-item">
                            <div class="td-inner">商品信息</div>
                        </div>
                        <div class="th th-price">
                            <div class="td-inner">单价</div>
                        </div>
                        <div class="th th-amount">
                            <div class="td-inner">数量</div>
                        </div>
                        <div class="th th-sum">
                            <div class="td-inner">金额</div>
                        </div>
                        <div class="th th-oplist">
                            <div class="td-inner">配送方式</div>
                        </div>

                    </div>
                </div>
                <div class="clear"></div>

                <tr class="item-list">
                    <div class="bundle  bundle-last ">
                        <div class="bundle-hd">
                            <div class="bd-promos">
                                <div class="act-promo">
                                    <a href="javascript:;" target="_blank">购买越多，优惠就更丰厚哦！<span class="gt">&gt;&gt;</span></a>
                                </div>
                                <span class="list-change theme-login">编辑</span>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="bundle-main">
                            <c:forEach items="${carts}" var="cart">
                                <ul class="item-content clearfix">
                                    <li class="td td-item">
                                        <div class="item-pic">
                                            <a href="/item/findItemMessage?itemId=${cart.item.itemId}&page=1"
                                               target="_blank" data-title="${cart.item.itemName}" class="J_MakePoint"
                                               data-point="tbcart.8.12">
                                                <img src="${cart.item.itemImages}" class="itempic J_ItemImg" width="80"></a>
                                        </div>
                                        <div class="item-info">
                                            <div class="item-basic-info">
                                                <a href="javascript:;" target="_blank" title="${cart.item.itemName}"
                                                   class="item-title J_MakePoint"
                                                   data-point="tbcart.8.11">${cart.item.itemName}</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="td td-info">
                                        <div class="item-props">
                                            <span class="sku-line">介绍：${cart.item.itemIntroduce}</span>
                                        </div>
                                    </li>
                                    <li class="td td-price">
                                        <div class="item-price price-promo-promo">
                                            <div class="price-content">
                                                <div class="price-line">
                                                    <em class="price-original">${cart.item.itemMarketPrice}</em>
                                                </div>
                                                <div class="price-line">
                                                    <em class="J_Price price-now"
                                                        tabindex="0">${cart.item.itemPrice}</em>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="td td-amount">
                                        <div class="amount-wrapper ">
                                            <div class="item-amount ">
                                                <div class="sl">
                                                    <em>${cart.itemNumber}</em>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="td td-sum">
                                        <div class="td-inner">
                                            <em tabindex="0" class="J_ItemSum number"
                                                id="sumM">${cart.itemNumber*cart.item.itemPrice}</em>
                                        </div>
                                    </li>
                                </ul>
                            </c:forEach>
                        </div>
                        <div class="clear"></div>
                        <div class="pay-total">
                            <!--留言-->
                            <div class="order-extra">
                                <div class="order-user-info">
                                    <div id="holyshit257" class="memo">
                                        <label>买家留言：</label>
                                        <input type="text" title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）"
                                               placeholder="选填,建议填写和卖家达成一致的说明"
                                               class="memo-input J_MakePoint c2c-text-default memo-close">
                                        <div class="msg hidden J-msg">
                                            <p class="error">最多输入500个字符</p>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="clear"></div>
                        </div>
                        <!--含运费小计 -->
                        <div class="buy-point-discharge ">
                            <p class="price g_price ">
                                合计（含运费） <span>¥</span><em class="pay-sum">${sumCart}</em>
                            </p>
                        </div>

                        <!--信息 -->
                        <div class="order-go clearfix">
                            <div class="pay-confirm clearfix">
                                <div class="box">
                                    <div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
                                        <span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee">${sumCart}</em>
											</span>
                                    </div>

                                    <div id="holyshit268" class="pay-address">

                                        <p class="buy-footer-address">
                                            <span class="buy-line-title buy-line-title-type">寄送至：</span>
                                            <span class="buy--address-detail">
								        <span class="province">${add.takeGoodsProvince}</span>
												<span class="city">${add.takeGoodsCity}</span>
												<span class="dist">${add.takeGoodsCounty}</span>
												<span class="street">${add.address}</span>
                                        </span>
                                        </p>
                                        <p class="buy-footer-address">
                                            <span class="buy-line-title">收货人：</span>
                                            <span class="buy-address-detail">
                                         <span class="buy-user">${add.takeGoodsName}</span>
												<span class="buy-phone">${add.addresseePhone}</span>
                                        </span>
                                        </p>
                                    </div>
                                </div>
                                <form method="post" action="/public/common/alipay.jsp">
                                    <input type="hidden" id="WIDout_trade_no" name="WIDout_trade_no" value="${cartIds}">
                                    <input type="hidden" name="WIDsubject" value="XiaoHeShangCheng">
                                    <input type="hidden" name="WIDtotal_amount" value="${sumCart}">
                                    <input type="hidden" name="WIDbody" >
                                    <div id="holyshit269" class="submitOrder">
                                        <div class="go-btn-wrap">
                                            <button type="submit" class="am-btn  am-btn-warning">提交订单</button>
                                        </div>
                                    </div>
                                </form>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>

                    <div class="clear"></div>
            </div>
        </div>
        <jsp:include page="/public/common/tail.jsp" flush="true"/>
    </div>
</div>
<div class="theme-popover-mask"></div>
</body>
<script src="/public/basic/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
    $(function () {
        $(".new-option-r").click(function () {
            $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
        });
        var $ww = $(window).width();
        if ($ww > 640) {
            $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
        }
    });
</script>
<script type="text/javascript" src="/public/basic/js/address/address.js"></script>
<script type="text/javascript" src="/public/basic/js/sweetalert.min.js"></script>
<script type="text/javascript">
    $(function () {
            var vNow = new Date();
            var sNow = "";
            sNow += String(vNow.getFullYear());
            sNow += String(vNow.getMonth() + 1);
            sNow += String(vNow.getDate());
            sNow += String(vNow.getHours());
            sNow += String(vNow.getMinutes());
            sNow += String(vNow.getSeconds());
            sNow += String(vNow.getMilliseconds());

       // $("#WIDout_trade_no").val(sNow)
        //window.location.href="/user/pay/success?cartId=${cartIds}"; //支付完成的返回页面

    });
</script>
<script type="text/javascript" src="/public/basic/js/addressDefine.js"></script>
</html>
