<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>商品页面</title>
    <style type="text/css">
        #Coco {
            float: left;
            width: 220px;
            height: 50px;
            margin-left: 50px;
            color: #000;
        }

        #Coco .addc-1 {
            float: left;
            margin-left: 10px;
            border-radius: 12px;
            height: 26px;
            line-height: 26px;
            border: none;
            background: #fff
        }

        #Coco .addc-2 {
            float: left;
            margin-left: 25px;
            border-radius: 12px;
            height: 26px;
            line-height: 26px;
            border: #C9C9C9;
            background: #fff
        }
    </style>
    <jsp:include page="/public/common/publicHead.jsp"/>

    <link rel="stylesheet" href="/public/basic/css/dlstyle.css">
    <link rel="stylesheet" href="/public/basic/css/movedown.css">
    <link rel="stylesheet" href="/public/basic/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/public/basic/css/bootstrapValidator.css">
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/demo.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/sweetalert.css" rel="stylesheet" type="text/css"/>
    <link type="text/css" href="/public/basic/css/optstyle.css" rel="stylesheet"/>
    <link type="text/css" href="/public/basic/css/style.css" rel="stylesheet"/>

</head>
<body>
<jsp:include page="/public/common/top.jsp" flush="true"/>
<div class="clear"></div>
<b class="line"></b>
<div class="listMain">
    <div class="nav-table">
        <jsp:include page="/public/common/navigation.jsp"></jsp:include>
    </div>
    <div class="clear"></div>
    <ol class="am-breadcrumb am-breadcrumb-slash">
        <li><a href="#">首页</a></li>
        <li><a href="#">分类</a></li>
        <li class="am-active">内容</li>
    </ol>
    <div class="clear"></div>
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
                        <a href="${item.itemImages}"><img
                                src="${item.itemImages}"
                                alt="细节展示放大镜特效"
                                rel="${item.itemImages}" class="jqzoom"/></a>
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
                                    <a href="javascript:" title="关闭" class="close">×</a>
                                </div>
                                <div class="theme-popbod dform">
                                    <form class="theme-signin" name="loginform" action="" method="post">
                                        <div class="theme-signin-left">
                                            <div class="theme-options">
                                                <div class="cart-title">商品规格</div>
                                                <ul>
                                                    <li class="sku-line selected"
                                                        style="width:48px;height:28px;text-align: center">${item.itemFormat}</li>
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

                        <div>
                            <input id="min" class="am-btn am-btn-default" name="" type="button" value="-"/>
                            <input id="text_box" name="" type="text" value="1" style="width:30px;text-align: center" readonly/>
                            <input id="itemId" value="${item.itemId}" type="hidden">
                            <input id="add" class="am-btn am-btn-default" name="" type="button" value="+"/>
                            <span class="tb-hidden">库存<span class="stock">${item.repertoryNumber}</span>件</span>
                        </div>
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
        <a href="/index.jsp"><span class="am-icon-home am-icon-fw">首页</span></a>
        <a href="/collection/getUserConllection"><span class="am-icon-heart am-icon-fw">收藏</span></a>

    </div>
    <li>
        <div class="clearfix tb-btn tb-btn-buy theme-login">
            <a id="LikBuy" title="点此按钮到下一步确认购买信息" onclick="buy(${item.itemId})">立即购买</a>
        </div>
    </li>
    <li>
        <div class="clearfix tb-btn tb-btn-basket theme-login">
            <a id="LikBasket"  onclick="oncart(${item.itemId})" title="加入购物车">加入购物车</a>
        </div>
    </li>
    <br/>
