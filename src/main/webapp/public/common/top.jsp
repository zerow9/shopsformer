<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--begin：顶部--%>
<div class="hmtop">
    <!--顶部导航条 -->
    <div style="background-color:#F2F2F2;width: 100%;border-bottom:1px solid #ddd;padding-right: 50px;padding-left: 20px">
    <div class="am-container header" >
        <ul class="message-l">
            <div class="topMessage">
                <div class="menu-hd">
                    <c:if test="${empty user}">
                        <a href="/user/login" target="_top" class="h">亲，请登录</a>
                        <a href="/user/register" target="_top">免费注册</a>
                    </c:if>
                    <c:if test="${!empty user}">
                        <a href="/index.jsp" target="_top" class="h">欢迎：${user.userNickname}</a>
                        <a href="/logout" target="_top">退出</a>
                    </c:if>
                </div>
            </div>
        </ul>
        <ul class="message-r">
            <div class="topMessage home">
                <div class="menu-hd">
                    <a href="/index.jsp" target="_top" class="h"><i class="am-icon-home" style="width:1.8em;text-align: center;font-size: 16px"></i>孝和商城</a>
                </div>
            </div>
            <div class="topMessage my-shangcheng">
                <div class="menu-hd MyShangcheng">
                    <a href="/user/personalCenter" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
                </div>
            </div>

            <div class="topMessage mini-cart">
                <div class="menu-hd">
                    <a id="mc-menu-hd" href="/shopCart/getPersonShopCart" target="_top"><i
                            class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车
                        <c:if test="${empty user}"><p id="J_MiniCartNum" style="float: right;  width: 18px;  height: 18px;
                             display: block; border-radius:50%;background: #ED145B none repeat scroll 0% 0% ;text-align: center; line-height:18px;
                             cursor: pointer;margin-top:8px;color: #FFF;">0</p></c:if>
                        <c:if test="${!empty user}"><p id="J_MiniCartNum" style="float: right;  width: 16px;  height: 16px;
                             display: block; border-radius:50%;background: #ED145B none repeat scroll 0% 0% ;text-align: center;  line-height: 16px;
                             cursor: pointer;margin-top:8px;color: #FFF;">${collectCount}</p></c:if>
                    </span>
                    </a>
                </div>
            </div>

                <div class="topMessage favorite">
                    <div class="menu-hd">
                        <a href="/collection/getUserConllection" target="_top"><i
                                class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a>
                    </div>
                </div>
        </ul>
    </div>
    </div>
    <!--悬浮搜索框-->
    <div class="nav white">
        <div class="logoBig">
            <a href="/index.jsp"><img src="/public/images/logobig0.png"/></a>
        </div>

        <div class="search-bar pr">
            <a name="index_none_header_sysc" href="/public/common/search.jsp"></a>
            <form style="border-radius: 0px 6px 6px 0px;" action="/search/search">
                <input type="hidden" value="1" name="page">
                <input id="searchInput" name="searchInput" type="text" placeholder="搜索" autocomplete="off"
                <c:if test="${!empty customVoSearch.searchInput}">value="${customVoSearch.searchInput}" </c:if>
                       style="font-size: 14px;">
                <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit"
                       style="border-radius:0px 4px 4px 0px; ">
            </form>

            <div class="word-search" style="margin-top: 5px;margin-left: 10px">
                <a href="/search/search?page=1&searchInput=老花镜&amp;from=hotword&amp;" style="color: #666;">老花镜&nbsp;&nbsp; </a>
                <a href="/search/search?page=1&searchInput=摇椅&amp;from=hotword&amp;" style="color: #ee3495;">摇椅&nbsp;&nbsp;</a>
                <a href="/search/search?page=1&searchInput=金龙鱼&amp;from=hotword&amp;" style="color: #ee3495;">金龙鱼&nbsp;&nbsp;</a>
                <a href="/search/search?page=1&searchInput=电子烟&amp;from=hotword&amp;" style="color: #ee3495;">电子烟&nbsp;&nbsp;</a>
                <a href="/search/search?page=1&searchInput=血糖仪&amp;from=hotword&amp;" style="color: #666;">血糖仪&nbsp;&nbsp;</a>
                <a href="/search/search?page=1&searchInput=大米&amp;from=hotword&amp;" style="color: #666;">大米&nbsp;&nbsp;</a>
                <a href="/search/search?page=1&searchInput=山水画&amp;from=hotword&amp;" style="color: #666;">山水画&nbsp;&nbsp;</a>
            </div>

        </div>
    </div>

    <div class="clear"></div>
</div>