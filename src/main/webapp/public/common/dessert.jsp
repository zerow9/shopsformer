<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--甜点-->
<div class="am-container ">
    <div class="shopTitle ">
        <h4>药品</h4>
        <h3>每一类药都对应一种特殊症状</h3>
        <div class="today-brands ">
            <a href="# ">止疼药</a>
            <a href="# ">肠胃药</a>
            <a href="# ">感冒咳嗽</a>
            <a href="# ">腰腿疼痛</a>
            <a href="# ">保健理疗</a>
            <a href="# ">体检套餐</a>
        </div>
        <span class="more ">
            <a href="# ">更多特效药品<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
        </span>
    </div>
</div>

<div class="am-g am-g-fixed floodFour ">
    <div class="am-u-sm-5 am-u-md-4 text-one list ">
        <div class="word ">
            <a class="outer " href="# "><span class="inner "><b class="text ">保健</b></span></a>
            <a class="outer " href="# "><span class="inner "><b class="text ">营养</b></span></a>
            <a class="outer " href="# "><span class="inner "><b class="text ">滋补</b></span></a>
            <a href="# ">
                <div class="outer-con ">
                    <div class="title ">
                        特惠好礼 活动开始啦！
                    </div>
                    <div class="sub-title ">
                        体检套餐
                    </div>
                </div>
                <img src="/public/images/act1.png "/>
            </a>
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