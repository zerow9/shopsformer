<%--
  Created by IntelliJ IDEA.
  User: 63465
  Date: 2017/11/16 0016
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--begin：个人中心菜单--%>
<aside class="menu">
    <ul>

        <li class="person ">
            <a href="/view/persons/index.jsp">个人中心</a>
        </li>

        <li class="person">
            <a href="#">个人资料</a>
            <ul>
                <li><a href="/user/getUserInfo">个人信息</a></li>
                <li><a href="/view/persons/safety.jsp">安全设置</a></li>
                <li><a href="/user/address/address">收货地址</a></li>
            </ul>
        </li>

        <li class="person">
            <a href="#">我的交易</a>
            <ul>
                <li><a href="/view/persons/order.jsp">订单管理</a></li>
                <li><a href="/view/persons/change.jsp">退款售后</a></li>
            </ul>
        </li>

        <li class="person">
            <a href="#">我的资产</a>
            <ul>
                <%--<li><a href="/view/persons/oupon.jsp">优惠券 </a></li>--%>
                <%--<li><a href="/view/persons/bonus.jsp">红包</a></li>--%>
                <li><a href="/view/persons/bill.jsp">账单明细</a></li>
            </ul>
        </li>

        <li class="person">
            <a href="#">我的小窝</a>
            <ul>
                <li><a href="/view/persons/collection.jsp">收藏</a></li>
                <%--<li><a href="/view/persons/foot.jsp">足迹</a></li>--%>
                <li><a href="/view/persons/comment.jsp">评价</a></li>
                <li><a href="/view/persons/news.jsp">消息</a></li>
            </ul>
        </li>
    </ul>

</aside>
<%--end：个人中心菜单--%>
