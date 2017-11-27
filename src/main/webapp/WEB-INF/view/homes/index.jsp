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
</head>
<body>
<C:if test="${empty listItem}">
    <form action="/item/indexTenItem" id="sun" method="post"></form>
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
    </div>
    <jsp:include page="/public/common/tip.jsp" flush="true"/>
    <jsp:include page="/public/common/footer.jsp"/>
    <%--<jsp:include page="/public/common/customerServices.jsp" flush="true"/>--%>
</body>
<script type="text/javascript">
    window.onload = function () {
        var obj = document.getElementById("sun");
        obj.action = "/item/indexTenItem";
        obj.submit();
    }
</script>
</html>
