<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 63465
  Date: 2017/11/15 0015
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--begin：顶部--%>
<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <div class="menu-hd">
                    <c:if test="${empty user}">
                    <a href="/view/homes/.jsp" target="_top" class="h">亲，请登录</a>
                    <a href="/view/homes/register.jsp" target="_top">免费注册</a>
                    </c:if>
                    <c:if test="${!empty user}">
                        <a href="/view/homes/.jsp" target="_top" class="h">欢迎：${user.userNickname}登陆</a>
                    </c:if>
                </div>
            </div>
        </ul>
        <ul class="message-r">
            <div class="topMessage home">
                <div class="menu-hd">
                    <a href="/view/homes/home.jsp" target="_top" class="h">孝和商城</a>
                </div>
            </div>
            <div class="topMessage my-shangcheng">
                <div class="menu-hd MyShangcheng">
                    <a href="/view/persons/index.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
                </div>
            </div>
            <div class="topMessage mini-cart">
                <div class="menu-hd">
                    <a id="mc-menu-hd" href="/view/homes/shopcart.jsp" target="_top"><i
                            class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum"
                                                                                                  class="h">0</strong></a>
                </div>
            </div>
            <div class="topMessage favorite">
                <div class="menu-hd">
                    <a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a>
                </div>
            </div>
        </ul>
    </div>

    <!--悬浮搜索框-->
    <div class="nav white">
        <%--<div class="logo"><img src="../../../view/images/logo.png"/></div>--%>
        <div class="logoBig">
            <li><img src="/view/images/logobig.png"/></li>
        </div>

        <div class="search-bar pr">
            <a name="index_none_header_sysc" href="../homes/search.jsp"></a>
            <form>
                <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
            </form>
        </div>
    </div>

    <div class="clear"></div>
</div>
<%--end：顶部--%>