</div>
<br/><br/>
<%--添加到收藏--%>
<div id="Coco">
                    <button class="addc-1" id="myinput" type="button"><i class="am-icon-star-o" aria-hidden="true"></i>&nbsp;添加收藏
    </button>
                    <button class="addc-2" type="button"><i class="am-icon-share-alt" aria-hidden="true"></i>&nbsp;分享
                    </button>
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
                        <div class="info-box"><span class="info-box-price">¥ 29.90</span> <span
                                class="info-original-price">￥ 199.00</span>
                </div>
            </li>
            <li class="plus_icon"><i>+</i></li>
            <li>
                <div class="s_picBox">
                    <a class="s_pic" href="#"><img src="/public/images/cp2.jpg"></a>
                </div>
                <a class="txt" target="_blank" href="#">ZEK 原味海苔</a>
                        <div class="info-box"><span class="info-box-price">¥ 8.90</span> <span
                                class="info-original-price">￥ 299.00</span>
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
                            <img src="${item.itemImages}"/>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="am-tab-panel am-fade">
                    <div class="actor-new">
                        <div class="rate">
                            <strong>99<span>%</span></strong><br> <span>好评度</span>
                        </div>
                        <dl>
                            <dt>买家印象</dt>
                            <dd class="p-bfc">
                                <q class="comm-tags"><span>包装还不错</span><em>(0)</em></q>
                                <q class="comm-tags"><span>服务态度好</span><em>(0)</em></q>
                                <q class="comm-tags"><span>商品不错</span><em>(0)</em></q>
                                <q class="comm-tags"><span>价格便宜</span><em>(0)</em></q>
                                <q class="comm-tags"><span>特价买的</span><em>(0)</em></q>
                            </dd>
                        </dl>
                    </div>
                    <div class="clear"></div>
                    <div class="tb-r-filter-bar">
                        <ul class=" tb-taglist am-avg-sm-4">
                            <li class="tb-taglist-li tb-taglist-li-current">
                                <div class="comment-info">
                                    <span>全部评价</span>
                                    <span class="tb-tbcr-num">(${count})</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <ul class="am-comments-list am-comments-list-flip">
                        <c:forEach items="${discuessDetails}" var="discuessDetail">
                        <li class="am-comment">
                            <a href="">
                                <img class="am-comment-avatar" src="/public/images/hwbn40x40.jpg"/>
                            </a>
                            <div class="am-comment-main">
                                <header class="am-comment-hd">
                                    <div class="am-comment-meta">
                                        <a href="javascript:;" class="am-comment-author">${fn:substring(discuessDetail.user.userName,0,1)} *** (匿名)</a>
                                        评论于
                                        <time datetime="">${discuessDetail.dateToString}</time>
                                    </div>
                                </header>
                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255095758792">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            ${discuessDetail.discussDetail}
                                        </div>
                                        <div class="tb-r-act-bar">
                                            商品的关键字：${discuessDetail.item.keyWord}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        </c:forEach>
                    </ul>
                    <!--分页 -->
                    <ul class="am-pagination am-pagination-right">
                        <c:choose>
                            <c:when test="${page==1}">
                                <li class="am-disabled">
                                    <a href="?itemId=${item.itemId}&page=${page-1}">&laquo;上一页</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="am-active">
                                    <a href="?itemId=${item.itemId}&page=${page-1}">&laquo;上一页</a>
                                </li>
                            </c:otherwise>
                        </c:choose>

                        <c:forEach varStatus="i" begin="1" end="${sumPage}" step="1">
                            <c:choose>
                                <c:when test="${page==i.count}">
                                    <li class="disabled"><a href="javascript:;">${i.count}</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="am-active"><a href="?itemId=${item.itemId}&page=${i.count}">${i.count}</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                        <c:choose>
                            <c:when test="${page==sumPage}">
                                <li class="am-disabled">
                                    <a href="?itemId=${item.itemId}&page=${page+1}">下一页 &raquo;</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="am-active">
                                    <a href="?itemId=${item.itemId}&page=${page+1}">下一页 &raquo;</a>
                                </li>
                            </c:otherwise>
                        </c:choose>

                    </ul>
                    <div class="clear"></div>
                    <div class="tb-reviewsft">
                        <div class="tb-rate-alert type-attention">购买前请查看该商品的
                            <a href="javascipt:;" target="_blank">购物保障</a>，明确您的售后保障权益。
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

                </div>
            </div>
        </div>
        <jsp:include page="/public/common/footer.jsp" flush="true"/>
    </div>
