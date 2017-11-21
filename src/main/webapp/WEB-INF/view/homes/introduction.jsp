<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <jsp:include page="/public/common/publicHead.jsp"/>
    <title>商品页面</title>
    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css"/>
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/demo.css" rel="stylesheet" type="text/css"/>
    <link type="text/css" href="/public/basic/css/optstyle.css" rel="stylesheet"/>
    <link type="text/css" href="/public/basic/css/style.css" rel="stylesheet"/>
    <script type="text/javascript" src="/public/basic/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/public/basic/js/quick_links.js"></script>
    <script type="text/javascript" src="/public/amazeUI/assets/js/amazeui.js"></script>
    <script type="text/javascript" src="/public/basic/js/jquery.imagezoom.min.js"></script>
    <script type="text/javascript" src="/public/basic/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="/public/basic/js/list.js"></script>
</head>
<body>
<jsp:include page="/public/common/top.jsp" flush="true"/>
<div class="clear"></div>
<b class="line"></b>
<div class="listMain">
    <div class="nav-table">
        <jsp:include page="/public/common/navigation.jsp"></jsp:include>
    </div>
    <ol class="am-breadcrumb am-breadcrumb-slash">
        <li><a href="#">首页</a></li>
        <li><a href="#">分类</a></li>
        <li class="am-active">内容</li>
    </ol>
    <!--放大镜-->
    <div class="shopMainbg">
        <div class="item-inform">
            <div class="clearfixLeft" id="clearcontent">
                <div class="box">
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $(".jqzoom").imagezoom();
                            $("#thumblist li a").click(function () {
                                $(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
                                $(".jqzoom").attr('src', $(this).find("img").attr("mid"));
                                $(".jqzoom").attr('rel', $(this).find("img").attr("big"));
                            });
                        });
                    </script>
                    <div class="tb-booth tb-pic tb-s310">
                        <a href="https://admin.shop.xcstudio.xin${item.itemImages}"><img
                                src="https://admin.shop.xcstudio.xin${item.itemImages}"
                                alt="细节展示放大镜特效"
                                rel="https://admin.shop.xcstudio.xin${item.itemImages}" class="jqzoom"/></a>
                    </div>
                </div>

                <div class="clear"></div>
            </div>

            <div class="clearfixRight">
                <!--规格属性-->
                <!--名称-->
                <div class="tb-detail-hd">
                    <h1>
                        ${item.itemName}
                    </h1>
                </div>
                <div class="tb-detail-list">
                    <!--价格-->
                    <div class="tb-detail-price">
                        <li class="price iteminfo_price">
                            <dt>${item.itemMarketPrice}</dt>
                            <dd><em>¥</em><b class="sys_item_price">${item.itemPrice}</b></dd>
                        </li>
                        <li class="price iteminfo_mktprice">
                            <dt>${item.postPrice}</dt>
                            <dd><em>¥</em><b class="sys_item_mktprice">${item.scorePrice}</b></dd>
                        </li>
                        <div class="clear"></div>
                    </div>
                    <!--地址-->
                    <dl class="iteminfo_parameter freight">
                    </dl>
                    <div class="clear"></div>

                    <!--销量-->
                    <ul class="tm-ind-panel">
                        <li class="tm-ind-item tm-ind-sellCount canClick">
                            <div class="tm-indcon"><span class="tm-label">月销量</span><span
                                    class="tm-count">1015</span>
                            </div>
                        </li>
                        <li class="tm-ind-item tm-ind-sumCount canClick">
                            <div class="tm-indcon"><span class="tm-label">累计销量</span><span
                                    class="tm-count">6015</span>
                            </div>
                        </li>
                        <li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
                            <div class="tm-indcon"><span class="tm-label">累计评价</span><span
                                    class="tm-count">640</span>
                            </div>
                        </li>
                    </ul>
                    <div class="clear"></div>

                    <!--各种规格-->
                    <dl class="iteminfo_parameter sys_item_specpara">
                        <dt class="theme-login">
                            <div class="cart-title">可选规格<span class="am-icon-angle-right"></span></div>
                        </dt>
                        <dd>
                            <!--操作页面-->
                            <div class="theme-popover-mask"></div>
                            <div class="theme-popover">
                                <div class="theme-span"></div>
                                <div class="theme-poptit">
                                    <a href="javascript:;" title="关闭" class="close">×</a>
                                </div>
                                <div class="theme-popbod dform">
                                    <form class="theme-signin" name="loginform" action="" method="post">
                                        <div class="theme-signin-left">
                                            <div class="theme-options">
                                                <div class="cart-title">规格</div>
                                                <ul>
                                                    <li class="sku-line selected">${item.itemFormat}</li>
                                                </ul>
                                            </div>
                                            <div class="theme-options">
                                                <div class="cart-title">包装</div>
                                                <ul>
                                                    <li class="sku-line selected">手袋单人份<i></i></li>
                                                    <li class="sku-line">礼盒双人份<i></i></li>
                                                    <li class="sku-line">全家福礼包<i></i></li>
                                                </ul>
                                            </div>
                                            <div class="theme-options">
                                                <div class="cart-title number">数量</div>
                        <dd>
                            <input id="min" class="am-btn am-btn-default" name="" type="button" value="-"/>
                            <input id="text_box" name="" type="text" value="1" style="width:30px;"/>
                            <input id="add" class="am-btn am-btn-default" name="" type="button" value="+"/>
                            <span class="tb-hidden">库存<span class="stock">${item.repertoryNumber}</span>件</span>
                        </dd>
                </div>
                <div class="btn-op">
                    <div class="btn am-btn am-btn-warning">确认</div>
                    <div class="btn close am-btn am-btn-warning">取消</div>
                </div>
            </div>
            </form>
        </div>
    </div>
    </dd>
    </dl>
    <div class="clear"></div>
    <!--活动	-->
    <div class="shopPromotion gold">
        <div class="hot">
            <dt class="tb-metatit">店铺优惠</dt>
            <div class="gold-list">
                <p>购物满2件打8折，满3件7折<span>点击领券<i class="am-icon-sort-down"></i></span></p>
            </div>
        </div>
        <div class="clear"></div>
        <div class="coupon">
            <dt class="tb-metatit">优惠券</dt>
            <div class="gold-list">
                <ul>
                    <li>125减5</li>
                    <li>198减10</li>
                    <li>298减20</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="pay">
    <div class="pay-opt">
        <a href="home.html"><span class="am-icon-home am-icon-fw">首页</span></a>
        <a><span class="am-icon-heart am-icon-fw">收藏</span></a>

    </div>
    <li>
        <div class="clearfix tb-btn tb-btn-buy theme-login">
            <a id="LikBuy" title="点此按钮到下一步确认购买信息" href="#">立即购买</a>
        </div>
    </li>
    <li>
        <div class="clearfix tb-btn tb-btn-basket theme-login">
            <a id="LikBasket" title="加入收藏" onclick="onadd(${item.itemId})">加入收藏</a>
        </div>
    </li>
