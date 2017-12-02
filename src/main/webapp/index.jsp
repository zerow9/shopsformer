<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <%@include file="/public/common/publicHead.jsp" %>
    <title>孝和商城首页</title>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet"/>
    <link href="/public/basic/css/demo.css" rel="stylesheet"/>
    <link href="/public/basic/css/hmstyle.css" rel="stylesheet"/>
    <link href="/public/basic/css/skin.css" rel="stylesheet"/>
    <link href="/public/basic/css/sweetalert.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<C:if test="${empty listItem}">
    <form action="/item/indexEightItem" id="sun" method="post"></form>
</C:if>
<jsp:include page="/public/common/top.jsp" flush="true"/>
<jsp:include page="/public/common/banner.jsp" flush="true"/>
<jsp:include page="/public/common/shopNav.jsp" flush="true"/>
<%--begin：首页板块--%>
<div class="shopMainbg">
    <div class="shopMain" id="shopmain">
        <!--今日推荐 -->
        <jsp:include page="/public/common/recommendation.jsp" flush="true"/>
        <!--热门活动 -->
        <jsp:include page="/public/common/activity.jsp" flush="true"/>
        <%--begin：首页楼层--%>
        <div id="f1">
            <jsp:include page="/public/common/dessert.jsp" flush="true"/>
        </div>
        <div id="f3">
            <jsp:include page="/public/common/nut.jsp" flush="true"/>
        </div>

    </div>
    <jsp:include page="/public/common/tip.jsp" flush="true"/>
    <jsp:include page="/public/common/footer.jsp"/>
</div>
</body>
<script type="text/javascript">

    window.onload = function () {
        var obj = document.getElementById("sun");
        obj.action = "/item/indexEightItem";
        obj.submit();
    }
</script>
<script type="text/javascript">
    function oncartItem(id) {
        <C:if test="${empty user}">
        swal({
            title: "请先登录，才能加入购物车噢！",
            type: "warning",
            timer: 2000,
            showConfirmButton: false
        });
        </C:if>
        <C:if test="${!empty user}">
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
        </C:if>
    }
</script>
<script src="/public/basic/js/bootstrapValidator.js"></script>
<script type="text/javascript" src="/public/basic/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/public/basic/js/quick_links.js"></script>
<script type="text/javascript" src="/public/basic/js/jquery.imagezoom.min.js"></script>
<script type="text/javascript" src="/public/basic/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="/public/basic/js/sweetalert.min.js"></script>
</html>
