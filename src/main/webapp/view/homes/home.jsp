<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <%--引入公共的头部--%>
    <%@include file="/view/common/head.html" %>

    <title>孝和商城首页</title>

    <link href="../../frontpage/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>
    <link href="../../frontpage/basic/css/demo.css" rel="stylesheet"/>
    <link href="../../frontpage/css/hmstyle.css" rel="stylesheet"/>
    <link href="../../frontpage/css/skin.css" rel="stylesheet"/>
</head>

<body>

<%--顶部--%>
<jsp:include page="../common/top.jsp" flush="true"/>

<%--begin：首页横幅--%>
<jsp:include page="home/banner.jsp" flush="true"/>
<%--end：首页横幅--%>

<%--begin：导航栏--%>
<jsp:include page="home/shopNav.jsp" flush="true"/>
<%--end：导航栏--%>

<%--begin：首页板块--%>
<div class="shopMainbg">
    <div class="shopMain" id="shopmain">

        <!--今日推荐 -->
        <jsp:include page="home/recommendation.jsp" flush="true"/>

        <!--热门活动 -->
        <jsp:include page="home/activity.jsp" flush="true"/>

        <%--begin：首页楼层--%>
        <%--甜点--%>
        <div id="f1">
            <jsp:include page="home/dessert.jsp" flush="true"/>
        </div>

        <%--坚果--%>
        <div id="f2">
            <jsp:include page="home/nut.jsp" flush="true"/>
        </div>

        <%--甜点--%>
        <div id="f3">
            <jsp:include page="home/dessert.jsp" flush="true"/>
        </div>

        <%--坚果--%>
        <div id="f4">
            <jsp:include page="home/nut.jsp" flush="true"/>
        </div>

        <%--甜点--%>
        <div id="f5">
            <jsp:include page="home/dessert.jsp" flush="true"/>
        </div>

        <%--坚果--%>
        <div id="f6">
            <jsp:include page="home/nut.jsp" flush="true"/>
        </div>

        <%--甜点--%>
        <div id="f7">
            <jsp:include page="home/dessert.jsp" flush="true"/>
        </div>

        <%--坚果--%>
        <div id="f8">
            <jsp:include page="home/nut.jsp" flush="true"/>
        </div>

        <%--甜点--%>
        <div id="f9">
            <jsp:include page="home/dessert.jsp" flush="true"/>
        </div>

        <%--坚果--%>
        <div id="f10">
            <jsp:include page="home/nut.jsp" flush="true"/>
        </div>

        <%--底部--%>
        <jsp:include page="../common/footer.jsp" flush="true"/>

    </div>
</div>
<%--end：首页板块--%>

<%--begin：引导--%>
<jsp:include page="../common/navCir.jsp" flush="true"/>
<%--end：引导--%>

<%--begin：侧边悬浮快速链接--%>
<jsp:include page="../common/tip.jsp" flush="true"/>
<%--end：侧边悬浮快速链接--%>

</body>

</html>
