<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--引入公共的头部--%>
    <%@include file="/public/common/publicHead.jsp" %>

    <title>个人中心</title>

    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/systyle.css" rel="stylesheet" type="text/css">
</head>
<body>

<%--顶部--%>
<jsp:include page="/public/common/top.jsp" flush="true"/>

<%--导航栏--%>
<div class="nav-table">
    <jsp:include page="/public/common/navigation.jsp" flush="true"/>
</div>

<b class="line"></b>

<%--主题内容--%>
<div class="center">
    <div class="col-main">

        <div class="main-wrap">

            <%--左部分，中间部分--%>
            <div class="wrap-left">
                <div class="wrap-list">

                    <%--个人信息管理--%>
                    <div class="m-user">

                        <div class="m-bg"></div>

                        <!-- 中间顶部个人信息横幅 -->
                        <div class="m-userinfo">

                            <%--左部--%>
                            <div class="m-baseinfo">
                                <%--头像--%>
                                <a href="information.jsp">
                                    <img src="/public/images/getAvatar.do.jpg">
                                </a>
                                <%--昵称--%>
                                <em class="s-name">${user.userNickname}<span class="vip1"></span></em>
                                <div class="s-prestige am-btn am-round">
                                    <span>会员福利</span>
                                </div>
                            </div>

                            <%--右部--%>
                            <div class="m-right">
                                <%--消息--%>
                                <div class="m-new">
                                    <a href="news.jsp"><i class="am-icon-bell-o"></i>消息</a>
                                </div>
                                <%--收货地址--%>
                                <div class="m-address">
                                    <a href="address.jsp" class="i-trigger">我的收货地址</a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="box-container-bottom"></div>
                    <!--我的订单 -->
                    <div class="m-order">

                        <div class="s-bar">
                            <i class="s-icon"></i>我的订单
                            <a class="i-load-more-item-shadow" href="/user/order/order">全部订单</a>
                        </div>

                        <ul>
                            <li><a href="/user/order/order?attribute=2"><i><img
                                    src="/public/images/pay.png"/></i><span>待付款
                                <c:if test="${customVoOrdersCount.payOrderCount!=0}">
                                    <em class="m-num">${customVoOrdersCount.payOrderCount}</em>
                                </c:if>
                                </span></a>

                            </li>
                            <li><a href="/user/order/order?attribute=3"><i><img
                                    src="/public/images/send.png"/></i><span>待发货
                                <c:if test="${customVoOrdersCount.sendGoodsCount!=0}">
                                    <em class="m-num">${customVoOrdersCount.sendGoodsCount}</em>
                                </c:if>
                                </span></a>
                            </li>
                            <li><a href="/user/order/order?attribute=4"><i><img
                                    src="/public/images/receive.png"/></i><span>待收货
                                <c:if test="${customVoOrdersCount.takeGoodsCount!=0}">
                                    <em class="m-num">${customVoOrdersCount.takeGoodsCount}</em>
                                </c:if>
                                </span></a>
                            </li>
                            <li><a href="/user/order/order?attribute=5"><i><img
                                    src="/public/images/comment.png"/></i><span>待评价
                                <c:if test="${customVoOrdersCount.discussCount!=0}">
                                    <em class="m-num">${customVoOrdersCount.discussCount}</em>
                                </c:if>
                                </span></a>
                            </li>

                        </ul>
                    </div>

                    <!--九宫格-->
                    <div class="user-patternIcon">

                        <div class="s-bar">
                            <i class="s-icon"></i>我的常用
                        </div>

                        <ul>
                            <li class="am-u-sm-4">
                                <i class="am-icon-shopping-basket am-icon-md">
                                    <img src="/public/images/iconbig.png"/>
                                    <a href="/public/homes/shopcart.jsp">
                                        <p>购物车</p>
                                    </a>
                                </i>
                            </li>

                            <li class="am-u-sm-4">
                                <i class="am-icon-heart am-icon-md">
                                    <a href="/public/persons/collection.jsp">
                                        <img src="/public/images/iconsmall1.png"/>
                                        <p>我的收藏</p>
                                    </a>
                                </i>
                            </li>

                            <li class="am-u-sm-4">
                                <a href="/public/homes/home.jsp">
                                    <i class="am-icon-gift am-icon-md"></i>
                                    <img src="/public/images/iconsmall0.png"/>
                                    <p>为你推荐</p>
                                </a>
                            </li>

                            <li class="am-u-sm-4">
                                <a href="/public/persons/comment.jsp">
                                    <i class="am-icon-pencil am-icon-md"></i>
                                    <img src="/public/images/iconsmall3.png"/>
                                    <p>好评宝贝</p>
                                </a>
                            </li>

                            <li class="am-u-sm-4">
                                <a href="/public/persons/foot.jsp">
                                    <i class="am-icon-clock-o am-icon-md"></i>
                                    <img
                                            src="/public/images/iconsmall2.png"/>
                                    <p>我的足迹</p>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <!--我的物流 -->
                    <div class="m-logistics">

                        <div class="s-bar">
                            <i class="s-icon"></i>我的物流
                        </div>

                        <div class="s-content">

                            <%--商品物流列表--%>
                            <ul class="lg-list">

                                <li class="lg-item">

                                    <%--商品图示--%>
                                    <div class="item-info">
                                        <a href="#">
                                            <img src="/public/images/65.jpg_120x120xz.jpg"
                                                 alt="抗严寒冬天保暖隔凉羊毛毡底鞋垫超薄0.35厘米厚吸汗排湿气舒适">
                                        </a>
                                    </div>

                                    <%--物流信息--%>
                                    <div class="lg-info">
                                        <p>快件已从 义乌 发出</p>
                                        <time>2015-12-20 17:58:05</time>
                                        <div class="lg-detail-wrap">
                                            <a class="lg-detail i-tip-trigger"
                                               href="/public/persons/logistics.jsp">查看物流明细</a>
                                            <div class="J_TipsCon hide">
                                                <div class="s-tip-bar">中通快递&nbsp;&nbsp;&nbsp;&nbsp;运单号：373269427686
                                                </div>
                                                <div class="s-tip-content">
                                                    <ul>
                                                        <li>快件已从 义乌 发出2015-12-20 17:58:05</li>
                                                        <li>义乌 的 义乌总部直发车 已揽件2015-12-20 17:54:49</li>
                                                        <li class="s-omit"><a data-spm-anchor-id="a1z02.1.1998049142.3"
                                                                              target="_blank" href="#">··· 查看全部</a></li>
                                                        <li>您的订单开始处理2015-12-20 08:13:48</li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%--确认收货--%>
                                    <div class="lg-confirm">
                                        <a class="i-btn-typical" href="#">确认收货</a>
                                    </div>

                                </li>

                                <div class="clear"></div>

                                <li class="lg-item">
                                    <div class="item-info">
                                        <a href="#">
                                            <img src="/public/images/88.jpg_120x120xz.jpg"
                                                 alt="礼盒袜子女秋冬 纯棉袜加厚 女式中筒袜子 韩国可爱 女袜 女棉袜">
                                        </a>

                                    </div>
                                    <div class="lg-info">

                                        <p>已签收,签收人是青年城签收</p>
                                        <time>2015-12-19 15:35:42</time>

                                        <div class="lg-detail-wrap">
                                            <a class="lg-detail i-tip-trigger"
                                               href="/public/persons/logistics.jsp">查看物流明细</a>
                                            <div class="J_TipsCon hide">
                                                <div class="s-tip-bar">天天快递&nbsp;&nbsp;&nbsp;&nbsp;运单号：666287461069
                                                </div>
                                                <div class="s-tip-content">
                                                    <ul>

                                                        <li>已签收,签收人是青年城签收2015-12-19 15:35:42</li>
                                                        <li>【光谷关山分部】的派件员【关山代派】正在派件 电话:*2015-12-19 14:27:28</li>
                                                        <li class="s-omit"><a data-spm-anchor-id="a1z02.1.1998049142.7"
                                                                              target="_blank"
                                                                              href="//wuliu.taobao.com/user/order_detail_new.htm?spm=a1z02.1.1998049142.7.8BJBiJ&amp;trade_id=1479374251166800&amp;seller_id=1651462988&amp;tracelog=yimaidaologistics">···
                                                            查看全部</a></li>
                                                        <li>您的订单开始处理2015-12-17 14:27:50</li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="lg-confirm">
                                        <a class="i-btn-typical" href="#">确认收货</a>
                                    </div>
                                </li>

                            </ul>

                        </div>

                    </div>

                    <!--我的收藏 -->
                    <div class="you-like">

                        <div class="s-bar">我的收藏
                            <a class="am-badge am-badge-danger am-round">降价</a>
                            <a class="am-badge am-badge-danger am-round">下架</a>
                            <a class="i-load-more-item-shadow" href="#"><i
                                    class="am-icon-refresh am-icon-fw"></i>换一组</a>
                        </div>

                        <%--收藏商品列表--%>
                        <div class="s-content">

                            <%--商品1--%>
                            <div class="s-item-wrap">
                                <div class="s-item">

                                    <div class="s-pic">
                                        <a href="#" class="s-pic-link">
                                            <img src="/public/images/0-item_pic.jpg_220x220.jpg"
                                                 alt="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰"
                                                 title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰"
                                                 class="s-pic-img s-guess-item-img">
                                        </a>
                                    </div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">42.50</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">68.00</em></span>

                                    </div>
                                    <div class="s-title"><a href="#" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰">包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰</a>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 98.03%</span>
                                        <span class="s-sales">月销: 219</span>

                                    </div>
                                </div>
                            </div>

                            <%--商品2--%>
                            <div class="s-item-wrap">
                                <div class="s-item">

                                    <div class="s-pic">
                                        <a href="#" class="s-pic-link">
                                            <img src="/public/images/1-item_pic.jpg_220x220.jpg"
                                                 alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰"
                                                 title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰"
                                                 class="s-pic-img s-guess-item-img">
                                        </a>
                                    </div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">49.90</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">88.00</em></span>

                                    </div>
                                    <div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰</a>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 99.74%</span>
                                        <span class="s-sales">月销: 69</span>

                                    </div>
                                </div>
                            </div>

                            <div class="s-item-wrap">
                                <div class="s-item">

                                    <div class="s-pic">
                                        <a href="#" class="s-pic-link">
                                            <img src="/public/images/-0-saturn_solar.jpg_220x220.jpg"
                                                 alt="4折抢购!十二生肖925银女戒指,时尚开口女戒" title="4折抢购!十二生肖925银女戒指,时尚开口女戒"
                                                 class="s-pic-img s-guess-item-img">
                                        </a>
                                    </div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">378.00</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">1888.00</em></span>

                                    </div>
                                    <div class="s-title"><a href="#" title="4折抢购!十二生肖925银女戒指,时尚开口女戒">4折抢购!十二生肖925银女戒指,时尚开口女戒</a>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 99.93%</span>
                                        <span class="s-sales">月销: 278</span>

                                    </div>
                                </div>
                            </div>

                            <div class="s-item-wrap">
                                <div class="s-item">

                                    <div class="s-pic">
                                        <a href="#" class="s-pic-link">
                                            <img src="/public/images/0-item_pic.jpg_220x220.jpg"
                                                 alt="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰"
                                                 title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰"
                                                 class="s-pic-img s-guess-item-img">
                                        </a>
                                    </div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">42.50</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">68.00</em></span>

                                    </div>
                                    <div class="s-title"><a href="#" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰">包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰</a>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 98.03%</span>
                                        <span class="s-sales">月销: 219</span>

                                    </div>
                                </div>
                            </div>

                            <div class="s-item-wrap">
                                <div class="s-item">

                                    <div class="s-pic">
                                        <a href="#" class="s-pic-link">
                                            <img src="/public/images/1-item_pic.jpg_220x220.jpg"
                                                 alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰"
                                                 title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰"
                                                 class="s-pic-img s-guess-item-img">
                                        </a>
                                    </div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">49.90</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">88.00</em></span>

                                    </div>
                                    <div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰</a>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 99.74%</span>
                                        <span class="s-sales">月销: 69</span>

                                    </div>
                                </div>
                            </div>

                            <div class="s-item-wrap">
                                <div class="s-item">

                                    <div class="s-pic">
                                        <a href="#" class="s-pic-link">
                                            <img src="/public/images/-0-saturn_solar.jpg_220x220.jpg"
                                                 alt="4折抢购!十二生肖925银女戒指,时尚开口女戒" title="4折抢购!十二生肖925银女戒指,时尚开口女戒"
                                                 class="s-pic-img s-guess-item-img">
                                        </a>
                                    </div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">378.00</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em
                                                class="s-value">1888.00</em></span>

                                    </div>
                                    <div class="s-title"><a href="#" title="4折抢购!十二生肖925银女戒指,时尚开口女戒">4折抢购!十二生肖925银女戒指,时尚开口女戒</a>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 99.93%</span>
                                        <span class="s-sales">月销: 278</span>

                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="s-more-btn i-load-more-item" data-screen="0"><i
                                class="am-icon-refresh am-icon-fw"></i>更多
                        </div>

                    </div>

                </div>
            </div>

            <%--右部分--%>
            <div class="wrap-right">

                <!-- 我的日历 -->
                <div class="day-list">
                    <div class="s-bar">
                        <a class="i-history-trigger s-icon" href="#"></a>我的日历
                        <a class="i-setting-trigger s-icon" href="#"></a>
                    </div>
                    <div class="s-care s-care-noweather">
                        <div class="s-date">
                            <em>${customVoOrdersCount.day}</em>
                            <span>${customVoOrdersCount.weekday}</span>
                            <span>${customVoOrdersCount.yearMonth}</span>
                        </div>
                    </div>
                </div>

                <!--今日新品 -->
                <div class="new-goods">
                    <div class="s-bar">
                        <i class="s-icon"></i>今日新品
                        <a class="i-load-more-item-shadow">15款新品</a>
                    </div>
                    <div class="new-goods-info">
                        <a class="shop-info" href="#" target="_blank">
                            <div class="face-img-panel">
                                <img src="/public/images/imgsearch1.jpg" alt="">
                            </div>
                            <span class="new-goods-num ">4</span>
                            <span class="shop-title">剥壳松子</span>
                        </a>
                        <a class="follow " target="_blank">关注</a>
                    </div>
                </div>

                <!--热卖推荐 -->
                <div class="new-goods">
                    <div class="s-bar">
                        <i class="s-icon"></i>热卖推荐
                    </div>
                    <div class="new-goods-info">
                        <a class="shop-info" href="#" target="_blank">
                            <div>
                                <img src="/public/images/imgsearch1.jpg" alt="">
                            </div>
                            <span class="one-hot-goods">￥9.20</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <%--底部--%>
        <jsp:include page="/public/common/footer.jsp" flush="true"/>
    </div>
    <%--begin：个人中心菜单--%>
    <jsp:include page="/public/common/personalMenu.jsp" flush="true"/>
    <%--end：个人中心菜单--%>
</div>

</body>
</html>
