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
    <link rel="icon" href="/frontpage/images/picture.ico"/>
    <link href="/frontpage/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/frontpage/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="/frontpage/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/frontpage/css/colstyle.css" rel="stylesheet" type="text/css">

</head>
<body>
<header>
    <article>
        <div class="mt-logo">
            <!--顶部导航条 -->
            <div class="am-container header">
                <ul class="message-l">
                    <div class="topMessage">
                        <div class="menu-hd">
                            <a href="#" target="_top" class="h">亲，请登录</a>
                            <a href="#" target="_top">免费注册</a>
                        </div>
                    </div>
                </ul>
                <ul class="message-r">
                    <div class="topMessage home">
                        <div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
                    </div>
                    <div class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng"><a href="#" target="_top"><i
                                class="am-icon-user am-icon-fw"></i>个人中心</a></div>
                    </div>
                    <div class="topMessage mini-cart">
                        <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i
                                class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum"
                                                                                                      class="h">0</strong></a>
                        </div>
                    </div>
                    <div class="topMessage favorite">
                        <div class="menu-hd"><a href="#" target="_top"><i
                                class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
                    </div>
                </ul>
            </div>

            <!--悬浮搜索框-->

            <div class="nav white">
                <div class="logoBig">
                    <li><img src="../../../frontpage/images/logobig.png"/></li>
                </div>

                <div class="search-bar pr">
                    <a name="index_none_header_sysc" href="#"></a>
                    <form>
                        <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索"
                               autocomplete="off">
                        <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
                    </form>
                </div>
            </div>

            <div class="clear"></div>
        </div>
        </div>
    </article>
</header>

<div class="nav-table">
    <div class="long-title"><span class="all-goods">全部分类</span></div>
    <div class="nav-cont">
        <ul>
            <li class="index"><a href="#">首页</a></li>
            <li class="qc"><a href="#">闪购</a></li>
            <li class="qc"><a href="#">限时抢</a></li>
            <li class="qc"><a href="#">团购</a></li>
            <li class="qc last"><a href="#">大包装</a></li>
        </ul>
        <div class="nav-extra">
            <i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
            <i class="am-icon-angle-right" style="padding-left: 10px;"></i>
        </div>
    </div>
</div>
<b class="line"></b>

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
                                                onclick="addShopCart(${collectDetail.collectId},${collectDetail.item.itemMarketPrice})" style="color: rgb(255,255,255);">加入购物车</a></span>
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
        <div class="footer">
            <div class="footer-hd">
                <p>
                    <a href="home/home.html">商城首页</a>
                    <b>|</b>
                    <a href="#">支付宝</a>
                    <b>|</b>
                    <a href="#">物流</a>
                </p>
            </div>
            <div class="footer-bd">
                <p>
                    <a>Yang Coding</a>
                    <em>© 2017-2020 YangCoding.com 版权所有</em>
                </p>
            </div>
        </div>
    </div>

    <aside class="menu">
        <ul>
            <li class="person">
                <a href="../../../frontpage/person/index.html">个人中心</a>
            </li>
            <li class="person">
                <a href="#">个人资料</a>
                <ul>
                    <li><a href="../../../frontpage/person/information.html">个人信息</a></li>
                    <li><a href="../../../frontpage/person/safety.html">安全设置</a></li>
                    <li><a href="../../../frontpage/person/address.html">收货地址</a></li>
                </ul>
            </li>
            <li class="person">
                <a href="#">我的交易</a>
                <ul>
                    <li><a href="../../../frontpage/person/order.html">订单管理</a></li>
                    <li><a href="../../../frontpage/person/change.html">退款售后</a></li>
                </ul>
            </li>
            <li class="person">
                <a href="#">我的资产</a>
                <ul>
                    <li><a href="../../../frontpage/person/coupon.html">优惠券 </a></li>
                    <li><a href="../../../frontpage/person/bonus.html">红包</a></li>
                    <li><a href="../../../frontpage/person/bill.html">账单明细</a></li>
                </ul>
            </li>

            <li class="person">
                <a href="#">我的小窝</a>
                <ul>
                    <li><a href="../../../frontpage/person/collection.html">收藏</a></li>
                    <li><a href="../../../frontpage/person/foot.html">足迹</a></li>
                    <li><a href="../../../frontpage/person/comment.html">评价</a></li>
                    <li><a href="../../../frontpage/person/news.html">消息</a></li>
                </ul>
            </li>

        </ul>

    </aside>
</div>
<script src="../../../frontpage/js/jquery.js"></script>
<script>
    //取消收藏
    function deleteCollect(id) {
        $.ajax({
            type: "POST",
            url: "deleteCollect.action?id=" + id,
            success: function () {
                window.location.reload();
            }
        });
    }

     function addShopCart(id,pice){
        $.ajax({
            type:"POST",
            url:"addShopCart.action?id="+id+"&pice="+pice,
            success:function (data) {
                if(data==1){
                    alert("添加购物车成功！");
                }else if(data==2){
                    alert("添加购物车失败！")
                }else alert("购物车中已经存在!");
            }
        });
     }


</script>
</body>
</html>
