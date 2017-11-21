<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--甜点-->
<div class="am-container ">
    <div class="shopTitle ">
        <h4>甜品</h4>
        <h3>每一道甜品都有一个故事</h3>
        <div class="today-brands ">
            <a href="# ">桂花糕药</a>
            <a href="# ">奶皮酥药</a>
            <a href="# ">栗子糕药</a>
            <a href="# ">马卡龙药</a>
            <a href="# ">铜锣烧药</a>
            <a href="# ">豌豆黄药</a>
        </div>
        <span class="more ">
            <a href="# ">更多美味药<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
        </span>
    </div>
</div>

<div class="am-g am-g-fixed floodFour ">
    <div class="am-u-sm-5 am-u-md-4 text-one list ">
        <div class="word ">
            <a class="outer " href="# "><span class="inner "><b class="text ">神药</b></span></a>
            <a class="outer " href="# "><span class="inner "><b class="text ">神药</b></span></a>
            <a class="outer " href="# "><span class="inner "><b class="text ">神药</b></span></a>
            <a href="# ">
                <div class="outer-con ">
                    <div class="title ">
                        开抢啦！
                    </div>
                    <div class="sub-title ">
                        神药大礼包
                    </div>
                </div>
                <img src="/public/images/act1.png "/>
            </a>
            <div class="triangle-topright"></div>
        </div>
    </div>

        <C:forEach var="item" items="${listItem}">
            <div class="am-u-sm-7 am-u-md-4 text-three">
                <div class="outer-con ">
                    <div class="title ">${item.itemName}</div>
                    <div class="sub-title ">${item.itemPrice}</div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="/item/findItemMessage?itemId=${item.itemId}"><img src="${item.itemImages} "/></a>
            </div>
        </C:forEach>
    </div>