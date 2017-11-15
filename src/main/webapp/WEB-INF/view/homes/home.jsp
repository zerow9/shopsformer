<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>孝和首页</title>

    <link rel="icon" href="../../../frontpage/images/picture.ico"/>
    <link href="../../../frontpage/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="../../../frontpage/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>

    <link href="../../../frontpage/basic/css/demo.css" rel="stylesheet" type="text/css"/>

    <link href="../../../frontpage/css/hmstyle.css" rel="stylesheet" type="text/css"/>
    <link href="../../../frontpage/css/skin.css" rel="stylesheet" type="text/css"/>
    <script src="../../../frontpage/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="../../../frontpage/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

</head>
<body>
<jsp:include page="../common/head.jsp"></jsp:include>

<div class="banner">
    <!--轮播 -->
    <div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
        <ul class="am-slides">
            <li class="banner1">
                <a href="../../../frontpage/home/introduction.html"><img src="../../../frontpage/images/ad1.jpg"/></a>
            </li>
            <li class="banner2">
                <a><img src="../../../frontpage/images/ad2.jpg"/></a>
            </li>
            <li class="banner3">
                <a><img src="../../../frontpage/images/ad3.jpg"/></a>
            </li>
            <li class="banner4">
                <a><img src="../../../frontpage/images/ad4.jpg"/></a>
            </li>

        </ul>
    </div>
    <div class="clear"></div>
</div>

