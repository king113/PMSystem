
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<c:forEach items="${pmnum2 }" var="pp">
	<head>
		<title>PM2.5 主页</title>
		<!-- custom-theme -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 2);
			}
		</script>
		<!-- //custom-theme -->
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<!-- js -->
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="js/myslideup.js"></script>
		<!-- //js -->
		<link href="css/mislider.css" rel="stylesheet" type="text/css" />
		<link href="css/mislider-custom.css" rel="stylesheet" type="text/css" />
		<!-- font-awesome-icons -->
		<link href="css/font-awesome.css" rel="stylesheet">
		
		<link rel="shortcut icon" href="images/pm25.png">
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=UfGt9nwiQMr1IjOnLGSgAXb8yGmPLAKR"></script>
		<!-- //font-awesome-icons -->
		<link href="googleapis-fonts/fonts.css?family=Bree+Serif&amp;subset=latin-ext" rel="stylesheet" />
		<link href="googleapis-fonts/fonts.css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" rel="stylesheet" type="text/css" />
		<!--
		<script type="text/javascript">
			$(function() {
				
			});
		</script>
	-->
	
	<c:if test="${pp.aqi<=50}">
	<EMBED src="music/brid.mp3" autostart="true" loop="5" width="0" height="0">
	</c:if>
	 <c:if test="${pp.aqi>50 && pp.aqi<=100}">
	<EMBED src="music/bird.mp3" autostart="true" loop="5" volume="50"  width="0" height="0">
	</c:if>
	<c:if test="${pp.aqi>100 && pp.aqi<=150}">
	<EMBED src="music/feng.mp3" autostart="true" loop="5" width="0" height="0">
	</c:if>
	<c:if test="${pp.aqi>150 && pp.aqi<=200}">
	<EMBED src="music/feng.mp3" autostart="true" loop="5" width="0" height="0">
	</c:if>
	<c:if test="${pp.aqi>200 && pp.aqi<=300}">
	<EMBED src="music/feng.mp3" autostart="true" loop="5" width="0" height="0">
	</c:if>
	<c:if test="${pp.aqi>300 && pp.aqi<=500}">
	<EMBED src="music/feng.mp3" autostart="true" loop="5" width="0" height="0">
	</c:if>
	
	</head>

	<body>
		<!-- banner -->
		<div class="banner" id="bg">
			<div class="container">
				<div class="w3_agileits_banner_main_grid">
					<div class="w3_agile_logo">
						<h1><a href="ad_index"><span>PM</span> 2.5<i> 监控系统</i></a></h1>
					</div>
					<div class="agileits_w3layouts_menu">
						<div class="shy-menu">
							<a class="shy-menu-hamburger">
								<span class="layer top"></span>
								<span class="layer mid"></span>
								<span class="layer btm"></span>
							</a>
							<div class="shy-menu-panel">
								<nav class="menu menu--horatio link-effect-8" id="link-effect-8">
									<ul class="w3layouts_menu__list">
										<li class="active">
											<a href="ad_index">主 页</a>
										</li>
										<li>
											<a href="jiance">实时监测</a>
										</li>
										<li>
											<a href="rank">排行榜</a>
										</li>
										<li>
											<a href="gallery">生活小帮手</a>
										</li>
										<li>
											<a href="contact">PM 2.5 防护</a>
										</li>
									</ul>
								</nav>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="w3_banner_info">
					<div class="w3_banner_info_grid" id="localtion">
							
						<div class="col-lg-12">
							<div style="float: left;">
								<h1 class="test" style="color: green">
							当前所在城市：${city }
								</h1>
							</div>
							<div style="float: right;text-align: right;margin-top: -95px;" class="lun">
								<div>
								<ul class="line">
									<li style="margin-top: 0px; color: #5E5E5E;">
										<i class="fa fa-bell-o"></i><a title="霾克星车载霾表——pm2.5检测仪震撼上市" href="#" style="color: green;">霾克星车载霾表——pm2.5检测仪震撼上市)</a> 2010年08月02日 (6)
									</li>
									<li style="margin-top: 0px; color: #5E5E5E;">
										<i class="fa fa-bell-o"></i><a title="杭版“大气十条”落地 明确PM2.5治理目标" href="#" style="color: green;">杭版“大气十条”落地 明确PM2.5治理目标</a> 2010年08月02日
									</li>
									<li style="margin-top: 0px; color: #5E5E5E;">
										<i class="fa fa-bell-o"></i><a title="牡丹江市中小学生“零距离”体验“PM2.5”" href="#" style="color: green;">牡丹江市中小学生“零距离”体验“PM2.5”</a> 2010年08月02日
									</li>
								</ul>
								
								</div>
								<div style="margin-top: 50px;float: left;margin-left: 270px;">
								
									<img src="weathercn02/${wier.img }.png"/>
								</div>
								<div style="float: left;margin-top: 60px;"><font size="4" color="#009900">${wier.weather }</font><br>${wier.temp }°C
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							
							<div style="float: left;">
								<font style="font-size: 60px;" color="green"><b>${pp.aqi } </b>&nbsp;</font>
							</div>
							<div style="float: left;margin-top: 20px;">
								<font size="2">AQI指数</font><br>
								<input type="button" class="btn btn-danger btn-sm" id="wu" style="height: 25px;width:85px;padding: 2px;text-align: center;" value="污染程度" />
							</div>
							<div style="float: left;margin-top: 20px;">
								<div class="btn-group" style="margin-top: 20px;margin-left: 20px">
									<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">${pp.position_name }
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu" style="max-height: 300px;overflow: auto">
										<c:forEach items="${pmnum }" var="pm">
										<li><a href="ad_index2?city=${city }&&jiance=${pm.position_name }">${pm.position_name }</a></li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
						<p style="color: green;">
							PM2.5浓度：${pp.pm2_5 }微克/立方米 <br>击败了全国 42% 的城市，目前城市排名 210
						</p>
						<ul>
							<li>
								<a href="#" class="w3ls_more" data-toggle="modal" data-target="#myModal">切换城市</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="thim-click-to-bottom">
					<a href="#welcome_bottom" class="scroll">
						<i class="fa  fa-chevron-down"></i>
					</a>
				</div>
			</div>
		</div>

		<!-- banner -->

		<!-- bootstrap-pop-up -->

		<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						点击选择地区
						<font size="1">可拖动选择</font>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<section>
						<div class="modal-body">
							<div id="allmap" style="width: 598px;height: 420px;"></div>
						</div>
					</section>
				</div>
			</div>
		</div>

		<!-- //bootstrap-pop-up -->

		<!-- banner-bottom -->

		<div class="banner-bottom">
			<div class="col-md-4 agileits_banner_bottom_left">
				<div class="agileinfo_banner_bottom_pos">
					<div class="w3_agileits_banner_bottom_pos_grid">
						<div class="col-xs-5 wthree_banner_bottom_grid_left">
							<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
								<i class="fa fa-pagelines" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-xs-6 wthree_banner_bottom_grid_right">
							<h4>运动建议</h4>
							<p>室内运动<br> 适当减少室外运动
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="col-md-4 agileits_banner_bottom_left1">
				<div class="agileinfo_banner_bottom_pos">
					<div class="w3_agileits_banner_bottom_pos_grid">
						<div class="col-xs-5 wthree_banner_bottom_grid_left">
							<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
								<i class="fa fa-certificate" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-xs-7 wthree_banner_bottom_grid_right">
							<h4>出行建议</h4>
							<p>
								适合出行<br> 空气清新，适合出行
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="col-md-4 agileits_banner_bottom_left2">
				<div class="agileinfo_banner_bottom_pos">
					<div class="w3_agileits_banner_bottom_pos_grid">
						<div class="col-xs-5 wthree_banner_bottom_grid_left">
							<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
								<i class="fa fa-yelp" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-xs-7 wthree_banner_bottom_grid_right">
							<h4>居家建议</h4>
							<p>开窗通风
								<br> 请减少开窗通风时间
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!-- //banner-bottom -->
		<!-- welcome -->
		<div class="welcome">
			<div class="container">
				<h3 class="agileits_w3layouts_head">健康生活<span>小助手</span></h3>
				<div class="w3_agile_image">
					<img src="images/1.png" alt=" " class="img-responsive" />
				</div>
				<p class="agile_para">根据您所在的地区，为您精心打造，属于您的生活方式</p>
			</div>
			<div class="mis-stage w3_agileits_welcome_grids">
				<!-- The element to select and apply miSlider to - the class is optional -->
				<ol class="mzis-slider">
					<li class="mis-slide">
						<figure style="overflow: hidden;">
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid" >
								<img src="images/2.png" alt=" " class="img-responsive"/>
								<div class="w3layouts_news_grid_pos" style="width: 244px;height: 243px;border-radius: 50%;overflow: hidden;margin-left: 19px;margin-top: 8px;" >
									<div class="wthree_text" align="center">
										<h3 style="margin-top: 20px;">运动指数</h3>
											<div class="wthree_stars">
												<ul>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<p>不适宜运动</p>
									</div>
								</div>
							</div>
						</div>
   							<figcaption>运动指数</figcaption>
						</figure>
					</li>
					<li class="mis-slide">
						<figure>
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid" >
									<img src="images/3.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos" style="width: 244px;height: 243px;border-radius: 50%;overflow: hidden;margin-left: 19px;margin-top: 8px;" >
										<div class="wthree_text" align="center">
										<h3 style="margin-top: 20px;">口罩指数</h3>
											<div class="wthree_stars">
												<ul>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star-half-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<figcaption>口罩指数</figcaption>
						</figure>
					</li>
					<li class="mis-slide">
						<figure>
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid" >
									<img src="images/4.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos" style="width: 244px;height: 243px;border-radius: 50%;overflow: hidden;margin-left: 19px;margin-top: 8px;" >
										<div class="wthree_text" align="center">
										<h3 style="margin-top: 20px;">开窗指数</h3>
											<div class="wthree_stars">
												<ul>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star-half-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<figcaption>开窗指数</figcaption>
						</figure>
					</li>
					<li class="mis-slide">
						<figure>
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid" >
									<img src="images/5.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos" style="width: 244px;height: 243px;border-radius: 50%;overflow: hidden;margin-left: 19px;margin-top: 8px;" >
										<div class="wthree_text" align="center">
										<h3 style="margin-top: 20px;">过敏指数</h3>
										<div class="wthree_stars">
												<ul>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star-half-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<figcaption>过敏指数</figcaption>
						</figure>
					</li>
					<li class="mis-slide">
						<figure>
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid" >
									<img src="images/6.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos" style="width: 238px;height: 231px;border-radius: 50%;overflow: hidden;margin-left: 21px;margin-top: 14px;" >
										<div class="wthree_text" align="center">
										<h3 style="margin-top: 20px;">空气指数</h3>
										<div class="wthree_stars">
												<ul>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star-half-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<figcaption>空气指数</figcaption>
						</figure>
					</li>
					<li class="mis-slide">
						<figure>
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid" >
									<img src="images/7.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos" style="width: 238px;height: 240px;border-radius: 50%;overflow: hidden;margin-left: 21px;margin-top: 8px;" >
										<div class="wthree_text" align="center">
										<h3 style="margin-top: 20px;">出行指数</h3>
											<div class="wthree_stars">
												<ul>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star-half-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<figcaption>出行指数</figcaption>
						</figure>
					</li>
				</ol>
			</div>
		</div>


		<!-- //welcome -->
		<!-- welcome-bottom -->

		<div id="welcome_bottom" class="welcome-bottom">
			<div class="col-md-6 wthree_welcome_bottom_left">
				<h3>芜湖市的各类空气质量 <span>监测</span></h3>
				<p>PM2.5指的是空气动力学当量直径小于或等于2.5微米的颗粒物(可悬浮于空气中的固态和液态的微粒)。</p>
				<div class="col-md-6 wthree_welcome_bottom_left_grid">
					<div class="w3l_social_icon_gridl">
						<img src="images/8.png" alt=" " class="img-responsive" />
					</div>
					<div class="w3l_social_icon_gridr">
						<h4 class="counter">165</h4>
					</div>
					<div class="clearfix"> </div>
					<div class="w3l_social_icon_grid_pos">
						<label> </label>
					</div>
				</div>
				<div class="col-md-6 wthree_welcome_bottom_left_grid">
					<div class="w3l_social_icon_gridl">
						<img src="images/9.png" alt=" " class="img-responsive" />
					</div>
					<div class="w3l_social_icon_gridr">
						<h4 class="counter">154</h4>
					</div>
					<div class="clearfix"> </div>
					<div class="w3l_social_icon_grid_pos">
						<label> </label>
					</div>
				</div>
				<div class="col-md-6 wthree_welcome_bottom_left_grid">
					<div class="w3l_social_icon_gridl">
						<img src="images/10.png" alt=" " class="img-responsive" />
					</div>
					<div class="w3l_social_icon_gridr">
						<h4 class="counter">18</h4>
					</div>
					<div class="clearfix"> </div>
					<div class="w3l_social_icon_grid_pos">
						<label></label>
					</div>
				</div>
				<div class="col-md-6 wthree_welcome_bottom_left_grid">
					<div class="w3l_social_icon_gridl">
						<img src="images/11.png" alt=" " class="img-responsive" />
					</div>
					<div class="w3l_social_icon_gridr">
						<h4 class="counter">34</h4>
					</div>
					<div class="clearfix"> </div>
					<div class="w3l_social_icon_grid_pos">
						<label></label>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-6 wthree_welcome_bottom_right">
				<div class="agileinfo_grid">
					<figure class="agileits_effect_moses">
						<img src="images/4.jpg" alt=" " class="img-responsive" />
						<figcaption>
							<h4>生活 <span><br>贴心小贴士 </span></h4>
							<p>春季适度春捂是保养人体健康的科学方法，尤其是清晨与夜晚，同学们穿衣盖被应该偏多偏厚一些，避免寒邪入侵，有效防止多种传染性疾病。</p>
						</figcaption>
					</figure>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>

		<!-- //welcome-bottom -->

		<!-- news -->

		<div class="welcome">
			<div class="container">
				<h3 class="agileits_w3layouts_head">健康 <span>图文</span> 小常识</h3>
				<div class="w3_agile_image">
					<img src="images/1.png" alt=" " class="img-responsive">
				</div>
				<p class="agile_para">这是我们为您提供的生活小常识，为您的健康生活送上一份关心。</p>
				<div class="w3ls_news_grids">
					<div class="col-md-4 w3ls_news_grid">
						<div class="w3layouts_news_grid">
							<img src="images/pm25.jpg" alt=" " class="img-responsive" style="width: 380px;height: 200px;" />
							<div class="w3layouts_news_grid_pos">
								<div class="wthree_text">
									<h3>PM2.5专题</h3>
								</div>
							</div>
						</div>
						<div class="agileits_w3layouts_news_grid">
							<ul>
								<li><i class="fa fa-calendar" aria-hidden="true"></i>2017/4/24</li>
								<li><i class="fa fa-user" aria-hidden="true"></i>
									<a href="#">管理员</a>
								</li>
							</ul>
							<h4><a href="#" data-toggle="modal" data-target="#myModal">罗汉果泡茶喝可对抗PM2.5</a></h4>
							<p>义大医院辛重毅中医师表示，PM2.5是指空气中直径小于或等于2.5微米的颗粒，大约只有头发直径的28分之1。特别是 PM2.5很容易随着呼吸进入肺部，甚至可能随着血液循环进入身体其他部位，危害人体健康。</p>
						</div>
					</div>
					<div class="col-md-4 w3ls_news_grid">
						<div class="w3layouts_news_grid">
							<img src="images/shenghuo.jpg" alt=" " class="img-responsive" style="width: 380px;height: 200px;" />
							<div class="w3layouts_news_grid_pos">
								<div class="wthree_text">
									<h3>雾霾小贴士</h3></div>
							</div>
						</div>
						<div class="agileits_w3layouts_news_grid">
							<ul>
								<li><i class="fa fa-calendar" aria-hidden="true"></i>2017/4/24</li>
								<li><i class="fa fa-user" aria-hidden="true"></i>
									<a href="#">不详</a>
								</li>
							</ul>
							<h4><a href="#" data-toggle="modal" data-target="#myModal">雾霾易致中风与焦虑 并引发孩子自闭症</a></h4>
							<p>据合众国际社3月25日报道， 往的研究表明，长期暴露在烟尘和雾霾环境中与更高的中风风险之间存在联系，但英国爱丁堡大学研究人员开展的一项新研究是把雾霾天气与中风就医病例增加相关联的首批研究之一。</p>
						</div>
					</div>
					<div class="col-md-4 w3ls_news_grid">
						<div class="w3layouts_news_grid">
							<img src="images/news.png"  class="img-responsive " style="width: 380px;height: 200px; "/>
							
							<div class="w3layouts_news_grid_pos ">
								
								<div class="wthree_text ">
									
									<h3>各地新闻</h3>
								</div>
							</div>
						</div>
						
						<div class="agileits_w3layouts_news_grid ">
							
							<ul>
								<li><i class="fa fa-calendar " aria-hidden="true "></i>2017/4/24</li>
								<li><i class="fa fa-user " aria-hidden="true "></i>
									<a href="# ">管理员</a>
								</li>
							</ul>
							<h4><a href="# " data-toggle="modal " data-target="#myModal ">预计明天33℃ 清明节后有强冷空气</a></h4>
							<p>前天，杭州还是阴阴的天气，偶尔有一点小雨，风里还带着早春的凉意；但是一夜之后，昨天早晨，气温就像搭乘上火箭似的，一个劲地往上冲。 按照杭州市气象台的说法，昨天，热烈的阳光真是来得突然而又凶猛。</p>
						</div>
					</div>
					<div class="clearfix "> </div>
				</div>
			</div>
		</div>

		<!-- //news -->
		
		<!-- newsletter -->
		
		<div class="newsletter ">
			<div class="container ">
				<h3 class="agileits_w3layouts_head agileinfo_head "><span>对我们</span>提出您的建议</h3>
				<div class="w3_agile_image ">
					<img src="images/12.png " alt=" " class="img-responsive ">
				</div>
				<p class="agile_para agileits_para ">我们做的更好就是对您健康生活的更负责。希望您能提出更好的建议。</p>
				<div class="w3ls_news_grids w3ls_newsletter_grids ">
					<form action="# " method="post ">
						<input  name="Your Name " placeholder="您的名称 " type="text" required=" ">
						<input  name="Your Email " placeholder="您的邮箱 " type="email" required=" ">
						<input  type="submit" value="提交 ">
					</form>
				</div>
			</div>
		</div>
		
		<!-- //newsletter -->
		
		<!-- footer -->
		
		<div class="footer ">
			<div class="container ">
				<div class="w3agile_footer_grids ">
					<div class="col-md-3 agileinfo_footer_grid ">
						<div class="agileits_w3layouts_footer_logo ">
							<h2><a href="adindex.html "><span>PM</span>2.5<i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;检测系统</i></a></h2>
						</div>
					</div>
					<div class="col-md-4 agileinfo_footer_grid ">
						<h3><a href="aboutus.html">关于我们</a></h3>
						<h4>联系方式：<span>18856088388</span></h4>
						<p>我们的团队：安徽信息工程学院<span>pm2.5研究小组</span></p>
					</div>
					<div class="col-md-2 agileinfo_footer_grid agileinfo_footer_grid1 ">
						<h3>页面导航</h3>
						<ul class="w3layouts_footer_nav ">
							<li>
								<a href="ad_index"><i class="fa fa-long-arrow-right " aria-hidden="true "></i>主页面</a>
							</li>
							<li>
								<a href="jiance"><i class="fa fa-long-arrow-right " aria-hidden="true "></i>实时监测</a>
							</li>
							<li>
								<a href="rank"><i class="fa fa-long-arrow-right " aria-hidden="true "></i>排行榜</a>
							</li>
							<li>
								<a href="contact"><i class="fa fa-long-arrow-right " aria-hidden="true "></i>生活小帮手</a>
							</li>
							<li>
								<a href="contact"><i class="fa fa-long-arrow-right " aria-hidden="true "></i>PM 2.5 防护</a>
							</li>
						</ul>
					</div>
					<div class="col-md-3 agileinfo_footer_grid ">
						<h3>特殊关注</h3>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img src="images/6.jpg " alt=" " class="img-responsive " style="width: 120px;height: 80px; "/></a>
						</div>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img src="images/2.jpg " alt=" " class="img-responsive " style="width: 120px;height: 80px; "/></a>
						</div>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img src="images/5.jpg " alt=" " class="img-responsive " style="width: 120px;height: 80px; "/></a>
						</div>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img src="images/3.jpg " alt=" " class="img-responsive " style="width: 120px;height: 80px; "/></a>
						</div>
						<div class="clearfix "> </div>
					</div>
					<div class="clearfix "> </div>
				</div>
			</div>
			<div class="w3_agileits_footer_copy ">
				<div class="container ">
				</div>
			</div>
		</div>
		
		<!-- //footer -->
		
		<!-- stats -->
		
		<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
		<script>
			$('.counter').countUp();
		</script>
