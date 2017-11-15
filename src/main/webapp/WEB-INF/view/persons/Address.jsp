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

    <link href="../../../frontpage/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="../../../frontpage/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="../../../frontpage/css/personal.css" rel="stylesheet" type="text/css">
    <link href="../../../frontpage/css/addstyle.css" rel="stylesheet" type="text/css">
    <script src="../../../frontpage/AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
    <script src="../../../frontpage/AmazeUI-2.4.2/assets/js/amazeui.js"></script>

</head>
<body>
<jsp:include page="../common/head.jsp"></jsp:include>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-address">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small></div>
                </div>
                <hr/>
                <ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">

                    <li class="user-addresslist defaultAddr">
                        <span class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
                        <p class="new-tit new-p-re">
                            <span class="new-txt">小叮当</span>
                            <span class="new-txt-rd2">159****1622</span>
                        </p>
                        <div class="new-mu_l2a new-p-re">
                            <p class="new-mu_l2cw">
                                <span class="title">地址：</span>
                                <span class="province">湖北</span>省
                                <span class="city">武汉</span>市
                                <span class="dist">洪山</span>区
                                <span class="street">雄楚大道666号(中南财经政法大学)</span></p>
                        </div>
                        <div class="new-addr-btn">
                            <a href="#"><i class="am-icon-edit"></i>编辑</a>
                            <span class="new-addr-bar">|</span>
                            <a href="javascript:void(0);" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>
                        </div>
                    </li>

                    <li class="user-addresslist">
                        <span class="new-option-r"><i class="am-icon-check-circle"></i>设为默认</span>
                        <p class="new-tit new-p-re">
                            <span class="new-txt">小叮当</span>
                            <span class="new-txt-rd2">159****1622</span>
                        </p>
                        <div class="new-mu_l2a new-p-re">
                            <p class="new-mu_l2cw">
                                <span class="title">地址：</span>
                                <span class="province">湖北</span>省
                                <span class="city">武汉</span>市
                                <span class="dist">洪山</span>区
                                <span class="street">雄楚大道666号(中南财经政法大学)</span></p>
                        </div>
                        <div class="new-addr-btn">
                            <a href="#"><i class="am-icon-edit"></i>编辑</a>
                            <span class="new-addr-bar">|</span>
                            <a href="javascript:void(0);" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>
                        </div>
                    </li>
                    <li class="user-addresslist">
                        <span class="new-option-r"><i class="am-icon-check-circle"></i>设为默认</span>
                        <p class="new-tit new-p-re">
                            <span class="new-txt">小叮当</span>
                            <span class="new-txt-rd2">159****1622</span>
                        </p>
                        <div class="new-mu_l2a new-p-re">
                            <p class="new-mu_l2cw">
                                <span class="title">地址：</span>
                                <span class="province">湖北</span>省
                                <span class="city">武汉</span>市
                                <span class="dist">洪山</span>区
                                <span class="street">雄楚大道666号(中南财经政法大学)</span></p>
                        </div>
                        <div class="new-addr-btn">
                            <a href="#"><i class="am-icon-edit"></i>编辑</a>
                            <span class="new-addr-bar">|</span>
                            <a href="javascript:void(0);" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>
                        </div>
                    </li>
                </ul>
                <div class="clear"></div>
                <a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
                <!--例子-->
                <div class="am-modal am-modal-no-btn" id="doc-modal-1">

                    <div class="add-dress">

                        <!--标题 -->
                        <div class="am-cf am-padding">
                            <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small></div>
                        </div>
                        <hr/>

                        <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
                            <form class="am-form am-form-horizontal">

                                <div class="am-form-group">
                                    <label for="user-name" class="am-form-label">收货人</label>
                                    <div class="am-form-content">
                                        <input type="text" id="user-name" placeholder="收货人">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-form-label">手机号码</label>
                                    <div class="am-form-content">
                                        <input id="user-phone" placeholder="手机号必填" type="email">
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="user-address" class="am-form-label">所在地</label>
                                    <div class="am-form-content address">
                                        <select data-am-selected>
                                            <option value="a">浙江省</option>
                                            <option value="b" selected>湖北省</option>
                                        </select>
                                        <select data-am-selected>
                                            <option value="a">温州市</option>
                                            <option value="b" selected>武汉市</option>
                                        </select>
                                        <select data-am-selected>
                                            <option value="a">瑞安区</option>
                                            <option value="b" selected>洪山区</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-form-label">详细地址</label>
                                    <div class="am-form-content">
                                        <textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
                                        <small>100字以内写出你的详细地址...</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <a class="am-btn am-btn-danger">保存</a>
                                        <a href="javascript: void(0)" class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </div>

            <script type="text/javascript">
                $(document).ready(function() {
                    $(".new-option-r").click(function() {
                        $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
                    });

                    var $ww = $(window).width();
                    if($ww>640) {
                        $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
                    }

                })
            </script>

            <div class="clear"></div>

        </div>
        <!--底部-->
        <jsp:include page="../common/tail.jsp"></jsp:include>
    </div>

    <aside class="menu">
        <ul>
            <li class="person">
                <a href="../../../frontpage/person/index.html">个人中心</a>
            </li>
            <li class="person">
                <a href="#">个人资料</a>
                <ul>
                    <li> <a href="../../../frontpage/person/information.html">个人信息</a></li>
                    <li> <a href="../../../frontpage/person/safety.html">安全设置</a></li>
                    <li class="active"> <a href="../../../frontpage/person/address.html">收货地址</a></li>
                </ul>
            </li>
            <li class="person">
                <a href="#">我的交易</a>
                <ul>
                    <li><a href="../../../frontpage/person/order.html">订单管理</a></li>
                    <li> <a href="../../../frontpage/person/change.html">退款售后</a></li>
                </ul>
            </li>
            <li class="person">
                <a href="#">我的资产</a>
                <ul>
                    <li> <a href="../../../frontpage/person/coupon.html">优惠券 </a></li>
                    <li> <a href="../../../frontpage/person/bonus.html">红包</a></li>
                    <li> <a href="../../../frontpage/person/bill.html">账单明细</a></li>
                </ul>
            </li>

            <li class="person">
                <a href="#">我的小窝</a>
                <ul>
                    <li> <a href="../../../frontpage/person/collection.html">收藏</a></li>
                    <li> <a href="../../../frontpage/person/foot.html">足迹</a></li>
                    <li> <a href="../../../frontpage/person/comment.html">评价</a></li>
                    <li> <a href="../../../frontpage/person/news.html">消息</a></li>
                </ul>
            </li>

        </ul>

    </aside>
</div>
</body>
</html>