</div>

</div>

<div class="clear"></div>

</div>

<!--优惠套装-->
<div class="match">
    <div class="match-title">推荐商品</div>
    <div class="match-comment">
        <ul class="like_list">
            <li>
                <div class="s_picBox">
                    <a class="s_pic" href="#"><img src="/public/images/cp.jpg"></a>
                </div>
                <a class="txt" target="_blank" href="#">萨拉米 1+1小鸡腿</a>
                <div class="info-box"><span class="info-box-price">¥ 29.90</span> <span class="info-original-price">￥ 199.00</span>
                </div>
            </li>
            <li class="plus_icon"><i>+</i></li>
            <li>
                <div class="s_picBox">
                    <a class="s_pic" href="#"><img src="/public/images/cp2.jpg"></a>
                </div>
                <a class="txt" target="_blank" href="#">ZEK 原味海苔</a>
                <div class="info-box"><span class="info-box-price">¥ 8.90</span> <span class="info-original-price">￥ 299.00</span>
                </div>
            </li>
            <li class="plus_icon"><i>=</i></li>
            <li class="total_price">
                <p class="combo_price"><span class="c-title">套餐价:</span><span>￥35.00</span></p>
                <p class="save_all">共省:<span>￥463.00</span></p>
                <a href="#" class="buy_now">立即购买</a>
            </li>
            <li class="plus_icon"><i class="am-icon-angle-right"></i></li>
        </ul>
    </div>
