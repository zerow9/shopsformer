<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>钱款去向</title>

		<link rel="icon" href="../../../frontpage/images/picture.ico"/>
		<link href="../../../frontpage/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../../../frontpage/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="../../../frontpage/css/personal.css" rel="stylesheet" type="text/css">
		<link href="../../../frontpage/css/refstyle.css" rel="stylesheet" type="text/css">

		<script type="text/javascript" src="../../../frontpage/js/jquery-1.7.2.min.js"></script>
		<script src="../../../frontpage/AmazeUI-2.4.2/assets/js/amazeui.js"></script>

	</head>

	<body>
		<!--头 -->
		<jsp:include page="../common/head.jsp"></jsp:include>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">钱款去向</strong> / <small>Apply&nbsp;for&nbsp;returns</small></div>
					</div>
					<hr/>
					<div class="comment-list">

						<div class="record-aside">
							<div class="item-pic">
								<a href="#" class="J_MakePoint">
									<img src="../../../frontpage/images/comment.jpg_400x400.jpg" class="itempic">
								</a>
							</div>

							<div class="item-title">

								<div class="item-name">
									<a href="#">
										<p class="item-basic-info">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
									</a>
								</div>
								<div class="info-little">
									<span>颜色：洛阳牡丹</span>
									<span>包装：裸装</span>
								</div>
							</div>
							<div class="item-info">
								<div class="item-ordernumber">
									<span class="info-title">退款编号：</span><a>147478464147</a>
								</div>

								<div class="item-time">
									<span class="info-title">申请时间：</span><span class="time">2015-12-16&nbsp;17:07</span>
								</div>

							</div>
							<div class="clear"></div>
						</div>

						<div class="record-main">
							<div class="detail-list refund-process">
							    <div class="fund-tool">中国农业银行(尾号3361)</div>
								<div class="money">66.00</div>
							</div>
							<div class="clear"></div>
							<!--进度条-->
							<div class="m-progress" style="height: 100px;">
								<div class="m-progress-list">
									<span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">卖家退款 </p>
                                <p class="stage-name">2015-12-21<br>17:38:29</p>
                            </span>
									<span class="step-2 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                <p class="stage-name">银行受理</p>
                                <p class="stage-name">2015-12-21<br>19:38:29</p>
                            </span>
									<span class="step-3 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">3<em class="bg"></em></i>
                                <p class="stage-name">退款成功</p>
                                <p class="stage-name">2015-12-21<br>19:58:29</p>
                            </span>
									<span class="u-progress-placeholder"></span>
								</div>
								<div class="u-progress-bar total-steps-2">
									<div class="u-progress-bar-inner"></div>
								</div>
							</div>
						</div>

					</div>
					<div class="clear"></div>
				</div>

				<!--底部-->
				<jsp:include page="../common/tail.jsp"></jsp:include>
			</div>

			<jsp:include page="../common/InfoMenu.jsp"></jsp:include>
		</div>

	</body>

</html>