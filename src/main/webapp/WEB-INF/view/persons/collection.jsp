<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/15 0015
  Time: 下午 4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>我的收藏</title>
    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/colstyle.css" rel="stylesheet" type="text/css">

</head>
<body>
<jsp:include page="/public/common/top.jsp"/>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-collection">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的收藏</strong> /
                        <small>My&nbsp;Collection</small>
                    </div>
                </div>
                <hr/>

                <div class="you-like">
                    <div class="s-bar">
                        我的收藏
                        <a class="am-badge am-badge-danger am-round">降价</a>
                        <a class="am-badge am-badge-danger am-round">下架</a>
                    </div>
                    <div class="s-content">
                        <c:forEach items="${collectDetails}" var="collectDetail">
                            <div class="s-item-wrap">
                                <div class="s-item">

                                    <div class="s-pic">
                                        <a href="#" class="s-pic-link">
                                            <img src="${collectDetail.itemImages}"
                                                 alt="${collectDetail.item.itemIntroduce}"
                                                 title="${collectDetail.itemName}" class="s-pic-img s-guess-item-img">
                                        </a>
                                    </div>
                                    <input id="collectId" value="${collectDetail.collectId}" type="hidden">
                                    <div class="s-info">
                                        <div class="s-title"><a href="#"
                                                                title="${collectDetail.itemName}">${collectDetail.item.itemIntroduce}</a>
                                        </div>
                                        <div class="s-price-box">
                                            <span class="s-price"><em class="s-price-sign">¥</em><em
                                                    class="s-value">${collectDetail.item.itemMarketPrice}</em></span>
                                            <span class="s-history-price"><em class="s-price-sign">¥</em><em
                                                    class="s-value">${collectDetail.item.itemMarketPrice*1.2}</em></span>
                                        </div>
                                        <div class="s-extra-box">
                                            <span class="s-comment">好评: 98.03%</span>
                                            <span class="s-sales">月销: ${collectDetail.item.itemSaleNumber}</span>
                                        </div>
                                    </div>
                                    <div class="s-tp">
                                        <span class="ui-btn-loading-before buy"><a
                                                onclick="addShopCart(${collectDetail.collectId},${collectDetail.item.itemMarketPrice})"
                                                style="color: rgb(255,255,255);">加入购物车</a></span>
                                        <i class="am-icon-shopping-cart"></i>
                                        <span class="ui-btn-loading-before"><a
                                                onclick="deleteCollect(${collectDetail.collectId})"
                                                style="color: rgb(255,255,255);">取消收藏</a></span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>


                    </div>

                    <div class="s-more-btn i-load-more-item" data-screen="0"><i class="am-icon-refresh am-icon-fw"></i>更多
                    </div>

                </div>

            </div>

        </div>
        <!--底部-->
        <jsp:include page="/public/common/footer.jsp"/>
    </div>

    <jsp:include page="/public/common/personalMenu.jsp" flush="true"/>
</div>
<script src="/public/amazeUI/assets/js/jquery.min.js"></script>
<script>
    //取消收藏
    function deleteCollect(id) {
        $.ajax({
            type: "POST",
            url: "deleteCollect?id=" + id,
            success: function () {
                window.location.reload();
            }
        });
    }

    function addShopCart(id, pice) {
        $.ajax({
            type: "POST",
            url: "addShopCart?id=" + id + "&pice=" + pice,
            success: function (data) {
                if (data == 1) {
                    alert("添加购物车成功！");
                } else if (data == 2) {
                    alert("添加购物车失败！")
                } else alert("购物车中已经存在!");
            }
        });
    }


</script>
</body>
</html>
