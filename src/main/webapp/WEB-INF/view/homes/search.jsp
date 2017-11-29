<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 63465
  Date: 2017/11/15 0015
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/public/common/publicHead.jsp" %>

    <title>搜索页面</title>


    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/demo.css" rel="stylesheet" type="text/css"/>
    <link href="/public/basic/css/seastyle.css" rel="stylesheet" type="text/css"/>

    <script src="/public/basic/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="/public/basic/js/script.js" type="text/javascript"></script>
</head>

<body>

<!--顶部导航条 -->
<jsp:include page="/public/common/top.jsp" flush="true"/>
<div class="clear"></div>
<%--导航栏--%>
<div class="nav-table">
    <jsp:include page="/public/common/navigation.jsp" flush="true"/>
</div>

<b class="line"></b>

<div class="search">

    <div class="search-list">
        <div class="am-g am-g-fixed">
            <div class="am-u-sm-12 am-u-md-12">
                <div class="theme-popover">

                    <div class="searchAbout">
                        <span class="font-pale">相关搜索：</span>
                        <a title="坚果" href="#">坚果</a>
                        <a title="瓜子" href="#">瓜子</a>
                        <a title="鸡腿" href="#">豆干</a>
                    </div>

                    <ul class="select">
                        <p class="title font-normal">
                            <span class="fl">松子</span>
                            <span class="total fl">搜索到<strong class="num">997</strong>件相关商品</span>
                        </p>
                        <div class="clear"></div>
                        <li class="select-result">
                            <dl>
                                <dt>已选</dt>
                                <dd class="select-no"></dd>
                                <p class="eliminateCriteria">清除</p>
                            </dl>
                        </li>
                        <div class="clear"></div>
                        <li class="select-list">
                            <dl id="select1">
                                <dt class="am-badge am-round">品牌</dt>

                                <div class="dd-conent">
                                    <dd class="select-all selected">
                                        <a href="#">全部</a>
                                    </dd>
                                    <dd>
                                        <a href="#">百草味</a>
                                    </dd>
                                    <dd>
                                        <a href="#">良品铺子</a>
                                    </dd>
                                    <dd>
                                        <a href="#">新农哥</a>
                                    </dd>
                                    <dd>
                                        <a href="#">楼兰蜜语</a>
                                    </dd>
                                    <dd>
                                        <a href="#">口水娃</a>
                                    </dd>
                                    <dd>
                                        <a href="#">考拉兄弟</a>
                                    </dd>
                                </div>

                            </dl>
                        </li>
                        <li class="select-list">
                            <dl id="select2">
                                <dt class="am-badge am-round">种类</dt>
                                <div class="dd-conent">
                                    <dd class="select-all selected">
                                        <a href="#">全部</a>
                                    </dd>
                                    <dd>
                                        <a href="#">东北松子</a>
                                    </dd>
                                    <dd>
                                        <a href="#">巴西松子</a>
                                    </dd>
                                    <dd>
                                        <a href="#">夏威夷果</a>
                                    </dd>
                                    <dd>
                                        <a href="#">松子</a>
                                    </dd>
                                </div>
                            </dl>
                        </li>
                        <li class="select-list">
                            <dl id="select3">
                                <dt class="am-badge am-round">选购热点</dt>
                                <div class="dd-conent">
                                    <dd class="select-all selected">
                                        <a href="#">全部</a>
                                    </dd>
                                    <dd>
                                        <a href="#">手剥松子</a>
                                    </dd>
                                    <dd>
                                        <a href="#">薄壳松子</a>
                                    </dd>
                                    <dd>
                                        <a href="#">进口零食</a>
                                    </dd>
                                    <dd>
                                        <a href="#">有机零食</a>
                                    </dd>
                                </div>
                            </dl>
                        </li>

                    </ul>
                    <div class="clear"></div>
                </div>

                <div class="search-content" >
                    <div class="sort">
                        <ul>
                            <li class="first">
                                <a title="综合">综合排序</a>
                            </li>
                            <li>
                                <a title="销量">销量排序</a>
                            </li>
                            <li>
                                <a title="价格">价格优先</a>
                            </li>
                            <li class="big">
                                <a title="评价" href="#">评价为主</a>
                            </li>
                        </ul>
                    </div>
                    <div class="clear"></div>

                    <ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
                        <c:forEach items="${items}" var="items">
                        <li>
                            <div class="i-pic limit">
                                <a href="/item/findItemMessage?itemId=${items.itemId}&page=${customVoSearch.page}">
                                    <img src="${items.itemImages}"/>
                                </a>
                                <p class="title fl">${items.itemName}</p>
                                <p class="price fl">
                                    <b>¥</b>
                                    <strong>${items.itemPrice}</strong>
                                </p>
                                <p class="number fl">
                                    销量<span>${items.itemSaleNumber}</span>
                                </p>
                            </div>
                        </li>
                        </c:forEach>
                        <div>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="i-pic limit">--%>

                                <%--<img src="/public/images/imgsearch1.jpg"/>--%>
                                <%--<p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p>--%>
                                <%--<p class="price fl">--%>
                                    <%--<b>¥</b>--%>
                                    <%--<strong>56.90</strong>--%>
                                <%--</p>--%>
                                <%--<p class="number fl">--%>
                                    <%--销量<span>1110</span>--%>
                                <%--</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        </div>
                    </ul>
                </div>

                <div class="search-side">

                    <div class="side-title">
                        经典搭配
                    </div>

                    <ul>
                        <c:if test="${customVoSearch.searchCount==0}">
                            <li>
                            <div class="i-pic check">
                                <img src="/public/images/cp.jpg"/>
                                <p class="check-title">萨拉米 1+1小鸡腿</p>
                                <p class="price fl">
                                    <b>¥</b>
                                    <strong>29.90</strong>
                                </p>
                                <p class="number fl">
                                    销量<span>1110</span>
                                </p>
                            </div>
                        </li>
                        </c:if>
                        <c:if test="${customVoSearch.searchCount==1}">
                            <li>
                                <div class="i-pic check">
                                    <img src="/public/images/cp.jpg"/>
                                    <p class="check-title">萨拉米 1+1小鸡腿</p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>29.90</strong>
                                    </p>
                                    <p class="number fl">
                                        销量<span>1110</span>
                                    </p>
                                </div>
                            </li>
                            <li>
                            <div class="i-pic check">
                                <img src="/public/images/cp2.jpg"/>
                                <p class="check-title">ZEK 原味海苔</p>
                                <p class="price fl">
                                    <b>¥</b>
                                    <strong>8.90</strong>
                                </p>
                                <p class="number fl">
                                    销量<span>1110</span>
                                </p>
                            </div>
                        </li>
                        </c:if>
                        <c:if test="${customVoSearch.searchCount==2}">
                            <li>
                                <div class="i-pic check">
                                    <img src="/public/images/cp.jpg"/>
                                    <p class="check-title">萨拉米 1+1小鸡腿</p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>29.90</strong>
                                    </p>
                                    <p class="number fl">
                                        销量<span>1110</span>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic check">
                                    <img src="/public/images/cp2.jpg"/>
                                    <p class="check-title">ZEK 原味海苔</p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>8.90</strong>
                                    </p>
                                    <p class="number fl">
                                        销量<span>1110</span>
                                    </p>
                                </div>
                            </li>
                            <li>
                            <div class="i-pic check">
                                <img src="/public/images/cp.jpg"/>
                                <p class="check-title">萨拉米 1+1小鸡腿</p>
                                <p class="price fl">
                                    <b>¥</b>
                                    <strong>29.90</strong>
                                </p>
                                <p class="number fl">
                                    销量<span>1110</span>
                                </p>
                            </div>
                        </li>
                        </c:if>
                    </ul>
                </div>
                <div class="clear"></div>

                <!--分页 -->
                <ul class="am-pagination am-pagination-right">
                    <c:choose>
                        <c:when test="${customVoSearch.page==1}">
                            <li class="am-disabled">
                                <a href="?searchInput=${customVoSearch.searchInput}&page=${customVoSearch.page-1}">&laquo;上一页</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="am-active">
                                <a href="?searchInput=${customVoSearch.searchInput}&page=${customVoSearch.page-1}">&laquo;上一页</a>
                            </li>
                        </c:otherwise>
                    </c:choose>

                    <c:forEach varStatus="i" begin="1" end="${customVoSearch.sumPage}" step="1">
                        <c:choose>
                            <c:when test="${customVoSearch.page==i.count}">
                                <li class="disabled"><a href="javascript:;">${i.count}</a></li>
                            </c:when>
                            <c:otherwise>
                                <li class="am-active"><a href="?searchInput=${customVoSearch.searchInput}&page=${i.count}">${i.count}</a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <c:choose>
                        <c:when test="${customVoSearch.page==customVoSearch.sumPage}">
                            <li class="am-disabled">
                                <a href="?searchInput=${customVoSearch.searchInput}&page=${customVoSearch.page+1}">下一页 &raquo;</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="am-active">
                                <a href="?searchInput=${customVoSearch.searchInput}&page=${customVoSearch.page+1}">下一页 &raquo;</a>
                            </li>
                        </c:otherwise>
                    </c:choose>

                </ul>
            </div>
        </div>

        <%--底部--%>
        <jsp:include page="/public/common/footer.jsp" flush="true"/>

    </div>

</div>

<div class="clear"></div>
<%--begin：侧边悬浮快速链接--%>
<jsp:include page="/public/common/tip.jsp" flush="true"/>
<%--end：侧边悬浮快速链接--%>

<div class="theme-popover-mask"></div>


</body>
</html>