<!-- //stats -->
<!-- mislider -->
	<script src="js/mislider.js" type="text/javascript"></script>
	<script type="text/javascript">
        jQuery(function ($) {
            var slider = $('.mis-stage').miSlider({
                //  The height of the stage in px. Options: false or positive integer. false = height is calculated using maximum slide heights. Default: false
                stageHeight: 380,
                //  Number of slides visible at one time. Options: false or positive integer. false = Fit as many as possible.  Default: 1
                slidesOnStage: false,
                //  The location of the current slide on the stage. Options: 'left', 'right', 'center'. Defualt: 'left'
                slidePosition: 'center',
                //  The slide to start on. Options: 'beg', 'mid', 'end' or slide number starting at 1 - '1','2','3', etc. Defualt: 'beg'
                slideStart: 'mid',
                //  The relative percentage scaling factor of the current slide - other slides are scaled down. Options: positive number 100 or higher. 100 = No scaling. Defualt: 100
                slideScaling: 150,
                //  The vertical offset of the slide center as a percentage of slide height. Options:  positive or negative number. Neg value = up. Pos value = down. 0 = No offset. Default: 0
                offsetV: -5,
                //  Center slide contents vertically - Boolean. Default: false
                centerV: true,
                //  Opacity of the prev and next button navigation when not transitioning. Options: Number between 0 and 1. 0 (transparent) - 1 (opaque). Default: .5
                navButtonsOpacity: 1
            });
        });
    </script>
