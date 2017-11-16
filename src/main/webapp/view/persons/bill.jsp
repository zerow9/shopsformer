<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>个人账单</title>

		<link href="../../frontpage/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../../frontpage/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">
		<link rel="icon" href="../../frontpage/images/picture.ico"/>
		<link href="../../frontpage/css/personal.css" rel="stylesheet" type="text/css">
		<link href="../../frontpage/css/blstyle.css" rel="stylesheet" type="text/css">
		<script src="../../../frontpage/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
	</head>

	<body>
		<!--头 -->
		<jsp:include page="../common2/head.jsp"></jsp:include>

		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-bill">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">账单</strong> / <small>Electronic&nbsp;bill</small></div>
						</div>
						<hr/>

						<div class="ebill-section">
							<div class="ebill-title-section">
								<h2 class="trade-title section-title">
                                                                                                                                     交易
                            <span class="desc">（金额单位：元）</span>
                        </h2>

								<div class=" ng-scope">
									<div class="trade-circle-select  slidedown-">
										<a href="javascript:void(0);" class="current-circle ng-binding">2015/11/01 - 2015/11/30</a>

									</div>
									<span class="title-tag"><i class="num ng-binding">12</i>月</span>
								</div>
							</div>

							<div class="module-income ng-scope">
								<div class="income-slider ">
									<div class="block-income block  fn-left">
										<h3 class="income-title block-title">
                                                                                                          支出
                                      <span class="num ng-binding">
                                              119.80
                                       </span>
                                    <span class="desc ng-binding">
                                           <a href="billlist.jsp">查看支出明细</a>
                                         </span>
                                             </h3>

										<div ng-class="shoppingChart" class="catatory-details  fn-hide shopping">
											<div class="catatory-chart fn-left fn-hide">
												<div class="title">类型</div>
												<ul>


												</ul>
											</div>
											<div class="catatory-detail fn-left">
												<div class="title ng-binding">
													购买商品
												</div>
												<ul>
												
													<li class="ng-scope  delete-false">

														<div class="  ng-scope">
															<a href="#" class="text fn-left " title="呢子大衣">
																<span class="emoji-span ng-binding">呢子大衣</span>
																<span class="amount fn-right ng-binding">349.00</span>
															</a>
														</div>
													</li>

													<li class="ng-scope  delete-false">

														<div class="  ng-scope">
															<a href="#" class="text fn-left " title="金士顿羊年限量版16gU盘">
																<span class="emoji-span ng-binding">金士顿羊年限量版16gU盘</span>
																<span class="amount fn-right ng-binding">39.00</span>
															</a>
														</div>
													</li>

													<li class="ng-scope  delete-false">

														<div class="  ng-scope">
															<a href="#" class="text fn-left " title="呢子大衣">
																<span class="emoji-span ng-binding">呢子大衣</span>
																<span class="amount fn-right ng-binding">349.00</span>
															</a>
														</div>
													</li>

													<li class="ng-scope  delete-false">

														<div class="  ng-scope">
															<a href="#" class="text fn-left " title="金士顿羊年限量版16gU盘">
																<span class="emoji-span ng-binding">金士顿羊年限量版16gU盘</span>
																<span class="amount fn-right ng-binding">39.00</span>
															</a>
														</div>
													</li>

													<li class="ng-scope  delete-false">

														<div class="  ng-scope">
															<a href="#" class="text fn-left " title="呢子大衣">
																<span class="emoji-span ng-binding">呢子大衣</span>
																<span class="amount fn-right ng-binding">349.00</span>
															</a>
														</div>
													</li>

													<li class="ng-scope  delete-false">

														<div class="  ng-scope">
															<a href="#" class="text fn-left " title="羊毛毡底鞋垫">
																<span class="emoji-span ng-binding">羊毛毡底鞋垫</span>
																<span class="amount fn-right ng-binding">9.90</span>
															</a>
														</div>
													</li>

												</ul>
											</div>
										</div>
									</div>
									<div class="block-expense block  fn-left">
										<div class="slide-button right"></div>
									</div>
									<div class="clear"></div>

									<!--收入-->
									<h3 class="expense income-title block-title">
                                                                                                                       收入                                                              
                                      <span class="num ng-binding">
                                              0.00
                                       </span>
                                    <span class="desc ng-binding">
                                           <a href="billlist.jsp">查看收入明细</a>
                                    </span>
                                </h3>
								</div>

								<!--消费走势-->
								<div class="module-consumeTrend inner-module">
									<h3 class="module-title">消费走势</h3>
									<div id="consumeTrend-chart" class="consumeTrend-chart">

									</div>
								</div>

								<!--银行卡使用情况-->

								<div class="module-card inner-module">
									<h3 class="module-title">银行卡使用情况</h3>
									<div class="card-chart valid">
										<div class="cards-carousel">
											<div class="mask">

												<div class="bac fn-left"></div>
												<div class="bank ng-binding" style="background-image: url(../../frontpage/images/combo.png);">中国农业银行</div>
												<div class="details">
													<a>查看详情</a>
												</div>
											</div>
										</div>
										<div class="cards-details">
											<div class="bank-name">
												<div class="name fn-left" style="background-image: url(../../frontpage/images/combo.png);"></div>
												<span class="close fn-right"><a>X</a></span>
											</div>
											<div class="bank-detail">
												<div class="totalin fn-left">
													<span class="fn-left">流入</span>
													<span class="amount fn-right">0.00</span>
												</div>
												<div class="totalout fn-left">
													<span class="fn-left">流出</span>
													<span class="amount fn-right">0.00</span>
												</div>
												<div class="expand fn-left">
													<span class="fn-left">支出</span>
													<span class="amount fn-right">0.00</span>
												</div>
												<div class="withdraw fn-left">
													<span class="fn-left">提现</span>
													<span class="amount fn-right">
							                                0.00
                            						</span>
												</div>
												<div class="recharge fn-left">
													<span class="fn-left">充值</span>
													<span class="amount fn-right">
                                                            0.00
                            						</span>
												</div>

												<div class="refund fn-left">
													<span class="fn-left">银行卡退款</span>
													<span class="amount fn-right ">0.00</span>
												</div>
											</div>
										</div>
									</div>
								</div>

								<script>
									$(document).ready(function (ev) {
								
									    $('.cards-carousel .details').on('click', function (ev) {
								             $('.cards-details').css("display","block");
								             $('.cards-carousel').css("display","none");								 
									    });									   									    
								
									    $('.cards-details .close').on('click', function (ev) {
								             $('.cards-details').css("display","none");
								             $('.cards-carousel').css("display","block");								 
									    });									    
									    									   								    
									});
								</script>

							</div>

						</div>

					</div>
				</div>
				<!--底部-->
				<jsp:include page="../common2/tail.jsp"></jsp:include>

			</div>

			<jsp:include page="../common2/InfoMenu.jsp"></jsp:include>
		</div>

	</body>

</html>