</div>
<jsp:include page="/public/common/tip.jsp" flush="true"/>
<script src="/public/basic/js/bootstrapValidator.js"></script>
<script type="text/javascript" src="/public/basic/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/public/basic/js/quick_links.js"></script>
<script type="text/javascript" src="/public/basic/js/jquery.imagezoom.min.js"></script>
<script type="text/javascript" src="/public/basic/js/jquery.flexslider.js"></script>
        <script type="text/javascript" src="/public/basic/js/sweetalert.min.js"></script>
<script type="text/javascript" src="/public/basic/js/list.js"></script>

</body>
<script type="text/javascript">


    function buy(id) {
        var t = $("#text_box");
        <c:if test="${empty user}">
        swal({
            title: "请先登录，才可以购物噢！",
            type: "warning",
            timer: 2000,
            showConfirmButton: false
        });
        </c:if>
        <c:if test="${!empty user}">
        $.ajax({
            url: "/user/order/orderBuy?itemId=" + id+"&itemNumber="+t.val(),
            success: function (data) {
                if (data) {
                    swal({
                        title: "添加订单成功！",
                        type: "success",
                        timer: 2000,
                        showConfirmButton: false,
                    });
                    location.href = "/user/pay/itemBuyPay?cartId="+id+"&itemNumber="+t.val()
                } else {
                    swal({
                        title: "生成订单失败!请稍后购买！",
                        type: "error",
                        timer: 2000,
                        showConfirmButton: false,
                    });
                }
            }
        });
        </c:if>

    }


    function oncart(id) {
        var t = $("#text_box");
        <c:if test="${empty user}">
        swal({
            title: "请先登录，才可以购物噢！",
            type: "warning",
            timer: 2000,
            showConfirmButton: false
        });
        </c:if>
        <c:if test="${!empty user}">
        $.ajax({
            url: "/user/itemCart?cartId=" + id+"&number="+t.val(),
            success: function (data) {
                if (data) {
                    swal({
                        title: "加入购物车成功！",
                        type: "success",
                        timer: 2000,
                        showConfirmButton: false,
                    });
                    window.location.reload();
                }else swal({
                    title: "加入购物车失败！",
                    type: "error",
                    timer: 2000,
                    showConfirmButton: false
                });
            }
        });
        </c:if>
    }

    /*用户收藏按钮切换，如没有登录则提示登录之后才可以收藏商品*/
    $("#myinput").on("click",function(){
        <c:if test="${empty user}">
        swal({
            title: "请先登录，才可以收藏噢！",
            type: "warning",
            timer: 2000,
            showConfirmButton: false
        });
        </c:if>
        <c:if test="${!empty user}">
        var isstar=$(this).find("i").attr("class");
        var id=${item.itemId};
        if(isstar=="am-icon-star-o") {
            $(this).find("i").removeClass("am-icon-star-o").addClass("am-icon-star");
            $.ajax({
                type:"POST",
                url: "/user/collect?itemId=" + id,
                success:function (data) {
                    if(data==true){
                        swal({
                            title: "收藏成功！",
                            type: "success",
                            timer: 2000,
                            showConfirmButton: false
                        });
                        window.location.reload();
                    }else swal({
                        title: "收藏失败！",
                        type: "error",
                        timer: 2000,
                        showConfirmButton: false
                    });
                }
            });
        }else{
            $(this).find("i").removeClass("am-icon-star").addClass("am-icon-star-o");
            $.ajax({
                type:"POST",
                url: "/user/deleteCollect?id=" + id,
                success:function (data) {
                    if(data=="success"){
                        swal({
                            title: "取消收藏成功！",
                            type: "success",
                            timer: 2000,
                            showConfirmButton: false
                        });
                    }else swal({
                        title: "取消收藏失败！",
                        type: "error",
                        timer: 2000,
                        showConfirmButton: false
                    });
                }
            });
        }
        </c:if>
    });


</script>
</html>