<!-- //mislider -->
<!-- text-effect -->
		<script type="text/javascript" src="js/jquery.transit.js"></script> 
		<script type="text/javascript" src="js/jquery.textFx.js"></script> 
		<script type="text/javascript">
			$(document).ready(function() {
					$('.test').textFx({
						type: 'fadeIn',
						iChar: 100,
						iAnim: 1000
					});
			});
		</script>
<!-- //text-effect -->
<!-- menu -->
	<script>
		$(function() {
			
			initDropDowns($("div.shy-menu"));

		});

		function initDropDowns(allMenus) {

			allMenus.children(".shy-menu-hamburger").on("click", function() {
				
				var thisTrigger = jQuery(this),
					thisMenu = thisTrigger.parent(),
					thisPanel = thisTrigger.next();

				if (thisMenu.hasClass("is-open")) {

					thisMenu.removeClass("is-open");

				} else {			
					
					allMenus.removeClass("is-open");	
					thisMenu.addClass("is-open");
					thisPanel.on("click", function(e) {
						e.stopPropagation();
					});
				}
				
				return false;
			});
		}
	</script>
<!-- //menu -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	map.centerAndZoom("兰州",6); 
	map.enableScrollWheelZoom(); 
	var geoc = new BMap.Geocoder();    

	map.addEventListener("click", function(e){        
		var pt = e.point;
		geoc.getLocation(pt, function(rs){
			var addComp = rs.addressComponents;
			window.location.href = "ad_indexl?city=" + addComp.city;
		});        
	});