<div class="shopMainbg">
    <div class="shopMain" id="shopmain">

        <!--今日推荐 -->

        <div class="am-g am-g-fixed recommendation">
            <div class="clock am-u-sm-3"
            ">
            <img src="../../../frontpage/images/2016.png "></img>
            <p>今日<br>推荐</p>
        </div>
        <div class="am-u-sm-4 am-u-lg-3 ">
            <div class="info ">
                <h3>真的有鱼</h3>
                <h4>开年福利篇</h4>
            </div>
            <div class="recommendationMain one ">
                <a href="../../../frontpage/home/introduction.html "><img src="../../../frontpage/images/tj.png "></img></a>
            </div>
        </div>
        <div class="am-u-sm-4 am-u-lg-3 ">
            <div class="info ">
                <h3>囤货过冬</h3>
                <h4>让爱早回家</h4>
            </div>
            <div class="recommendationMain two ">
                <img src="../../../frontpage/images/tj1.png "></img>
            </div>
        </div>
        <div class="am-u-sm-4 am-u-lg-3 ">
            <div class="info ">
                <h3>浪漫情人节</h3>
                <h4>甜甜蜜蜜</h4>
            </div>
            <div class="recommendationMain three ">
                <img src="../../../frontpage/images/tj2.png "></img>
            </div>
        </div>

    </div>
    <div class="clear "></div>
    <!--热门活动 -->

    <div class="am-container activity ">
        <div class="shopTitle ">
            <h4>活动</h4>
            <h3>每期活动 优惠享不停 </h3>
            <span class="more ">
                              <a href="# ">全部活动<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
        </div>
        <div class="am-g am-g-fixed ">
            <div class="am-u-sm-3 ">
                <div class="icon-sale one "></div>
                <h4>秒杀</h4>
                <div class="activityMain ">
                    <img src="../../../frontpage/images/activity1.jpg "></img>
                </div>
                <div class="info ">
                    <h3>春节送礼优选</h3>
                </div>
            </div>

            <div class="am-u-sm-3 ">
                <div class="icon-sale two "></div>
                <h4>特惠</h4>
                <div class="activityMain ">
                    <img src="../../../frontpage/images/activity2.jpg "></img>
                </div>
                <div class="info ">
                    <h3>春节送礼优选</h3>
                </div>
            </div>

            <div class="am-u-sm-3 ">
                <div class="icon-sale three "></div>
                <h4>团购</h4>
                <div class="activityMain ">
                    <img src="../../../frontpage/images/activity3.jpg "></img>
                </div>
                <div class="info ">
                    <h3>春节送礼优选</h3>
                </div>
            </div>

            <div class="am-u-sm-3 last ">
                <div class="icon-sale "></div>
                <h4>超值</h4>
                <div class="activityMain ">
                    <img src="../../../frontpage/images/activity.jpg "></img>
                </div>
                <div class="info ">
                    <h3>春节送礼优选</h3>
                </div>
            </div>

        </div>
    </div>
    <div class="clear "></div>


    <div id="f1 ">
        <!--甜点-->

        <div class="am-container ">
            <div class="shopTitle ">
                <h4>甜品</h4>
                <h3>每一道甜品都有一个故事</h3>
                <div class="today-brands ">
                    <a href="# ">桂花糕</a>
                    <a href="# ">奶皮酥</a>
                    <a href="# ">栗子糕 </a>
                    <a href="# ">马卡龙</a>
                    <a href="# ">铜锣烧</a>
                    <a href="# ">豌豆黄</a>
                </div>
                <span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
            </div>
        </div>

        <div class="am-g am-g-fixed floodFour ">
            <div class="am-u-sm-5 am-u-md-4 text-one list ">
                <div class="word ">
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                </div>
                <a href="# ">
                    <div class="outer-con ">
                        <div class="title ">
                            开抢啦！
                        </div>
                        <div class="sub-title ">
                            零食大礼包
                        </div>
                    </div>
                    <img src="../../../frontpage/images/act1.png "/>
                </a>
                <div class="triangle-topright "></div>
            </div>

            <div class="am-u-sm-7 am-u-md-4 text-two sug ">
                <div class="outer-con ">
                    <div class="title ">
                        雪之恋和风大福
                    </div>
                    <div class="sub-title ">
                        ¥13.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/2.jpg "/></a>
            </div>

            <div class="am-u-sm-7 am-u-md-4 text-two ">
                <div class="outer-con ">
                    <div class="title ">
                        雪之恋和风大福
                    </div>
                    <div class="sub-title ">
                        ¥13.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/1.jpg "/></a>
            </div>


            <div class="am-u-sm-3 am-u-md-2 text-three big ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/5.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three sug ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/3.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/4.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three last big ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/5.jpg "/></a>
            </div>

        </div>
        <div class="clear "></div>
    </div>


    <div id="f2 ">
        <!--坚果-->
        <div class="am-container ">
            <div class="shopTitle ">
                <h4>坚果</h4>
                <h3>酥酥脆脆，回味无穷</h3>
                <div class="today-brands ">
                    <a href="# ">腰果</a>
                    <a href="# ">松子</a>
                    <a href="# ">夏威夷果 </a>
                    <a href="# ">碧根果</a>
                    <a href="# ">开心果</a>
                    <a href="# ">核桃仁</a>
                </div>
                <span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed floodThree ">
            <div class="am-u-sm-4 text-four list ">
                <div class="word ">
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                </div>
                <a href="# ">
                    <img src="../../../frontpage/images/act1.png "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                    </div>
                </a>
                <div class="triangle-topright "></div>
            </div>
            <div class="am-u-sm-4 text-four ">
                <a href="# ">
                    <img src="../../../frontpage/images/6.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-4 text-four sug ">
                <a href="# ">
                    <img src="../../../frontpage/images/7.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>

            <div class="am-u-sm-6 am-u-md-3 text-five big ">
                <a href="# ">
                    <img src="../../../frontpage/images/10.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five ">
                <a href="# ">
                    <img src="../../../frontpage/images/8.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five sug ">
                <a href="# ">
                    <img src="../../../frontpage/images/9.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five big ">
                <a href="# ">
                    <img src="../../../frontpage/images/10.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>

        </div>

        <div class="clear "></div>
    </div>


    <div id="f3 ">
        <!--甜点-->

        <div class="am-container ">
            <div class="shopTitle ">
                <h4>甜品</h4>
                <h3>每一道甜品都有一个故事</h3>
                <div class="today-brands ">
                    <a href="# ">桂花糕</a>
                    <a href="# ">奶皮酥</a>
                    <a href="# ">栗子糕 </a>
                    <a href="# ">马卡龙</a>
                    <a href="# ">铜锣烧</a>
                    <a href="# ">豌豆黄</a>
                </div>
                <span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
            </div>
        </div>

        <div class="am-g am-g-fixed floodFour ">
            <div class="am-u-sm-5 am-u-md-4 text-one list ">
                <div class="word ">
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                </div>
                <a href="# ">
                    <div class="outer-con ">
                        <div class="title ">
                            开抢啦！
                        </div>
                        <div class="sub-title ">
                            零食大礼包
                        </div>
                    </div>
                    <img src="../../../frontpage/images/act1.png "/>
                </a>
                <div class="triangle-topright "></div>
            </div>

            <div class="am-u-sm-7 am-u-md-4 text-two sug ">
                <div class="outer-con ">
                    <div class="title ">
                        雪之恋和风大福
                    </div>
                    <div class="sub-title ">
                        ¥13.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/2.jpg "/></a>
            </div>

            <div class="am-u-sm-7 am-u-md-4 text-two ">
                <div class="outer-con ">
                    <div class="title ">
                        雪之恋和风大福
                    </div>
                    <div class="sub-title ">
                        ¥13.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/1.jpg "/></a>
            </div>


            <div class="am-u-sm-3 am-u-md-2 text-three big ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/5.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three sug ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/3.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/4.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three last big ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/5.jpg "/></a>
            </div>

        </div>
        <div class="clear "></div>
    </div>


    <div id="f4 ">
        <!--坚果-->
        <div class="am-container ">
            <div class="shopTitle ">
                <h4>坚果</h4>
                <h3>酥酥脆脆，回味无穷</h3>
                <div class="today-brands ">
                    <a href="# ">腰果</a>
                    <a href="# ">松子</a>
                    <a href="# ">夏威夷果 </a>
                    <a href="# ">碧根果</a>
                    <a href="# ">开心果</a>
                    <a href="# ">核桃仁</a>
                </div>
                <span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed floodThree ">
            <div class="am-u-sm-4 text-four list ">
                <div class="word ">
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                </div>
                <a href="# ">
                    <img src="../../../frontpage/images/act1.png "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                    </div>
                </a>
                <div class="triangle-topright "></div>
            </div>
            <div class="am-u-sm-4 text-four ">
                <a href="# ">
                    <img src="../../../frontpage/images/6.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-4 text-four sug ">
                <a href="# ">
                    <img src="../../../frontpage/images/7.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>

            <div class="am-u-sm-6 am-u-md-3 text-five big ">
                <a href="# ">
                    <img src="../../../frontpage/images/10.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five ">
                <a href="# ">
                    <img src="../../../frontpage/images/8.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five sug ">
                <a href="# ">
                    <img src="../../../frontpage/images/9.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five big ">
                <a href="# ">
                    <img src="../../../frontpage/images/10.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>

        </div>

        <div class="clear "></div>
    </div>


    <div id="f5 ">
        <!--甜点-->

        <div class="am-container ">
            <div class="shopTitle ">
                <h4>甜品</h4>
                <h3>每一道甜品都有一个故事</h3>
                <div class="today-brands ">
                    <a href="# ">桂花糕</a>
                    <a href="# ">奶皮酥</a>
                    <a href="# ">栗子糕 </a>
                    <a href="# ">马卡龙</a>
                    <a href="# ">铜锣烧</a>
                    <a href="# ">豌豆黄</a>
                </div>
                <span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
            </div>
        </div>

        <div class="am-g am-g-fixed floodFour ">
            <div class="am-u-sm-5 am-u-md-4 text-one list ">
                <div class="word ">
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                </div>
                <a href="# ">
                    <div class="outer-con ">
                        <div class="title ">
                            开抢啦！
                        </div>
                        <div class="sub-title ">
                            零食大礼包
                        </div>
                    </div>
                    <img src="../../../frontpage/images/act1.png "/>
                </a>
                <div class="triangle-topright "></div>
            </div>

            <div class="am-u-sm-7 am-u-md-4 text-two sug ">
                <div class="outer-con ">
                    <div class="title ">
                        雪之恋和风大福
                    </div>
                    <div class="sub-title ">
                        ¥13.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/2.jpg "/></a>
            </div>

            <div class="am-u-sm-7 am-u-md-4 text-two ">
                <div class="outer-con ">
                    <div class="title ">
                        雪之恋和风大福
                    </div>
                    <div class="sub-title ">
                        ¥13.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/1.jpg "/></a>
            </div>


            <div class="am-u-sm-3 am-u-md-2 text-three big ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/5.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three sug ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/3.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/4.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three last big ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/5.jpg "/></a>
            </div>

        </div>
        <div class="clear "></div>
    </div>


    <div id="f6 ">
        <!--坚果-->
        <div class="am-container ">
            <div class="shopTitle ">
                <h4>坚果</h4>
                <h3>酥酥脆脆，回味无穷</h3>
                <div class="today-brands ">
                    <a href="# ">腰果</a>
                    <a href="# ">松子</a>
                    <a href="# ">夏威夷果 </a>
                    <a href="# ">碧根果</a>
                    <a href="# ">开心果</a>
                    <a href="# ">核桃仁</a>
                </div>
                <span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed floodThree ">
            <div class="am-u-sm-4 text-four list ">
                <div class="word ">
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                </div>
                <a href="# ">
                    <img src="../../../frontpage/images/act1.png "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                    </div>
                </a>
                <div class="triangle-topright "></div>
            </div>
            <div class="am-u-sm-4 text-four ">
                <a href="# ">
                    <img src="../../../frontpage/images/6.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-4 text-four sug ">
                <a href="# ">
                    <img src="../../../frontpage/images/7.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>

            <div class="am-u-sm-6 am-u-md-3 text-five big ">
                <a href="# ">
                    <img src="../../../frontpage/images/10.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five ">
                <a href="# ">
                    <img src="../../../frontpage/images/8.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five sug ">
                <a href="# ">
                    <img src="../../../frontpage/images/9.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five big ">
                <a href="# ">
                    <img src="../../../frontpage/images/10.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>

        </div>

        <div class="clear "></div>
    </div>


    <div id="f7 ">
        <!--甜点-->

        <div class="am-container ">
            <div class="shopTitle ">
                <h4>甜品</h4>
                <h3>每一道甜品都有一个故事</h3>
                <div class="today-brands ">
                    <a href="# ">桂花糕</a>
                    <a href="# ">奶皮酥</a>
                    <a href="# ">栗子糕 </a>
                    <a href="# ">马卡龙</a>
                    <a href="# ">铜锣烧</a>
                    <a href="# ">豌豆黄</a>
                </div>
                <span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
            </div>
        </div>

        <div class="am-g am-g-fixed floodFour ">
            <div class="am-u-sm-5 am-u-md-4 text-one list ">
                <div class="word ">
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                </div>
                <a href="# ">
                    <div class="outer-con ">
                        <div class="title ">
                            开抢啦！
                        </div>
                        <div class="sub-title ">
                            零食大礼包
                        </div>
                    </div>
                    <img src="../../../frontpage/images/act1.png "/>
                </a>
                <div class="triangle-topright "></div>
            </div>

            <div class="am-u-sm-7 am-u-md-4 text-two sug ">
                <div class="outer-con ">
                    <div class="title ">
                        雪之恋和风大福
                    </div>
                    <div class="sub-title ">
                        ¥13.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/2.jpg "/></a>
            </div>

            <div class="am-u-sm-7 am-u-md-4 text-two ">
                <div class="outer-con ">
                    <div class="title ">
                        雪之恋和风大福
                    </div>
                    <div class="sub-title ">
                        ¥13.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/1.jpg "/></a>
            </div>


            <div class="am-u-sm-3 am-u-md-2 text-three big ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/5.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three sug ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/3.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/4.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three last big ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/5.jpg "/></a>
            </div>

        </div>
        <div class="clear "></div>
    </div>

    <div id="f8 ">
        <!--坚果-->
        <div class="am-container ">
            <div class="shopTitle ">
                <h4>坚果</h4>
                <h3>酥酥脆脆，回味无穷</h3>
                <div class="today-brands ">
                    <a href="# ">腰果</a>
                    <a href="# ">松子</a>
                    <a href="# ">夏威夷果 </a>
                    <a href="# ">碧根果</a>
                    <a href="# ">开心果</a>
                    <a href="# ">核桃仁</a>
                </div>
                <span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed floodThree ">
            <div class="am-u-sm-4 text-four list ">
                <div class="word ">
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                </div>
                <a href="# ">
                    <img src="../../../frontpage/images/act1.png "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                    </div>
                </a>
                <div class="triangle-topright "></div>
            </div>
            <div class="am-u-sm-4 text-four ">
                <a href="# ">
                    <img src="../../../frontpage/images/6.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-4 text-four sug ">
                <a href="# ">
                    <img src="../../../frontpage/images/7.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>

            <div class="am-u-sm-6 am-u-md-3 text-five big ">
                <a href="# ">
                    <img src="../../../frontpage/images/10.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five ">
                <a href="# ">
                    <img src="../../../frontpage/images/8.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five sug ">
                <a href="# ">
                    <img src="../../../frontpage/images/9.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five big ">
                <a href="# ">
                    <img src="../../../frontpage/images/10.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>

        </div>

        <div class="clear "></div>
    </div>

    <div id="f9 ">
        <!--甜点-->

        <div class="am-container ">
            <div class="shopTitle ">
                <h4>甜品</h4>
                <h3>每一道甜品都有一个故事</h3>
                <div class="today-brands ">
                    <a href="# ">桂花糕</a>
                    <a href="# ">奶皮酥</a>
                    <a href="# ">栗子糕 </a>
                    <a href="# ">马卡龙</a>
                    <a href="# ">铜锣烧</a>
                    <a href="# ">豌豆黄</a>
                </div>
                <span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
            </div>
        </div>

        <div class="am-g am-g-fixed floodFour ">
            <div class="am-u-sm-5 am-u-md-4 text-one list ">
                <div class="word ">
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                </div>
                <a href="# ">
                    <div class="outer-con ">
                        <div class="title ">
                            开抢啦！
                        </div>
                        <div class="sub-title ">
                            零食大礼包
                        </div>
                    </div>
                    <img src="../../../frontpage/images/act1.png "/>
                </a>
                <div class="triangle-topright "></div>
            </div>

            <div class="am-u-sm-7 am-u-md-4 text-two sug ">
                <div class="outer-con ">
                    <div class="title ">
                        雪之恋和风大福
                    </div>
                    <div class="sub-title ">
                        ¥13.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/2.jpg "/></a>
            </div>

            <div class="am-u-sm-7 am-u-md-4 text-two ">
                <div class="outer-con ">
                    <div class="title ">
                        雪之恋和风大福
                    </div>
                    <div class="sub-title ">
                        ¥13.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/1.jpg "/></a>
            </div>


            <div class="am-u-sm-3 am-u-md-2 text-three big ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/5.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three sug ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/3.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/4.jpg "/></a>
            </div>

            <div class="am-u-sm-3 am-u-md-2 text-three last big ">
                <div class="outer-con ">
                    <div class="title ">
                        小优布丁
                    </div>
                    <div class="sub-title ">
                        ¥4.8
                    </div>
                    <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                </div>
                <a href="# "><img src="../../../frontpage/images/5.jpg "/></a>
            </div>

        </div>
        <div class="clear "></div>
    </div>


    <div id="f10 ">
        <!--坚果-->
        <div class="am-container ">
            <div class="shopTitle ">
                <h4>坚果</h4>
                <h3>酥酥脆脆，回味无穷</h3>
                <div class="today-brands ">
                    <a href="# ">腰果</a>
                    <a href="# ">松子</a>
                    <a href="# ">夏威夷果 </a>
                    <a href="# ">碧根果</a>
                    <a href="# ">开心果</a>
                    <a href="# ">核桃仁</a>
                </div>
                <span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right " style="padding-left:10px ; "></i></a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed floodThree ">
            <div class="am-u-sm-4 text-four list ">
                <div class="word ">
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                    <a class="outer " href="# "><span class="inner "><b class="text ">核桃</b></span></a>
                </div>
                <a href="# ">
                    <img src="../../../frontpage/images/act1.png "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                    </div>
                </a>
                <div class="triangle-topright "></div>
            </div>
            <div class="am-u-sm-4 text-four ">
                <a href="# ">
                    <img src="../../../frontpage/images/6.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-4 text-four sug ">
                <a href="# ">
                    <img src="../../../frontpage/images/7.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>

            <div class="am-u-sm-6 am-u-md-3 text-five big ">
                <a href="# ">
                    <img src="../../../frontpage/images/10.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five ">
                <a href="# ">
                    <img src="../../../frontpage/images/8.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five sug ">
                <a href="# ">
                    <img src="../../../frontpage/images/9.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 text-five big ">
                <a href="# ">
                    <img src="../../../frontpage/images/10.jpg "/>
                    <div class="outer-con ">
                        <div class="title ">
                            雪之恋和风大福
                        </div>
                        <div class="sub-title ">
                            ¥13.8
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md seprate "></i>
                    </div>
                </a>
            </div>

        </div>

        <div class="clear "></div>
    </div>


    <div class="footer ">
        <div class="footer-hd ">
            <p>
                <a href="# ">恒望科技</a>
                <b>|</b>
                <a href="# ">商城首页</a>
                <b>|</b>
                <a href="# ">支付宝</a>
                <b>|</b>
                <a href="# ">物流</a>
            </p>
        </div>
        <div class="footer-bd ">
            <p>
                <a>Yang Coding</a>
                <em>© 2017-2020 YangCoding.com 版权所有</em>
            </p>
        </div>
    </div>

