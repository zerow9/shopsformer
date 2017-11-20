<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
    <jsp:include page="/public/common/publicHead.jsp"/>
    <title>地址管理</title>

    <link rel="icon" href="/public/images/picture.ico"/>
    <link href="/public/amazeUI/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/public/amazeUI/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="/public/basic/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/addstyle.css" rel="stylesheet" type="text/css">
    <link href="/public/basic/css/bootstrap.css" rel="stylesheet">


</head>
<body>
<jsp:include page="/public/common/top.jsp"/>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-address">
                <!--标题 -->

                <c:if test="${!empty addresses}">
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> /
                            <small>Address&nbsp;list</small>
                        </div>
                    </div>
                    <hr/>
                    <ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">

                        <c:forEach items="${addresses}" var="address">
                            <c:if test="${address.isDefaultAddress==1}">
                                <li class="user-addresslist defaultAddr">
                                    <span class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
                                    <p class="new-tit new-p-re">
                                        <span class="new-txt">${address.takeGoodsName}</span>
                                        <span class="new-txt-rd2">${address.addresseePhone}</span>
                                    </p>
                                    <div class="new-mu_l2a new-p-re">
                                        <p class="new-mu_l2cw">
                                            <span class="title">地址：</span>
                                            <span class="province">${address.takeGoodsProvince}</span>
                                            <span class="city">${address.takeGoodsCity}</span>
                                            <span class="dist">${address.takeGoodsCounty}</span>
                                            <span class="street">${address.address}</span></p>
                                    </div>
                                    <div class="new-addr-btn">
                                        <a href="/user/address/selectAddress?addressId=${address.addressId}"><i
                                                class="am-icon-edit"></i>编辑</a>
                                    </div>
                                </li>
                            </c:if>

                            <c:if test="${address.isDefaultAddress==0}">
                                <li class="user-addresslist">
                                <span class="new-option-r"
                                      onclick="updateDefaultAddress(${address.addressId})"><i
                                        class="am-icon-check-circle" id="updateDefaultAddress"></i>默认地址</span>
                                    <p class="new-tit new-p-re">
                                        <span class="new-txt">${address.takeGoodsName}</span>
                                        <span class="new-txt-rd2">${address.addresseePhone}</span>
                                    </p>
                                    <div class="new-mu_l2a new-p-re">
                                        <p class="new-mu_l2cw">
                                            <span class="title">地址：</span>
                                            <span class="province">${address.takeGoodsProvince}</span>
                                            <span class="city">${address.takeGoodsCity}</span>
                                            <span class="dist">${address.takeGoodsCounty}</span>
                                            <span class="street">${address.address}</span></p>
                                    </div>
                                    <div class="new-addr-btn">
                                        <a href="/user/address/selectAddress?addressId=${address.addressId}"><i
                                                class="am-icon-edit" id="updateEdit"></i>编辑</a>
                                        <span class="new-addr-bar">|</span>
                                        <a href="javascript:void(0);"
                                           onclick="deleteAddress(${address.addressId})"><i
                                                class="am-icon-trash" id="deleteAddrss"></i>删除</a>
                                    </div>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </c:if>

                <div class="clear"></div>
                <a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
                <!--例子-->
                <div class="am-modal am-modal-no-btn" id="doc-modal-1">

                    <div class="add-dress">

                        <!--标题 -->
                        <div class="am-cf am-padding">
                            <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> /
                                <small>Add&nbsp;address</small>
                            </div>
                        </div>
                        <hr/>

                        <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
                            <form class="am-form am-form-horizontal" action="/user/address/insertAddress"
                                  method="post">
                                <input type="hidden" name="userUuid" value="${addresses[0].userUuid}">
                                <input type="hidden" name="isDefaultAddress" value="0">

                                <div class="am-form-group">
                                    <label for="user-name" class="am-form-label">收货人</label>
                                    <div class="am-form-content">
                                        <input type="text" name="takeGoodsName" id="user-name" placeholder="收货人">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-form-label">手机号码</label>
                                    <div class="am-form-content">
                                        <input id="user-phone" name="addresseePhone" placeholder="手机号必填" type="text">
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label class="am-form-label" style="margin-right: 5px">所在地</label>
                                    <div class="form-inline">
                                        <div data-toggle="distpicker">
                                            <div class="form-group">
                                                <select class="form-control" id="province2"
                                                        style="-webkit-border-radius:4px;"
                                                        name="takeGoodsProvince" data-province="---- 选择省 ----"></select>
                                            </div>
                                            <div class="form-group">
                                                <select class="form-control" id="city2"
                                                        style="-webkit-border-radius:4px;"
                                                        name="takeGoodsCity"
                                                        data-city="---- 选择市 ----"></select>
                                            </div>
                                            <div class="form-group">
                                                <select class="form-control" id="district2"
                                                        style="-webkit-border-radius:4px;"
                                                        name="takeGoodsCounty"
                                                        data-district="---- 选择区 ----"></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-form-label">详细地址</label>
                                    <div class="am-form-content">
                                        <textarea class="" rows="3" name="address" id="user-intro"
                                                  placeholder="输入详细地址"></textarea>
                                        <small>100字以内写出你的详细地址...</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <input class="am-btn am-btn-danger" type="submit" value="保存">
                                        <a href="javascript: void(0)" class="am-close am-btn am-btn-danger"
                                           data-am-modal-close>取消</a>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </div>
            <div class="clear"></div>

        </div>
        <jsp:include page="/public/common/footer.jsp"/>
    </div>
    <jsp:include page="/public/common/personalMenu.jsp" flush="true"/>
</div>
<script src="/public/amazeUI/assets/js/jquery.min.js" type="text/javascript"></script>
<script src="/public/amazeUI/assets/js/amazeui.js"></script>
<script src="/public/basic/js/addressDefine.js"></script>
<script src="/public/basic/js/jquery-1.7.2.min.js"></script>
<script src="/public/basic/js/address/distpicker.data.js"></script>
<script src="/public/basic/js/address/distpicker.js"></script>
<script src="/public/basic/js/address/main.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".new-option-r").click(function () {
            $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
        });

        var $ww = $(window).width();
        if ($ww > 640) {
            $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
        }

    })
</script>
</body>
</html>
