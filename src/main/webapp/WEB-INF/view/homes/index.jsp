<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <%--引入公共的头部--%>
    <%@include file="/public/common/publicHead.jsp" %>

    <title>孝和商城首页</title>

    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet"/>
    <link href="/public/basic/css/demo.css" rel="stylesheet"/>
    <link href="/public/basic/css/hmstyle.css" rel="stylesheet"/>
    <link href="/public/basic/css/skin.css" rel="stylesheet"/>
        <link rel="icon" href="/public/images/picture.ico"/>
</head>

<body>

<%--顶部--%>
<jsp:include page="/public/common/top.jsp" flush="true"/>


<%--begin：首页横幅--%>
<jsp:include page="/public/common/banner.jsp" flush="true"/>
<%--end：首页横幅--%>

<%--begin：导航栏--%>
<jsp:include page="/public/common/shopNav.jsp" flush="true"/>
<%--end：导航栏--%>

<%--begin：首页板块--%>
<div class="shopMainbg">
    <div class="shopMain" id="shopmain">

        <!--今日推荐 -->
        <jsp:include page="/public/common/recommendation.jsp" flush="true"/>

        <!--热门活动 -->
        <jsp:include page="/public/common/activity.jsp" flush="true"/>

        <%--begin：首页楼层--%>
        <%--甜点--%>
        <div id="f1">
            <jsp:include page="/public/common/dessert.jsp" flush="true"/>
        </div>

        <%--坚果--%>
        <div id="f2">
            <jsp:include page="/public/common/nut.jsp" flush="true"/>
        </div>

        <%--甜点--%>
        <div id="f3">
            <jsp:include page="/public/common/dessert.jsp" flush="true"/>
        </div>

        <%--坚果--%>
        <div id="f4">
            <jsp:include page="/public/common/nut.jsp" flush="true"/>
        </div>

        <%--甜点--%>
        <div id="f5">
            <jsp:include page="/public/common/dessert.jsp" flush="true"/>
        </div>

        <%--坚果--%>
        <div id="f6">
            <jsp:include page="/public/common/nut.jsp" flush="true"/>
        </div>

        <%--甜点--%>
        <div id="f7">
            <jsp:include page="/public/common/dessert.jsp" flush="true"/>
        </div>

        <%--坚果--%>
        <div id="f8">
            <jsp:include page="/public/common/nut.jsp" flush="true"/>
        </div>

        <%--甜点--%>
        <div id="f9">
            <jsp:include page="/public/common/dessert.jsp" flush="true"/>
        </div>

        <%--坚果--%>
        <div id="f10">
            <jsp:include page="/public/common/nut.jsp" flush="true"/>
        </div>

        <%--底部--%>
        <jsp:include page="/public/common/footer.jsp" flush="true"/>

    </div>
</div>
<%--end：首页板块--%>

<%--begin：引导--%>
<jsp:include page="/public/common/navCir.jsp" flush="true"/>
<%--end：引导--%>

<%--begin：侧边悬浮快速链接--%>
<jsp:include page="/public/common/tip.jsp" flush="true"/>
<%--end：侧边悬浮快速链接--%>

</body>

</html>
