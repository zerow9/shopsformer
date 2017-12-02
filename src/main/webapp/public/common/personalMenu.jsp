<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="menu">
    <ul>
        <li class="person ">
            <a style="font-size: larger" href="/user/personalCenter">个人中心</a>
        </li>

        <li class="person">
            <ul>
                <li><a href="/user/getUserInfo">个人信息</a></li>
                <li><a href="/user/safePage">安全设置</a></li>
                <li><a href="/user/address/address">收货地址</a></li>
            </ul>
        </li>

        <li class="person">
            <div style="font-size: larger">我的交易</div>
        </li>
        <li class="person">
            <ul>
                <li><a href="/user/order/order">订单管理</a></li>
                <li><a href="/shopCart/getPersonShopCart">购物车</a></li>
            </ul>
        </li>

        <li class="person">
            <div style="font-size: larger">我的小窝</div>
        </li>
        <li class="person">
            <ul>
                <li><a href="/collection/getUserConllection">收藏</a></li>
                <%--<li><a href="/WEB-INF/view/persons/comment.jsp">评价</a></li>--%>
                <li><a onclick="open_kefu()">消息</a></li>
            </ul>
        </li>
    </ul>
</aside>

<%--检查jQuery（如果jQuery没有被引入，则引入)--%>
<script>
    window.jQuery || document.write('<script src="/public/basic/js/jquery-1.7.2.min.js "><\/script>');

    function open_kefu() {
        var kefu = window.open('http://wpa.qq.com/msgrd?v=3&uin=634650981&site=qq&menu=yes', '_blank', 'width=500,height=300,left=500,top=200, menubar=no, toolbar=no, status=no,scrollbars=no, titlebar=no, location=no')
        setTimeout(function () {
            kefu.close();
        }, 30000)
    }
</script>
