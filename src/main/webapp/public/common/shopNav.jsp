<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--begin：导航栏--%>
<div class="shopNav">
    <div class="slideall">
        <%--顶部导航条--%>
        <jsp:include page="/public/common/navigation.jsp" flush="true"/>
        <!--侧边导航 -->
        <div id="nav" class="navfull">
            <div class="area clearfix">
                <div class="category-content" id="guide_2">
                    <div class="category">
                        <ul class="category-list" id="js_climit_li">
                            <li class="appliance js_toggle relative first">
                                <div class="category-info">
                                    <h3 class="category-name b-category-name"><i><img
                                            src="/public/images/cake.png"/></i><a
                                            class="ml-22" title="点心">中西药品</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="中药">中药</span></dt>
                                                        <dd>
                                                            <a title="解表药" href="#"><span>解表药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="泻下药" href="#"><span>泻下药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="理湿药" href="#"><span>理湿药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="祛寒药" href="#"><span>祛寒药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="清热药" href="#"><span>清热药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="涌吐药" href="#"><span>涌吐药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="消化药" href="#"><span>消化药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="止咳药" href="#"><span>止咳药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="理气药" href="#"><span>理气药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="理血药" href="#"><span>理血药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="滋补药" href="#"><span>滋补药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="开窍药" href="#"><span>开窍药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="镇静药" href="#"><span>镇静药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="固涩药" href="#"><span>固涩药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="驱虫药" href="#"><span>驱虫药</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="西药品">西药</span></dt>
                                                        <dd>
                                                            <a title="抗感染类" href="#"><span>抗感染类</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="麻醉药及其辅助药物" href="#"><span>麻醉药及其辅助药物</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="神经类" href="#"><span>神经类</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="精神类" href="#"><span>精神类</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="抗肿瘤类" href="#"><span>抗肿瘤类</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="心血管类" href="#"><span>心血管类</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="呼吸类" href="#"><span>呼吸类</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="消化类" href="#"><span>消化类</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="泌尿系统类" href="#"><span>泌尿系统类</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title=" 激素类" href="#"><span> 激素类</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="调血糖药物" href="#"><span>调血糖药物</span></a>
                                                        </dd>
                                                    </dl>

                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort">
                                                        <dt><span>实力商家</span></dt>
                                                        <dd>
                                                            <a rel="nofollow" title="同仁堂旗舰店" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">同仁堂旗舰店</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="云南白药集团旗舰店" target="_blank" href="#"
                                                               rel="nofollow"><span>云南白药集团旗舰店</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="华润三九医药" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">华润三九医药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="修正药业集团旗舰店" target="_blank" href="#"
                                                               rel="nofollow"><span>修正药业集团旗舰店</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="哈药集团" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">哈药集团</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="恒瑞医药" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">恒瑞医药</span></a>
                                                        </dd>
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
                                    <h3 class="category-name b-category-name"><i><img src="/public/images/cookies.png"/></i><a
                                            class="ml-22" title="营养">营养</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="营养">营养</span></dt>
                                                        <dd>
                                                            <a title="奶昔" href="#"><span>奶昔</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="胶原蛋白" href="#"><span>胶原蛋白</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="液体钙" href="#"><span>液体钙</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="维生素D" href="#"><span>维生素D</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="甲壳素" href="#"><span>甲壳素</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="番茄红素" href="#"><span>番茄红素</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="蜂蜜" href="#"><span>蜂蜜</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="冬虫夏草" href="#"><span>冬虫夏草</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="燕窝" href="#"><span>燕窝</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="营养滋补">营养滋补</span></dt>
                                                        <dd>
                                                            <a title="蜂产品" href="#"><span>蜂产品</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="枸杞" href="#"><span>枸杞</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="西洋参" href="#"><span>西洋参</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="燕窝" href="#"><span>燕窝</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="菊花" href="#"><span>菊花</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="三七" href="#"><span>三七</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="莲子" href="#"><span>莲子</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="决明子" href="#"><span>决明子</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="石斛/枫斗" href="#"><span>石斛/枫斗</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="养生茶饮" href="#"><span>养生茶饮</span></a>
                                                        </dd>

                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort">
                                                        <dt><span>实力商家</span></dt>
                                                        <dd>
                                                            <a rel="nofollow" title="汤臣倍健" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">汤臣倍健</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="NUTRILITE纽崔莱" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">NUTRILITE纽崔莱</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="养生堂" target="_blank" href="#"
                                                               rel="nofollow"><span>养生堂</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="三精Sanchine " target="_blank" href="#"
                                                               rel="nofollow"><span>三精Sanchine </span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="Caltrate钙尔奇" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">Caltrate钙尔奇</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="Centrum善存" target="_blank" href="#"
                                                               rel="nofollow"><span>Centrum善存</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="东阿阿胶DEEJ " target="_blank" href="#"
                                                               rel="nofollow"><span>东阿阿胶DEEJ </span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="同仁堂健康TRT " target="_blank" href="#"
                                                               rel="nofollow"><span class="red">同仁堂健康TRT </span></a>
                                                        </dd>
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
                                    <h3 class="category-name b-category-name"><i><img
                                            src="/public/images/meat.png"/></i><a
                                            class="ml-22" title="保健品">保健品</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="增强免疫力">增强免疫力</span></dt>
                                                        <dd>
                                                            <a title="增加骨密度" href="#"><span>增加骨密度</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="护肝" href="#"><span>护肝</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="减肥" href="#"><span>减肥</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="通便" href="#"><span>通便</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="抗氧化" href="#"><span>抗氧化</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="改善睡眠" href="#"><span>改善睡眠</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="祛黄褐斑" href="#"><span>祛黄褐斑</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="调节血糖" href="#"><span>调节血糖</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="改善皮肤水份" href="#"><span>改善皮肤水份</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="改善营养性贫血" href="#"><span>改善营养性贫血</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="缓解视疲劳" href="#"><span>缓解视疲劳</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="调节肠道菌群" href="#"><span>调节肠道菌群</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="维生素">维生素</span></dt>
                                                        <dd>
                                                            <a title="肝肠胃" href="#"><span>肝肠胃</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="体重管理" href="#"><span>体重管理</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="运动营养" href="#"><span>运动营养</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="脑力智力" href="#"><span>脑力智力</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="眼部保养" href="#"><span>眼部保养</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="调节血脂">调节血脂</span></dt>
                                                        <dd>
                                                            <a title="辅助降血脂" href="#"><span>辅助降血脂</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="缓解体力疲劳" href="#"><span>缓解体力疲劳</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="提高缺氧耐受力" href="#"><span>提高缺氧耐受力</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="辅助降血糖" href="#"><span>辅助降血糖</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="对化学性肝损伤有辅助保护功能" href="#"><span>辅助保护肝</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort">
                                                        <dt><span>实力商家</span></dt>
                                                        <dd>
                                                            <a rel="nofollow" title="汤臣倍健" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">汤臣倍健</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="NUTRILITE纽崔莱" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">NUTRILITE纽崔莱</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="养生堂" target="_blank" href="#"
                                                               rel="nofollow"><span>养生堂</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="三精Sanchine " target="_blank" href="#"
                                                               rel="nofollow"><span>三精Sanchine </span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="Caltrate钙尔奇" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">Caltrate钙尔奇</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="Centrum善存" target="_blank" href="#"
                                                               rel="nofollow"><span>Centrum善存</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="东阿阿胶DEEJ " target="_blank" href="#"
                                                               rel="nofollow"><span>东阿阿胶DEEJ </span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="同仁堂健康TRT " target="_blank" href="#"
                                                               rel="nofollow"><span class="red">同仁堂健康TRT </span></a>
                                                        </dd>
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
                                    <h3 class="category-name b-category-name"><i><img
                                            src="/public/images/bamboo.png"/></i><a
                                            class="ml-22" title="健身">健身</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="器材">器材</span></dt>
                                                        <dd>
                                                            <a title="太极剑" href="#"><span>太极剑</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="太极功夫扇" href="#"><span>太极功夫扇</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="大陀螺" href="#"><span>大陀螺</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="鞭子" href="#"><span>鞭子</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="太极柔力球" href="#"><span>太极柔力球</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="空竹" href="#"><span>空竹</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="按摩">按摩</span></dt>
                                                        <dd>
                                                            <a title="按摩椅" href="#"><span>按摩椅</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="按摩垫" href="#"><span>按摩垫</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="足浴盆" href="#"><span>足浴盆</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="足疗机" href="#"><span>足疗机</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="体测器">体测器</span></dt>
                                                        <dd>
                                                            <a title="健康称" href="#"><span>健康称</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="心率表" href="#"><span>心率表</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="血压计" href="#"><span>血压计</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="脂肪测试" href="#"><span>脂肪测试</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort">
                                                        <dt><span>实力商家</span></dt>
                                                        <dd>
                                                            <a rel="nofollow" title="康力源健身器材" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">康力源健身器材</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="CHISLIM启迈斯" target="_blank" href="#"
                                                               rel="nofollow"><span>CHISLIM启迈斯</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="舒华" target="_blank" href="#"
                                                               rel="nofollow"><span>舒华</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="美力德健身" target="_blank" href="#"
                                                               rel="nofollow"><span>美力德健身</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="亚玛芬体育用品" target="_blank" href="#"
                                                               rel="nofollow"><span>亚玛芬体育用品</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="力动健康科技" target="_blank" href="#"
                                                               rel="nofollow"><span>力动健康科技</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="品健" target="_blank" href="#"
                                                               rel="nofollow"><span>品健</span></a>
                                                        </dd>
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
                                    <h3 class="category-name b-category-name"><i><img
                                            src="/public/images/nut.png"/></i><a
                                            class="ml-22" title="服装">服装</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="老年女装">老年女装(上衣)</span></dt>
                                                        <dd>
                                                            <a title="羽绒服" href="#"><span>羽绒服</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="皮衣" href="#"><span>皮衣</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="针织衫" href="#"><span>针织衫</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="棉服" href="#"><span>棉服</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="保暖套装" href="#"><span>保暖套装</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="T恤" href="#"><span>T恤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="风衣" href="#"><span>风衣</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="衬衫" href="#"><span>衬衫</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="毛衣" href="#"><span>毛衣</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="服装">老年男装(上衣)</span></dt>
                                                        <dd>
                                                            <a title="男士夹克" href="#"><span>男士夹克</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="长袖T恤" href="#"><span>长袖T恤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="棒球夹克" href="#"><span>棒球夹克</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="棉质卫衣" href="#"><span>棉质卫衣</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="保暖套装" href="#"><span>保暖套装</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="休闲衬衣" href="#"><span>休闲衬衣</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="毛衣" href="#"><span>毛衣</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="西装外套" href="#"><span>西装外套</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="羽绒服" href="#"><span>羽绒服</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="工装外套" href="#"><span>工装外套</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="老年女下装">女下装</span></dt>
                                                        <dd>
                                                            <a title="休闲裤" href="#"><span>休闲裤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="运动裤" href="#"><span>运动裤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="西装裤" href="#"><span>西装裤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="牛仔裤" href="#"><span>牛仔裤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="连衣裙" href="#"><span>连衣裙</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="大摆裙" href="#"><span>大摆裙</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="半身裙" href="#"><span>半身裙</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="棉麻长裙" href="#"><span>棉麻长裙</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="裤裙" href="#"><span>裤裙</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="老年男装">男下装</span></dt>
                                                        <dd>
                                                            <a title="休闲裤" href="#"><span>休闲裤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="牛仔裤" href="#"><span>牛仔裤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="西裤" href="#"><span>西裤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="棉裤" href="#"><span>棉裤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="运动裤" href="#"><span>运动裤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="针织裤" href="#"><span>针织裤</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="工装裤" href="#"><span>工装裤</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort">
                                                        <dt><span>实力商家</span></dt>
                                                        <dd>
                                                            <a rel="nofollow" title="唐纳.卡兰旗舰店" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">唐纳.卡兰旗舰店</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="路易·威登旗舰店" target="_blank" href="#"
                                                               rel="nofollow"><span>路易·威登旗舰店</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="夏奈尔" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">夏奈尔</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="范思哲" target="_blank" href="#"
                                                               rel="nofollow"><span>范思哲</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="克里斯汀·迪奥旗舰店" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">克里斯汀·迪奥旗舰店</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="古孜（gucci）" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">古孜（gucci）</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="瓦伦蒂诺（valentino）" target="_blank" href="#"
                                                               rel="nofollow"><span>瓦伦蒂诺（valentino）</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="普拉达（PRADA）旗舰店" target="_blank" href="#"
                                                               rel="nofollow"><span>普拉达（PRADA）旗舰店</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="美特斯邦威旗舰店" target="_blank" href="#"
                                                               rel="nofollow"><span>美特斯邦威旗舰店</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="优衣库" target="_blank" href="#"
                                                               rel="nofollow"><span>优衣库</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="七匹狼" target="_blank" href="#"
                                                               rel="nofollow"><span>七匹狼</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="班尼路" target="_blank" href="#"
                                                               rel="nofollow"><span>班尼路</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="思加图-STACCATO" target="_blank" href="#"
                                                               rel="nofollow"><span>思加图-STACCATO</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="阿迪达斯" target="_blank" href="#"
                                                               rel="nofollow"><span>阿迪达斯</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="安踏" target="_blank" href="#"
                                                               rel="nofollow"><span>安踏</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="香港老爷车" target="_blank" href="#"
                                                               rel="nofollow"><span>香港老爷车</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="派克兰帝" target="_blank" href="#"
                                                               rel="nofollow"><span>派克兰帝</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="富贵鸟 " target="_blank" href="#"
                                                               rel="nofollow"><span>富贵鸟 </span></a>
                                                        </dd>
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
                                    <h3 class="category-name b-category-name"><i><img
                                            src="/public/images/candy.png"/></i><a
                                            class="ml-22" title="日用品">日用品</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="个人护理">个人护理</span></dt>
                                                        <dd>
                                                            <a title="洗发水" href="#"><span>洗发水</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="染发膏" href="#"><span>染发膏</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="牙膏/牙刷" href="#"><span>牙膏/牙刷</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="毛巾" href="#"><span>毛巾</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="假牙清洁" href="#"><span>假牙清洁</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="洗衣液" href="#"><span>洗衣液</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="沐浴露" href="#"><span>沐浴露</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="剃须刀" href="#"><span>剃须刀治</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="假发" href="#"><span>假发</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="大家电">大家电</span></dt>
                                                        <dd>
                                                            <a title="智能电视" href="#"><span>智能电视</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="洗衣机" href="#"><span>洗衣机</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="冰箱" href="#"><span>冰箱</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="热水器" href="#"><span>热水器</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="电风扇" href="#"><span>电风扇</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="燃气灶" href="#"><span>燃气灶</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="电饭煲" href="#"><span>电饭煲</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="电磁炉" href="#"><span>电磁炉</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="空调" href="#"><span>空调</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort">
                                                        <dt><span>实力商家</span></dt>
                                                        <dd>
                                                            <a rel="nofollow" title="海尔" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">海尔</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="格力" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">格力</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="美的" target="_blank" href="#"
                                                               rel="nofollow"><span>美的</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="海信" target="_blank" href="#"
                                                               rel="nofollow"><span>海信</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="长虹" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">长虹</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="九阳" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">九阳</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="VS沙宣" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">VS沙宣</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="云南白药" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">云南白药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="Colgate/高露洁" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">Colgate/高露洁</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="safeguard/舒肤佳" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">safeguard/舒肤佳</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="蓝月亮" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">蓝月亮</span></a>
                                                        </dd>
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
                                    <h3 class="category-name b-category-name"><i><img
                                            src="/public/images/chocolate.png"/></i><a
                                            class="ml-22" title="低糖食品">低糖食品</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="冲饮">冲饮</span></dt>
                                                        <dd>
                                                            <a title="黑芝麻糊" href="#"><span>黑芝麻糊</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="早餐燕麦" href="#"><span>早餐燕麦</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="豆浆粉" href="#"><span>豆浆粉</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="V.D.FOOD/维地食品" href="#"><span>V.D.FOOD/维地食品</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="六个核桃" href="#"><span>六个核桃</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="江中本草低糖蛋白粉" href="#"><span>江中本草低糖蛋白粉</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="尤贝酸奶 " href="#"><span>尤贝酸奶 </span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="乳酸菌饮料" href="#"><span>乳酸菌饮料</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="椰子水" href="#"><span>椰子水</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="休闲零食">休闲零食</span></dt>
                                                        <dd>
                                                            <a title="回头客华夫饼" href="#"><span>回头客华夫饼</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="黑芝麻馅饼" href="#"><span>黑芝麻馅饼</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="红塔蛋清饼" href="#"><span>红塔蛋清饼</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="薏仁米沙琪玛 " href="#"><span>薏仁米沙琪玛 </span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="低糖素饼" href="#"><span>低糖素饼</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="梳打饼干" href="#"><span>梳打饼干</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="海太IVY低糖苏打饼干" href="#"><span>海太IVY低糖苏打饼干</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort">
                                                        <dt><span>实力商家</span></dt>
                                                        <dd>
                                                            <a rel="nofollow" title="回头客 " target="_blank" href="#"
                                                               rel="nofollow"><span class="red">回头客 </span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="好吃点" target="_blank" href="#"
                                                               rel="nofollow"><span>好吃点</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="NANFANG BLACK SESAME/南方黑芝麻  " target="_blank" href="#"
                                                               rel="nofollow"><span class="red">NANFANG BLACK SESAME/南方黑芝麻  </span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="HERSHEY’S/好时 " target="_blank" href="#"
                                                               rel="nofollow"><span>HERSHEY’S/好时 </span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="亨利 " target="_blank" href="#"
                                                               rel="nofollow"><span>亨利 </span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="SuperValu" target="_blank" href="#"
                                                               rel="nofollow"><span>SuperValu</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="Hubbards/哈贝斯" target="_blank"
                                                               href="#" rel="nofollow"><span
                                                                    class="red">Hubbards/哈贝斯</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="UCC/悠诗诗" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">UCC/悠诗诗</span></a>
                                                        </dd>
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
                                    <h3 class="category-name b-category-name"><i><img
                                            src="/public/images/fish.png"/></i><a
                                            class="ml-22" title="生鲜水果">生鲜水果</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="新鲜水果">新鲜水果</span></dt>
                                                        <dd>
                                                            <a title="荔枝" href="#"><span>荔枝</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="车厘子/樱桃" href="#"><span>车厘子/樱桃</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="火龙果" href="#"><span>火龙果</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="苹果" href="#"><span>苹果</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="榴莲" href="#"><span>榴莲</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="西柚" href="#"><span>西柚</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="哈密瓜" href="#"><span>哈密瓜</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="葡萄/提子" href="#"><span>葡萄/提子</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="菠萝" href="#"><span>菠萝</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="香蕉" href="#"><span>香蕉</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="桔子" href="#"><span>桔子</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="杨桃" href="#"><span>杨桃</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="山竹" href="#"><span>山竹</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="芒果" href="#"><span>芒果</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="蔬菜">蔬菜</span></dt>
                                                        <dd>
                                                            <a title="土豆" href="#"><span>土豆</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="番薯" href="#"><span>番薯</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="山药" href="#"><span>山药</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="莲藕" href="#"><span>莲藕</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="玉米" href="#"><span>玉米</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="秋葵" href="#"><span>秋葵</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="生姜" href="#"><span>生姜</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="大蒜" href="#"><span>大蒜</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="南瓜" href="#"><span>南瓜</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="海鲜">海鲜</span></dt>
                                                        <dd>
                                                            <a title="贝类制品" href="#"><span>贝类制品</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="鲍鱼" href="#"><span>鲍鱼</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="生蚝" href="#"><span>生蚝</span></a>
                                                        </dd>
                                                        <dd>
                                                        <a title="干贝/瑶柱" href="#"><span>干贝/瑶柱</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="扇贝" href="#"><span>扇贝</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="泥螺" href="#"><span>泥螺</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="蛏子" href="#"><span>蛏子</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort">
                                                        <dt><span>实力商家</span></dt>
                                                        <dd>
                                                            <a rel="nofollow" title="易果生鲜" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">易果生鲜</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="海峡一绝" target="_blank" href="#"
                                                               rel="nofollow"><span>海峡一绝</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="小饭团李简如" target="_blank" href="#"
                                                               rel="nofollow"><span>小饭团李简如</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="仕外田源" target="_blank" href="#"
                                                               rel="nofollow"><span>仕外田源</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="阳澄春秋" target="_blank" href="#"
                                                               rel="nofollow"><span>阳澄春秋</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="仁源水产" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">仁源水产</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="喵鲜生" target="_blank" href="#"
                                                               rel="nofollow"><span>喵鲜生</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="花果山" target="_blank" href="#"
                                                               rel="nofollow"><span>花果山</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="OCEAN FAMILY/大洋世家" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">OCEAN FAMILY/大洋世家</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="I LOVE U/我爱渔" target="_blank" href="#"
                                                               rel="nofollow"><span>I LOVE U/我爱渔</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="QISHOT/齐寿堂" target="_blank" href="#"
                                                               rel="nofollow"><span>QISHOT/齐寿堂</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a rel="nofollow" title="宋记元" target="_blank" href="#"
                                                               rel="nofollow"><span>宋记元</span></a>
                                                        </dd>
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
                                    <h3 class="category-name b-category-name"><i><img
                                            src="/public/images/tea.png"></i><a
                                            class="ml-22" title="养身茶酒">养身茶酒</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="茶品">茶品</span></dt>
                                                        <dd>
                                                            <a title="普洱" href="#"><span>普洱</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="龙井" href="#"><span>龙井</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="铁观音" href="#"><span>铁观音</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="大红袍" href="#"><span>大红袍</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="乌龙茶" href="#"><span>乌龙茶</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="菊花茶" href="#"><span>菊花茶</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="果味茶" href="#"><span>果味茶</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="苦荞茶" href="#"><span>苦荞茶</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="原味茶" href="#"><span>原味茶</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="养身酒">养身酒</span></dt>
                                                        <dd>
                                                            <a title="白酒" href="#"><span>白酒</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="红酒" href="#"><span>红酒</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="洋酒" href="#"><span>洋酒</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="啤酒" href="#"><span>啤酒</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="黄酒" href="#"><span>黄酒</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="保健酒" href="#"><span>保健酒</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="葡萄酒" href="#"><span>葡萄酒</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort">
                                                        <dt><span>实力商家</span></dt>
                                                        <dd>
                                                            <a title="Moutai/茅台" target="_blank" href="#"
                                                               rel="nofollow"><span>Moutai/茅台</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="五粮液" target="_blank" href="#" rel="nofollow"><span
                                                                    class="red">五粮液</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="金六福" target="_blank" href="#"
                                                               rel="nofollow"><span class="red">金六福</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="剑南春" target="_blank" href="#" rel="nofollow"><span
                                                                    class="red">剑南春</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="五粮液" target="_blank" href="#"
                                                               rel="nofollow"><span>五粮液</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="女儿红" target="_blank" href="#"
                                                               rel="nofollow"><span>女儿红</span></a>
                                                        </dd>
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
                                    <h3 class="category-name b-category-name"><i><img src="/public/images/package.png"></i><a
                                            class="ml-22" title="品牌、礼包">品牌/礼包</a></h3>
                                    <em>&gt;</em></div>
                                <div class="menu-item menu-in top">
                                    <div class="area-in">
                                        <div class="area-bg">
                                            <div class="menu-srot">
                                                <div class="sort-side">
                                                    <dl class="dl-sort">
                                                        <dt><span title="大包装">大包装</span></dt>
                                                        <dd>
                                                            <a title="四件套(床上用品)" href="#"><span>四件套(床上用品)</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="洗护套装" href="#"><span>洗护套装</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="茶具套装" href="#"><span>茶具套装</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="老年帽" href="#"><span>老年帽</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="洗发水套装" href="#"><span>洗发水套装</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="千层饼" href="#"><span>千层饼</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="甜甜圈" href="#"><span>甜甜圈</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="图书优惠套装" href="#"><span>图书优惠套装</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="渔具套装" href="#"><span>渔具套装</span></a>
                                                        </dd>
                                                    </dl>
                                                    <dl class="dl-sort">
                                                        <dt><span title="宠物">宠物</span></dt>
                                                        <dd>
                                                            <a title="哈士奇" href="#"><span>哈士奇</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="橘猫" href="#"><span>橘猫</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="泰迪" href="#"><span>泰迪</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="金毛" href="#"><span>金毛</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="加菲猫" href="#"><span>加菲猫</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="鹦鹉" href="#"><span>鹦鹉</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="鹩哥" href="#"><span>鹩哥</span></a>
                                                        </dd>
                                                        <dd>
                                                        <a title="画眉" href="#"><span>画眉</span></a>
                                                    </dd>
                                                        <dd>
                                                            <a title="八哥" href="#"><span>八哥</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="比格" href="#"><span>比格</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="吉娃娃" href="#"><span>吉娃娃</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="波斯猫" href="#"><span>波斯猫</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="布偶猫" href="#"><span>布偶猫</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="缅因猫" href="#"><span>缅因猫</span></a>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="brand-side">
                                                    <dl class="dl-sort">
                                                        <dt><span>实力商家</span></dt>
                                                        <dd>
                                                            <a title="宠物中心" target="_blank" href="#"
                                                               rel="nofollow"><span>宠物中心</span></a>
                                                        </dd>
                                                        <dd>
                                                            <a title="花鸟市场" target="_blank" href="#"
                                                               rel="nofollow"><span>花鸟市场</span></a>
                                                        </dd>

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

        <!--轮播-->
        <script type="text/javascript">
            (function () {
                $('.am-slider').flexslider();
            });
            $(document).ready(function () {
                $("li").hover(function () {
                    $(".category-content .category-list li.first .menu-in").css("display", "none");
                    $(".category-content .category-list li.first").removeClass("hover");
                    $(this).addClass("hover");
                    $(this).children("div.menu-in").css("display", "block")
                }, function () {
                    $(this).removeClass("hover")
                    $(this).children("div.menu-in").css("display", "none")
                });
            })
        </script>

        <!--小导航 -->
        <div class="am-g am-g-fixed smallnav">
            <div class="am-u-sm-3">
                <a href="sort.html"><img src="/public/images/navsmall.jpg"/>
                    <div class="title">商品分类</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="/public/images/huismall.jpg"/>
                    <div class="title">大聚惠</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="/public/images/mansmall.jpg"/>
                    <div class="title">个人中心</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="/public/images/moneysmall.jpg"/>
                    <div class="title">投资理财</div>
                </a>
            </div>
        </div>

        <!--走马灯 -->
        <div class="marqueen">
            <span class="marqueen-title">商城头条</span>
            <div class="demo">

                <ul>
                    <li class="title-first">
                        <a target="_blank" href="#">
                            <img src="/public/images/TJ2.jpg"/>
                            <span>[特惠]</span>商城爆品1分秒
                        </a>
                    </li>
                    <li class="title-first">
                        <a target="_blank" href="#">
                            <span>[公告]</span>商城与广州市签署战略合作协议
                            <img src="/public/images/TJ.jpg"/>
                            <p>XXXXXXXXXXXXXXXXXX</p>
                        </a>
                    </li>


                    <div class="mod-vip">
                        <%--判断用户登录状态并返回对于的走马灯状态--%>
                        <c:if test="${empty user}">
                            <div class="m-baseinfo">
                                <a href="#">
                                    <img src="/public/images/getAvatar.do.jpg"/>
                                </a>
                                <em>
                                    Hi,<span class="s-name">亲爱的！</span>
                                    <a href="/user/login"><p>想了解更多，请登录！</p></a>
                                </em>
                            </div>
                            <div class="member-logout">
                                <a class="am-btn-warning btn" href="/user/login">登录</a>
                                <a class="am-btn-warning btn" href="/user/register">注册</a>
                            </div>
                        </c:if>
                        <c:if test="${!empty user}">
                            <div class="m-baseinfo">
                                <a href="#">
                                    <img src="/public/images/getAvatar.do.jpg"/>
                                </a>
                                <em>
                                    Hi,<span class="s-name">${user.userNickname}</span>
                                    <a href="#"><p>点击更多优惠活动</p></a>
                                </em>
                            </div>
                            <div class="member-logout">
                                <a class="logout-f" href="/user/order/order?attribute=2">待付款</a>
                                <a class="logout-f" href="/user/order/order?attribute=3">待发货</a>
                                <a class="logout-f" href="/user/order/order?attribute=5">待评价</a>
                            </div>
                        </c:if>
                        <div class="clear"></div>
                    </div>

                    <li>
                        <a target="_blank" href="#"><span>[特惠]</span>洋河年末大促，低至两件五折</a>
                    </li>
                    <li>
                        <a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a>
                    </li>
                    <li>
                        <a target="_blank" href="#"><span>[特惠]</span>家电狂欢千亿礼券买1送1！</a>
                    </li>

                </ul>
                <div class="advTip"><img src="/public/images/advTip.jpg"/></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <script type="text/javascript">
        if ($(window).width() < 640) {
            function autoScroll(obj) {
                $(obj).find("ul").animate({
                    marginTop: "-39px"
                }, 500, function () {
                    $(this).css({
                        marginTop: "0px"
                    }).find("li:first").appendTo(this);
                })
            }

            $(function () {
                setInterval('autoScroll(".demo")', 3000);
            })
        }
    </script>
</div>
<%--end：导航栏--%>
