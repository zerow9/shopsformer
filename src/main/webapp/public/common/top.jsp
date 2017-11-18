<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--begin：顶部--%>
<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
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
                    <a href="/index.jsp" target="_top" class="h">孝和商城</a>
                </div>
            </div>
            <div class="topMessage my-shangcheng">
                <div class="menu-hd MyShangcheng">
                    <a href="/user/personalCenter" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
                </div>
            </div>

            <div class="topMessage mini-cart">
                <div class="menu-hd">
                    <a id="mc-menu-hd" href="/view/homes/shopcart.jsp" target="_top"><i
                            class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum"
                                                                                                  class="h">0</strong></a>
                </div>
            </div>

            <c:if test="${!empty user}">
            <div class="topMessage favorite">
                <div class="menu-hd">
                    <a href="/collection/getUserConllection" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a>
                </div>
            </div>
            </c:if>
        </ul>
    </div>

    <!--悬浮搜索框-->
    <div class="nav white">
        <div class="logoBig">
            <li><img src="/public/images/logobig.png"/></li>
        </div>

        <div class="search-bar pr">
            <a name="index_none_header_sysc" href="/public/common/search.jsp"></a>
            <form>
                <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
            </form>
        </div>
    </div>

    <div class="clear"></div>
</div>