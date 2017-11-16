<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TongZhou
  Date: 2017/11/15
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>地址管理</title>

    <link rel="icon" href="/frontpage/images/picture.ico"/>
    <link href="/frontpage/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/frontpage/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="/frontpage/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/frontpage/css/addstyle.css" rel="stylesheet" type="text/css">
    <link href="/frontpage/css/bootstrap.css" rel="stylesheet">


</head>
<body>
<jsp:include page="../../WEB-INF/view/common/head.jsp"></jsp:include>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-address">
                <div class="clear"></div>
                <a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">修改新地址</a>
                <!--例子-->
                <div class="am-modal am-modal-no-btn" id="doc-modal-1">

                    <div class="add-dress">

                        <!--标题 -->
                        <div class="am-cf am-padding">
                            <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改地址</strong> /
                                <small>Add&nbsp;address</small>
                            </div>
                        </div>
                        <hr/>

                        <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
                            <form class="am-form am-form-horizontal" action="/user/address/updateAddress.action"
                                  method="post">
                                <input type="hidden" name="addressId" value="${address.addressId}">
                                <input type="hidden" name="userUuid" value="${address.userUuid}">
                                <input type="hidden" name="isDefaultAddress" value="${address.isDefaultAddress}">

                                <div class="am-form-group">
                                    <label for="user-name" class="am-form-label">收货人</label>
                                    <div class="am-form-content">
                                        <input type="text" name="takeGoodsName" id="user-name" placeholder="收货人"
                                               value="${address.takeGoodsName}">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-form-label">手机号码</label>
                                    <div class="am-form-content">
                                        <input id="user-phone" name="addresseePhone" type="text" placeholder="手机号必填"
                                               value="${address.addresseePhone}">
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label class="am-form-label" style="margin-right: 5px">所在地</label>

                                    <div class="form-inline">
                                        <div data-toggle="distpicker">
                                            <div class="form-group">
                                                <select class="form-control" id="province2"
                                                        style="-webkit-border-radius:4px;"
                                                        name="takeGoodsProvince"
                                                        data-province="${address.takeGoodsProvince}"></select>
                                            </div>
                                            <div class="form-group">
                                                <select class="form-control" id="city2"
                                                        style="-webkit-border-radius:4px;"
                                                        name="takeGoodsCity"
                                                        data-city="${address.takeGoodsCity}"></select>
                                            </div>
                                            <div class="form-group">
                                                <select class="form-control" id="district2"
                                                        style="-webkit-border-radius:4px;"
                                                        name="takeGoodsCounty"
                                                        data-district="${address.takeGoodsCounty}"></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-form-label">详细地址</label>
                                    <div class="am-form-content">
                                        <textarea class="" rows="3" id="user-intro" name="address"
                                                  placeholder="输入详细地址">${address.address}</textarea>
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
        <!--底部-->
        <jsp:include page="../../WEB-INF/view/common/tail.jsp"></jsp:include>
    </div>

    <jsp:include page="../../WEB-INF/view/common/InfoMenu.jsp"></jsp:include>
</div>
<script src="/frontpage/AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
<script src="/frontpage/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
<script src="/js/addressDefine.js"></script>
<script src="/frontpage/js/jquery-1.7.2.min.js"></script>
<script src="/js/address/distpicker.data.js"></script>
<script src="/js/address/distpicker.js"></script>
<script src="/js/address/main.js"></script>
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
