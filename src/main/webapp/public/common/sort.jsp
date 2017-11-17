<%--
  Created by IntelliJ IDEA.
  User: 63465
  Date: 2017/11/15 0015
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/view/common/head.jsp" %>
    <title>全部分类</title>
    <link href="../../../frontpage/basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../../../frontpage/css/sortstyle.css" rel="stylesheet" type="text/css" />
</head>

<body>

<%--顶部--%>
<jsp:include page="../../../view/common/top.jsp" flush="true"/>

<!--主体-->
<div id="nav" class="navfull">
    <div class="area clearfix">
        <div class="category-content" id="guide_2">
            <div class="long-title"><span class="all-goods">全部分类</span><span id="meauBack"><a href="home.html">返回</a></span></div>
            <div class="category">
                <ul class="category-list" id="js_climit_li">
                    <li class="appliance js_toggle relative first selected">
                        <div class="category-info">
                            <h3 class="category-name b-category-name"><i><img src="/images/cake.png"></i><a class="ml-22" title="点心">点心/蛋糕</a></h3>
                            <em>&gt;</em></div>
                        <div class="menu-item menu-in top">
                            <div class="area-in">
                                <div class="area-bg">
                                    <div class="menu-srot">

                                        <div class="brand-side">
                                            <dl class="dl-sort"><dt><span>为您推荐</span></dt>
                                                <img src="/images/TJ.jpg">
                                            </dl>
                                        </div>

                                        <div class="sort-side">
                                            <dl class="dl-sort">
                                                <dt><span title="蛋糕">蛋糕</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="蛋糕">点心</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <b class="arrow"></b>
                    </li>
                    <li class="appliance js_toggle relative">
                        <div class="category-info">
                            <h3 class="category-name b-category-name"><i><img src="/images/cookies.png"></i><a class="ml-22" title="饼干、膨化">饼干/膨化</a></h3>
                            <em>&gt;</em></div>
                        <div class="menu-item menu-in top">
                            <div class="area-in">
                                <div class="area-bg">
                                    <div class="menu-srot">
                                        <div class="brand-side">
                                            <dl class="dl-sort"><dt><span>为您推荐</span></dt>
                                                <img src="/images/TJ.jpg">
                                            </dl>
                                        </div>
                                        <div class="sort-side">
                                            <dl class="dl-sort">
                                                <dt><span title="饼干">饼干</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="薯片">薯片</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="蛋糕">虾条</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <b class="arrow"></b>
                    </li>
                    <li class="appliance js_toggle relative">
                        <div class="category-info">
                            <h3 class="category-name b-category-name"><i><img src="/images/meat.png"></i><a class="ml-22" title="熟食、肉类">熟食/肉类</a></h3>
                            <em>&gt;</em></div>
                        <div class="menu-item menu-in top">
                            <div class="area-in">
                                <div class="area-bg">
                                    <div class="menu-srot">
                                        <div class="brand-side">
                                            <dl class="dl-sort"><dt><span>为您推荐</span></dt>
                                                <img src="/images/TJ.jpg">
                                            </dl>
                                        </div>
                                        <div class="sort-side">
                                            <dl class="dl-sort">
                                                <dt><span title="猪肉脯">猪肉脯</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="牛肉丝">牛肉丝</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="小香肠">小香肠</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <b class="arrow"></b>
                    </li>
                    <li class="appliance js_toggle relative">
                        <div class="category-info">
                            <h3 class="category-name b-category-name"><i><img src="/images/bamboo.png"></i><a class="ml-22" title="素食、卤味">素食/卤味</a></h3>
                            <em>&gt;</em></div>
                        <div class="menu-item menu-in top">
                            <div class="area-in">
                                <div class="area-bg">
                                    <div class="menu-srot">
                                        <div class="brand-side">
                                            <dl class="dl-sort"><dt><span>为您推荐</span></dt>
                                                <img src="/images/TJ.jpg">
                                            </dl>
                                        </div>
                                        <div class="sort-side">
                                            <dl class="dl-sort">
                                                <dt><span title="豆干">豆干</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="干笋">干笋</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="鸭脖">鸭脖</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <b class="arrow"></b>
                    </li>
                    <li class="appliance js_toggle relative">
                        <div class="category-info">
                            <h3 class="category-name b-category-name"><i><img src="/images/nut.png"></i><a class="ml-22" title="坚果、炒货">坚果/炒货</a></h3>
                            <em>&gt;</em></div>
                        <div class="menu-item menu-in top">
                            <div class="area-in">
                                <div class="area-bg">
                                    <div class="menu-srot">
                                        <div class="brand-side">
                                            <dl class="dl-sort"><dt><span>为您推荐</span></dt>
                                                <img src="/images/TJ.jpg">
                                            </dl>
                                        </div>
                                        <div class="sort-side">
                                            <dl class="dl-sort">
                                                <dt><span title="蛋糕">坚果</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="蛋糕">锅巴</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <b class="arrow"></b>
                    </li>
                    <li class="appliance js_toggle relative">
                        <div class="category-info">
                            <h3 class="category-name b-category-name"><i><img src="/images/candy.png"></i><a class="ml-22" title="糖果、蜜饯">糖果/蜜饯</a></h3>
                            <em>&gt;</em></div>
                        <div class="menu-item menu-in top">
                            <div class="area-in">
                                <div class="area-bg">
                                    <div class="menu-srot">
                                        <div class="brand-side">
                                            <dl class="dl-sort"><dt><span>为您推荐</span></dt>
                                                <img src="/images/TJ.jpg">
                                            </dl>
                                        </div>
                                        <div class="sort-side">
                                            <dl class="dl-sort">
                                                <dt><span title="糖果">糖果</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="蜜饯">蜜饯</span></dt>
                                                <dd><a title="猕猴桃干" href="#"><span>猕猴桃干</span></a></dd>
                                                <dd><a title="糖樱桃" href="#"><span>糖樱桃</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <b class="arrow"></b>
                    </li>
                    <li class="appliance js_toggle relative">
                        <div class="category-info">
                            <h3 class="category-name b-category-name"><i><img src="/images/chocolate.png"></i><a class="ml-22" title="巧克力">巧克力</a></h3>
                            <em>&gt;</em></div>
                        <div class="menu-item menu-in top">
                            <div class="area-in">
                                <div class="area-bg">
                                    <div class="menu-srot">
                                        <div class="brand-side">
                                            <dl class="dl-sort"><dt><span>为您推荐</span></dt>
                                                <img src="/images/TJ.jpg">
                                            </dl>
                                        </div>
                                        <div class="sort-side">
                                            <dl class="dl-sort">
                                                <dt><span title="蛋糕">巧克力</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="蛋糕">果冻</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <b class="arrow"></b>
                    </li>
                    <li class="appliance js_toggle relative">
                        <div class="category-info">
                            <h3 class="category-name b-category-name"><i><img src="/images/fish.png"></i><a class="ml-22" title="海味、河鲜">海味/河鲜</a></h3>
                            <em>&gt;</em></div>
                        <div class="menu-item menu-in top">
                            <div class="area-in">
                                <div class="area-bg">
                                    <div class="menu-srot">
                                        <div class="brand-side">
                                            <dl class="dl-sort"><dt><span>为您推荐</span></dt>
                                                <img src="/images/TJ.jpg">
                                            </dl>
                                        </div>
                                        <div class="sort-side">
                                            <dl class="dl-sort">
                                                <dt><span title="海带丝">海带丝</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="小鱼干">小鱼干</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="鱿鱼丝">鱿鱼丝</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                            </dl>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <b class="arrow"></b>
                    </li>
                    <li class="appliance js_toggle relative">
                        <div class="category-info">
                            <h3 class="category-name b-category-name"><i><img src="/images/tea.png"></i><a class="ml-22" title="花茶、果茶">花茶/果茶</a></h3>
                            <em>&gt;</em></div>
                        <div class="menu-item menu-in top">
                            <div class="area-in">
                                <div class="area-bg">
                                    <div class="menu-srot">
                                        <div class="brand-side">
                                            <dl class="dl-sort"><dt><span>为您推荐</span></dt>
                                                <img src="/images/TJ.jpg">
                                            </dl>
                                        </div>
                                        <div class="sort-side">
                                            <dl class="dl-sort">
                                                <dt><span title="蛋糕">蛋糕</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="蛋糕">点心</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <b class="arrow"></b>
                    </li>
                    <li class="appliance js_toggle relative last">
                        <div class="category-info">
                            <h3 class="category-name b-category-name"><i><img src="/images/package.png"></i><a class="ml-22" title="品牌、礼包">品牌/礼包</a></h3>
                            <em>&gt;</em></div>
                        <div class="menu-item menu-in top">
                            <div class="area-in">
                                <div class="area-bg">
                                    <div class="menu-srot">
                                        <div class="brand-side">
                                            <dl class="dl-sort"><dt><span>为您推荐</span></dt>
                                                <img src="/images/TJ.jpg">
                                            </dl>
                                        </div>
                                        <div class="sort-side">
                                            <dl class="dl-sort">
                                                <dt><span title="大包装">大包装</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                            <dl class="dl-sort">
                                                <dt><span title="两件套">两件套</span></dt>
                                                <dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
                                                <dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
                                                <dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
                                                <dd><a title="软面包" href="#"><span>软面包</span></a></dd>
                                                <dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
                                                <dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
                                                <dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
                                                <dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
                                                <dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
                                            </dl>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </li>
                </ul>
            </div>
        </div>

    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $("li").click(function() {
            $(this).addClass("selected").siblings().removeClass("selected");
        })
    })
</script>
<div class="clear"></div>

<%--begin：引导--%>
<jsp:include page="../../../view/common/navCir.jsp" flush="true"/>
<%--end：引导--%>
</body>
</html>