</div>
<div class="clear"></div>

<!-- introduce-->

<div class="introduce">
    <div class="browse">
        <div class="mc">
            <ul>
                <div class="mt">
                    <h2>看了又看</h2>
                </div>

                <li class="first">
                    <div class="p-img">
                        <a href="#"> <img class="" src="/public/images/browse1.jpg"> </a>
                    </div>
                    <div class="p-name">
                        <a href="#">
                            【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
                        </a>
                    </div>
                    <div class="p-price"><strong>￥35.90</strong></div>
                </li>
                <li>
                    <div class="p-img">
                        <a href="#"> <img class="" src="/public/images/browse1.jpg"> </a>
                    </div>
                    <div class="p-name">
                        <a href="#">
                            【三只松鼠_开口松子218g】零食坚果特产炒货东北红松子原味
                        </a>
                    </div>
                    <div class="p-price"><strong>￥35.90</strong></div>
                </li>
            </ul>
        </div>
    </div>

    <div class="introduceMain">
        <div class="am-tabs" data-am-tabs>
            <ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
                <li class="am-active">
                    <a href="#">
                        <span class="index-needs-dt-txt">宝贝详情</span></a>
                </li>
                <li>
                    <a href="#">
                        <span class="index-needs-dt-txt">全部评价</span></a>
                </li>
                <li>
                    <a href="#">
                        <span class="index-needs-dt-txt">猜你喜欢</span></a>
                </li>
            </ul>
            <div class="am-tabs-bd">
                <div class="am-tab-panel am-fade am-in am-active">
                    <div class="J_Brand">
                        <div class="attr-list-hd tm-clear">
                            <h4>产品参数：</h4></div>
                        <div class="clear"></div>
                        <ul id="J_AttrUL">
                            <li title="">原料产地:&nbsp;${item.makeVender}</li>
                            <li title="">商品信息:&nbsp;${item.itemIntroduce}</li>
                            <li title="">生产日期:&nbsp;${item.dateToString}</li>
                            <li title="">产品规格:&nbsp;${item.itemFormat}</li>
                            <li title="">产品标准号:&nbsp;GB/T 22165</li>
                            <li title="">生产许可证编号：&nbsp;QS4201 1801 0226</li>
                            <li title="">储存方法：&nbsp;请放置于常温、阴凉、通风、干燥处保存</li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <div class="details">
                        <div class="attr-list-hd after-market-hd">
                            <h4>商品细节</h4>
                        </div>
                        <div class="twlistNews">
                            <img src="https://admin.shop.xcstudio.xin${item.itemImages}"/>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="am-tab-panel am-fade">
                    <div class="actor-new">
                        <div class="rate">
                            <strong>100<span>%</span></strong><br> <span>好评度</span>
                        </div>
                        <dl>
                            <dt>买家印象</dt>
                            <dd class="p-bfc">
                                <q class="comm-tags"><span>味道不错</span><em>(2177)</em></q>
                                <q class="comm-tags"><span>颗粒饱满</span><em>(1860)</em></q>
                                <q class="comm-tags"><span>口感好</span><em>(1823)</em></q>
                                <q class="comm-tags"><span>商品不错</span><em>(1689)</em></q>
                                <q class="comm-tags"><span>香脆可口</span><em>(1488)</em></q>
                                <q class="comm-tags"><span>个个开口</span><em>(1392)</em></q>
                                <q class="comm-tags"><span>价格便宜</span><em>(1119)</em></q>
                                <q class="comm-tags"><span>特价买的</span><em>(865)</em></q>
                                <q class="comm-tags"><span>皮很薄</span><em>(831)</em></q>
                            </dd>
                        </dl>
                    </div>
                    <div class="clear"></div>
                    <div class="tb-r-filter-bar">
                        <ul class=" tb-taglist am-avg-sm-4">
                            <li class="tb-taglist-li tb-taglist-li-current">
                                <div class="comment-info">
                                    <span>全部评价</span>
                                    <span class="tb-tbcr-num">(32)</span>
                                </div>
                            </li>
                            <li class="tb-taglist-li tb-taglist-li-1">
                                <div class="comment-info">
                                    <span>好评</span>
                                    <span class="tb-tbcr-num">(32)</span>
                                </div>
                            </li>
                            <li class="tb-taglist-li tb-taglist-li-0">
                                <div class="comment-info">
                                    <span>中评</span>
                                    <span class="tb-tbcr-num">(32)</span>
                                </div>
                            </li>
                            <li class="tb-taglist-li tb-taglist-li--1">
                                <div class="comment-info">
                                    <span>差评</span>
                                    <span class="tb-tbcr-num">(32)</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <ul class="am-comments-list am-comments-list-flip">
                        <li class="am-comment">
                            <a href="">
                                <img class="am-comment-avatar" src="/public/images/hwbn40x40.jpg"/>
                            </a>
                            <div class="am-comment-main">
                                <header class="am-comment-hd">
                                    <div class="am-comment-meta">
                                        <a href="#link-to-user" class="am-comment-author">l***4 (匿名)</a>
                                        评论于
                                        <time datetime="">2015年10月28日 11:33</time>
                                    </div>
                                </header>
                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255095758792">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            没有色差，很暖和……美美的
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：蓝调灰&nbsp;&nbsp;尺码：2XL
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <!--分页 -->
                    <ul class="am-pagination am-pagination-right">
                        <li class="am-disabled">
                            <a href="#">&laquo;</a>
                        </li>
                        <li class="am-active">
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">&raquo;</a>
                        </li>
                    </ul>
                    <div class="clear"></div>
                    <div class="tb-reviewsft">
                        <div class="tb-rate-alert type-attention">购买前请查看该商品的
                            <a href="#" target="_blank">购物保障</a>，明确您的售后保障权益。
                        </div>
                    </div>
                </div>

                <div class="am-tab-panel am-fade">
                    <div class="like">
                        <ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
                            <li>
                                <div class="i-pic limit">
                                    <img src="/public/images/imgsearch1.jpg"/>
                                    <p>【良品铺子_开口松子】零食坚果特产炒货
                                        <span>东北红松子奶油味</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="/public/images/imgsearch1.jpg"/>
                                    <p>【良品铺子_开口松子】零食坚果特产炒货
                                        <span>东北红松子奶油味</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--分页 -->
                    <ul class="am-pagination am-pagination-right">
                        <li class="am-disabled">
                            <a href="#">&laquo;</a>
                        </li>
                        <li class="am-active">
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">&raquo;</a>
                        </li>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <jsp:include page="/public/common/footer.jsp" flush="true"/>
    </div>
</div>
<jsp:include page="/public/common/tip.jsp" flush="true"/>
</body>
<script type="text/javascript">
    function onadd(id) {
        <c:if test="${empty user}">
        alert("请先登录");
        </c:if>
        <c:if test="${!empty user}">
        $.ajax({
            url: "/user/collect?itemId=" + id,
            success: function (data) {
                if (data) {
                    alert("收藏成功!");
                } else {
                    alert("收藏已存在!");
                }
            }
        });
        </c:if>
    }
</script>
</html>