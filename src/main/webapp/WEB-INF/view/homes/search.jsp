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
    <link href="/public/basic/css/sweetalert.css" rel="stylesheet" type="text/css"/>
</head>

<body>

<!--顶部导航条 -->
<jsp:include page="/public/common/top.jsp" flush="true"/>
<div class="clear"></div>
<%--导航栏--%>
<div class="nav-table" style="margin-top: 10px">
    <jsp:include page="/public/common/navigation.jsp" flush="true"/>
</div>

<b class="line"></b>

<div class="search">

    <div class="search-list">
        <div class="am-g am-g-fixed">
            <div class="am-u-sm-12 am-u-md-12">
                <div class="search-content" style="width: 100%">
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

                    <ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-5 boxes">
                        <c:forEach items="${items}" var="items">
                            <li>
                                <div class="i-pic limit">
                                    <a href="/item/findItemMessage?itemId=${items.itemId}&page=${customVoSearch.page}">
                                        <img src="${items.itemImages}"/>
                                    </a>
                                    <p></p>
                                    <span class="title fl">${items.itemName}</span>
                                    <p class="number fl" style="margin-bottom: 25px">
                                        销量<span>${items.itemSaleNumber}</span>
                                    </p>

                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>${items.itemPrice}</strong>
                                        <i <c:if test="${items.repertoryNumber!=0}"> onclick="oncartItem(${items.itemId})" </c:if> class="am-icon-shopping-basket am-icon-md seprate " style="float: right"></i>
                                    </p>

                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="clear"></div>

                <!--分页 -->

                <ul class="am-pagination am-pagination-right">
                    <c:if test="${customVoSearch.searchCount!=-1}">
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
                                    <li class="am-active"><a
                                            href="?searchInput=${customVoSearch.searchInput}&page=${i.count}">${i.count}</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                        <c:choose>
                            <c:when test="${customVoSearch.page==customVoSearch.sumPage}">
                                <li class="am-disabled">
                                    <a href="?searchInput=${customVoSearch.searchInput}&page=${customVoSearch.page+1}">下一页
                                        &raquo;</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="am-active">
                                    <a href="?searchInput=${customVoSearch.searchInput}&page=${customVoSearch.page+1}">下一页
                                        &raquo;</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </c:if>

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
<script type="text/javascript" src="/public/basic/js/sweetalert.min.js"></script>
<script type="text/javascript">
    function oncartItem(id) {
        <c:if test="${empty user}">
        swal({
            title: "请先登录，才能加入购物车噢！",
            type: "warning",
            timer: 2000,
            showConfirmButton: false
        });
        </c:if>
        <c:if test="${!empty user}">
        $.ajax({
            url: "/user/itemCart?cartId=" + id + "&number=1",
            success: function (data) {
                if (data) {
                    swal({
                        title: "加入购物车成功！",
                        type: "success",
                        timer: 2000,
                        showConfirmButton: false,
                    });
                } else swal({
                    title: "加入购物车失败！",
                    type: "error",
                    timer: 2000,
                    showConfirmButton: false
                });
            }
        });
        </c:if>
    }
</script>
</html>
