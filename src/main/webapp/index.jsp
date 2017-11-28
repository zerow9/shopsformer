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
        <div id="f3">
            <jsp:include page="/public/common/dessert.jsp" flush="true"/>
        </div>


        <%--  &lt;%&ndash;坚果--%>
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
        <jsp:include page="/public/common/footer.jsp" flush="true"/>

    </div>

    <jsp:include page="/public/common/tip.jsp" flush="true"/>
    <jsp:include page="/public/common/footer.jsp"/>
    <%--<jsp:include page="/public/common/customerServices.jsp" flush="true"/>--%>
</div>
</body>
<script type="text/javascript">
    window.onload = function () {
        var obj = document.getElementById("sun");
        obj.action = "/item/indexTenItem";
        obj.submit();
    }
</script>
</html>
