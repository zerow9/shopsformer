<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--begin：侧边悬浮快速链接--%>
<div class=tip>
    <div id="sidebar">
        <div id="wrap">
            <div id="prof" class="item">
                <a href="#">
                    <span class="setting"></span>
                </a>
                <div class="ibar_login_box status_login">
                    <div class="avatar_box">
                        <a hrf="/user/personalCenter"><p class="avatar_imgbox"><img src="/public/images/mathera.jpg"/></p</a>
                        <ul class="user_info">
                            <li>用户名：${user.userNickname}</li>
                            <li>级&nbsp;别：普通会员</li>
                        </ul>
                    </div>
                    <div class="login_btnbox">
                        <a href="/user/order/order" class="login_order">我的订单</a>
                        <a href="/collection/getUserConllection" class="login_favorite">我的收藏</a>
                    </div>
                    <i class="icon_arrow_white"></i>
                </div>

            </div>
            <div id="shopCart" class="item">
                <a href="/shopCart/getPersonShopCart">
                    <span class="message"></span>
                </a>

                <p>
                    购物车
                </p>
                <c:if test="${empty user}"><p class="cart_num">0</p></c:if>
                <c:if test="${!empty user}"><p class="cart_num">${collectCount}</p></c:if>
            </div>

            <div id="brand" class="item">
                <a  href="/collection/getUserConllection">
                    <span class="wdsc"><img src="/public/images/wdsc.png"/></span>
                </a>
                <div class="mp_tooltip">
                    我的收藏
                    <i class="icon_arrow_right_black"></i>
                </div>
            </div>
            <div class="quick_toggle" style="margin-bottom: 50px">
                <ul>
                    <li class="qtitem">
                        <a onclick="open_kefu()"><span class="kfzx"></span></a>
                        <div class="mp_tooltip">客服中心<i class="icon_arrow_right_black"></i></div>
                    </li>
                    <!--二维码 -->
                    <li class="qtitem">
                        <a href="#none"><span class="mpbtn_qrcode"></span></a>
                        <div class="mp_qrcode" style="display:none;"><img src="http://xcstudio.oss-cn-shenzhen.aliyuncs.com/img/mmqrcode1511511377382.png"/><i
                                class="icon_arrow_white"></i></div>
                    </li>
                    <li class="qtitem">
                        <a href="#top" class="return_top"><span class="top"></span></a>
                    </li>
                </ul>
            </div>

            <!--回到顶部 -->
            <div id="quick_links_pop" class="quick_links_pop hide"></div>

        </div>

    </div>
    <div id="prof-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            我
        </div>
    </div>
    <div id="shopCart-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            购物车
        </div>
    </div>
    <div id="asset-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            资产
        </div>
    </div>
    <div id="foot-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            足迹
        </div>
    </div>
    <div id="brand-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            收藏
        </div>
    </div>
    <div id="broadcast-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            充值
        </div>
    </div>
</div>


<%--检查jQuery（如果jQuery没有被引入，则引入)--%>
<script>
    window.jQuery || document.write('<script src="/public/basic/js/jquery-1.7.2.min.js "><\/script>');
    function open_kefu() {
        var kefu = window.open('http://wpa.qq.com/msgrd?v=3&uin=634650981&site=qq&menu=yes', '_blank', 'width=500,height=300,left=500,top=200, menubar=no, toolbar=no, status=no,scrollbars=no, titlebar=no, location=no')
        setTimeout(function () {
            kefu.close();
        },30000)
    }
</script>

<%--侧边悬浮快速链接js--%>
<script type="text/javascript " src="/public/basic/js/quick_links.js "></script>
