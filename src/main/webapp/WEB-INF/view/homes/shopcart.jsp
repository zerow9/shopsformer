<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的购物车</title>
    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/demo.css" rel="stylesheet"/>
    <link href="/public/basic/css/sweetalert.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/cartstyle.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/optstyle.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%--顶部--%>
<jsp:include page="/public/common/top.jsp" flush="true"/>
<div style="margin-top: 20px;"></div>
<div class="clear"></div>
<!--购物车 -->
<div class="concent">
    <div id="cartTable">
        <div class="cart-table-th">
            <div class="wp">
                <div class="th th-chk">
                    <div id="J_SelectAll1" class="select-all J_SelectAll">
                    </div>
                </div>
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
                <div class="th th-op">
                    <div class="td-inner">操作</div>
                </div>
            </div>
        </div>
        <div class="clear"></div>

        <tr class="item-list">
            <div class="bundle  bundle-last ">
                <c:if test="${!empty carts}">
                    <div class="bundle-hd">
                        <div class="bd-promos">
                            <div class="act-promo">
                                <a href="javascript:;" target="_blank">购买越多，优惠就更丰厚哦！<span class="gt">&gt;&gt;</span></a>
                            </div>
                            <span class="list-change theme-login">编辑</span>
                        </div>
                    </div>
                    <div class="clear"></div>
                </c:if>
                <div class="bundle-main">
                    <c:forEach items="${carts}" var="cart" varStatus="status">
                        <ul class="item-content clearfix">
                            <li class="td td-chk">
                                <div class="cart-checkbox ">
                                    <input class="check" id="J_CheckBox" onclick="onBox(${status.index })" name="tyoui"
                                           value="${cart.cartId}" type="checkbox">
                                    <label for="J_CheckBox"></label>
                                </div>
                            </li>
                            <li class="td td-item">
                                <div class="item-pic">
                                    <a href="#" target="_blank" data-title="${cart.item.itemName}" class="J_MakePoint"
                                       data-point="tbcart.8.12">
                                        <img src="${cart.item.itemImages}" width="80" class="itempic J_ItemImg"></a>
                                </div>
                                <div class="item-info">
                                    <div class="item-basic-info">
                                        <a href="#" target="_blank" title="${cart.item.itemName}"
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
                                            <input type="hidden" class="cartIdInput" value="${cart.cartId}">
                                            <input class="min am-btn" name="" type="button"
                                                   onclick="mm(${status.index })"
                                                   value="-"/>
                                            <input class="text_box" id="it" type="text" value="${cart.itemNumber}"
                                                   style="width:30px;"/>
                                            <input class="add am-btn" name="" type="button" value="+"
                                                   onclick="mm(${status.index })"/>
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
                            <li class="td td-op">
                                <div class="td-inner">
                                    <a title="移入收藏夹" class="btn-fav" href="javascript:;"
                                       onclick="addCollection(${cart.item.itemId})">
                                        移入收藏夹</a>
                                    <a href="javascript:" class="delete"
                                       onclick="deleteShopCart(${cart.cartId})">
                                        删除</a>
                                </div>
                            </li>
                        </ul>
                    </c:forEach>

                </div>
                <div class="clear"></div>
            </div>
        </tr>
    </div>
    <div class="clear"></div>

    <div class="float-bar-wrapper">
        <div id="J_SelectAll2" class="select-all J_SelectAll">
            <div class="cart-checkbox">
                <input class="check-all check" id="J_SelectAllCbx2" onclick="yymm()" name="select-all" value="true"
                       type="checkbox">
                <label for="J_SelectAllCbx2"></label>
            </div>
            <span>全选</span>
        </div>
        <div class="operations">
            <a href="#" hidefocus="true" class="deleteAll">删除</a>
            <a href="#" hidefocus="true" class="J_BatchFav">移入收藏夹</a>
        </div>
        <div class="float-bar-right">
            <div class="amount-sum">
                <span class="txt">已选商品</span>
                <em id="ItemsCount">0</em><span class="txt">件</span>
                <div class="arrow-box">
                    <span class="selected-items-arrow"></span>
                    <span class="arrow"></span>
                </div>
            </div>
            <div class="price-sum">
                <span class="txt">合计:</span>
                <strong class="price">¥<em id="newBox">0.0</em></strong>
            </div>
            <div class="btn-area">
                <a href="/user/order/orderItem" onclick="orderItem()" id="J_Go" class="submit-btn submit-btn-disabled"
                   aria-label="请注意如果没有选择宝贝，将无法结算">
                    <span>结&nbsp;算</span></a>
            </div>
        </div>
    </div>

    <%--底部--%>
    <jsp:include page="/public/common/footer.jsp" flush="true"/>
</div>
<div class="theme-popover-mask"></div>
<script src="/public/amazeUI/assets/js/jquery.min.js"></script>
<script src="/public/basic/js/sweetalert.min.js"></script>
<script src="/public/basic/js/shopcart.js"></script>
<script type="text/javascript">
    function onBox(index) {
        var obj = document.getElementById("newBox");
        var itemsCount = document.getElementById("ItemsCount");

        var data = document.querySelectorAll("#J_CheckBox");

        var it = document.querySelectorAll("#it");
        var id = document.querySelectorAll("#sumM");

        var idd = id[index].innerHTML;

        var sumit = it[index].value;

        var sumCount = itemsCount.innerHTML;
        var sum = obj.innerHTML;

        idd = parseFloat(idd);
        sum = parseFloat(sum);
        sumCount = parseInt(sumCount);
        sumit = parseInt(sumit);

        if (data[index].checked) {
            itemsCount.innerHTML = sumCount + sumit;
            obj.innerHTML = sum + idd;
        } else {
            itemsCount.innerHTML = sumCount - sumit;
            obj.innerHTML = sum - idd;
        }
    }

    function mm(index) {
        var o = document.querySelectorAll("#J_CheckBox");
        if (o[index].checked) {
            o[index].checked = false;
            onBox(index);
        }
    }

    //点击选中按钮
    function yymm() {
        if (document.getElementById("J_SelectAllCbx2").checked) {
            var o = document.querySelectorAll("#J_CheckBox");
            for (var i = 0; i < o.length; i++) {
                if (!o[i].checked) {
                    o[i].checked = true;
                    onBox(i);
                }

            }
        } else {
            var o = document.querySelectorAll("#J_CheckBox");
            for (var i = 0; i < o.length; i++) {
                if (o[i].checked) {
                    o[i].checked = false;
                    onBox(i);
                }
            }
        }
    }

    //结账点击事件
    function orderItem() {
        var o = document.querySelectorAll("#J_CheckBox");
        var obj = document.getElementById("J_Go");
        var mycars = new Array()
        var cartIdNumber = 0;//设置购物车的数量变量
        for (var i = 0; i < o.length; i++) {
            if (o[i].checked) {
                var laues = o[i].value;
                mycars[cartIdNumber] = laues;
                cartIdNumber++;
            }
        }
        obj.href = "/user/order/orderItem?cartId=" + mycars;
    }
</script>
</body>
</html>