</div>

<!--引导 -->
<div class="navCir ">
    <li class="active "><a href="../../../frontpage/home/home.html "><i class="am-icon-home "></i>首页</a></li>
    <li><a href="../../../frontpage/home/sort.html "><i class="am-icon-list "></i>分类</a></li>
    <li><a href="../../../frontpage/home/shopcart.html "><i class="am-icon-shopping-basket "></i>购物车</a></li>
    <li><a href="../../../frontpage/person/index.html "><i class="am-icon-user "></i>我的</a></li>
</div>


<!--菜单 -->
<div class=tip>
    <div id="sidebar ">
        <div id="wrap ">
            <div id="prof " class="item ">
                <a href="# ">
                    <span class="setting "></span>
                </a>
                <div class="ibar_login_box status_login ">
                    <div class="avatar_box ">
                        <p class="avatar_imgbox "><img src="../../../frontpage/images/no-img_mid_.jpg " /></p>
                        <ul class="user_info ">
                            <li>用户名sl1903</li>
                            <li>级&nbsp;别普通会员</li>
                        </ul>
                    </div>
                    <div class="login_btnbox ">
                        <a href="# " class="login_order ">我的订单</a>
                        <a href="# " class="login_favorite ">我的收藏</a>
                    </div>
                    <i class="icon_arrow_white "></i>
                </div>

            </div>
            <div id="shopCart " class="item ">
                <a href="# ">
                    <span class="message "></span>
                </a>
                <p>
                    购物车
                </p>
                <p class="cart_num ">0</p>
            </div>
            <div id="asset " class="item ">
                <a href="# ">
                    <span class="view "></span>
                </a>
                <div class="mp_tooltip ">
                    我的资产
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div id="foot " class="item ">
                <a href="# ">
                    <span class="zuji "></span>
                </a>
                <div class="mp_tooltip ">
                    我的足迹
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div id="brand " class="item ">
                <a href="# ">
                    <span class="wdsc "><img src="../../../frontpage/images/wdsc.png " /></span>
                </a>
                <div class="mp_tooltip ">
                    我的收藏
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div id="broadcast " class="item ">
                <a href="# ">
                    <span class="chongzhi "><img src="../../../frontpage/images/chongzhi.png " /></span>
                </a>
                <div class="mp_tooltip ">
                    我要充值
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div class="quick_toggle ">
                <li class="qtitem ">
                    <a href="# "><span class="kfzx "></span></a>
                    <div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
                </li>
                <!--二维码 -->
                <li class="qtitem ">
                    <a href="#none "><span class="mpbtn_qrcode "></span></a>
                    <div class="mp_qrcode " style="display:none; "><img src="../../../frontpage/images/weixin_code_145.png " /><i class="icon_arrow_white "></i></div>
                </li>
                <li class="qtitem ">
                    <a href="#top " class="return_top "><span class="top "></span></a>
                </li>
            </div>

            <!--回到顶部 -->
            <div id="quick_links_pop " class="quick_links_pop hide "></div>

        </div>

    </div>
    <div id="prof-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            我
        </div>
    </div>
    <div id="shopCart-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            购物车
        </div>
    </div>
    <div id="asset-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            资产
        </div>

        <div class="ia-head-list ">
            <a href="# " target="_blank " class="pl ">
                <div class="num ">0</div>
                <div class="text ">优惠券</div>
            </a>
            <a href="# " target="_blank " class="pl ">
                <div class="num ">0</div>
                <div class="text ">红包</div>
            </a>
            <a href="# " target="_blank " class="pl money ">
                <div class="num ">￥0</div>
                <div class="text ">余额</div>
            </a>
        </div>

    </div>
    <div id="foot-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            足迹
        </div>
    </div>
    <div id="brand-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            收藏
        </div>
    </div>
    <div id="broadcast-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            充值
        </div>
    </div>
</div>
<script type="text/javascript " src="../../../frontpage/basic/js/quick_links.js "></script>
</body>
</html>