</script>
<script type="text/javascript">
	var num = ${pp.aqi};
		$(document).ready(function(){
		    if(num <= 50){
		    $('#bg').addClass("bg");
		    $('#wu').addClass("wu");
		    $('#wu').val("优秀");
		    }else if(num>50 && num <=100){
		    $('#bg').addClass("bg1");
		    $('#wu').addClass("wu1");
		    $('#wu').val("良好");
		    }else if(num>100 && num <=150){
		    $('#bg').addClass("bg2");
		    $('#wu').addClass("wu2");
		    $('#wu').val("轻度污染");
		    }else if(num>150 && num <=200){
		    $('#bg').addClass("bg3");
		    $('#wu').addClass("wu3");
		    $('#wu').val("中度污染");
		    }else if(num>200 && num <=300){
		    $('#bg').addClass("bg4");
		    $('#wu').addClass("wu4");
		    $('#wu').val("重度污染");
		    }else if(num>300 && num <=500){
		    $('#bg').addClass("bg5");
		    $('#wu').addClass("wu5");
		    $('#wu').val("严重污染");
		    }else{
		    $('#bg').addClass("bg");
		    $('#wu').addClass("wu");
		    $('#wu').val("污染程度");
		    }
		})
</script>
<script type="text/javascript">
		$(function(){
		$(".line").slideUp();
		});
</script>
	</body>
	</c:forEach>
</html>