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

	<head>
		<title>排行榜</title>
		<!-- custom-theme -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<!-- //custom-theme -->
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<!-- js -->
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<!-- //js -->
		<!-- font-awesome-icons -->
		<link href="css/font-awesome.css" rel="stylesheet">
		<!-- //font-awesome-icons -->
		<link rel="shortcut icon" href="images/pm25.png">
		<link href="googleapis-fonts/fonts.css?family=Bree+Serif&amp;subset=latin-ext" rel="stylesheet">
		<link href='googleapis-fonts/fonts.css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	</head>

	<body>
		<!-- banner -->
		<div class="banner2">
			<div class="container">
				<div class="w3_agileits_banner_main_grid">
					<div class="w3_agile_logo">
						<h1><a href="ad_index"><span>PM</span> 2.5<i> 监控系统</i></a></h1>
					</div>
					<div class="agile_social_icons_banner">
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
										<li>
											<a href="ad_index">主 页</a>
										</li>
										<li>
											<a href="jiance">实时监测</a>
										</li>
										<li  class="active">
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
				<div style="margin-top: 60px;">
					<div class="w3_banner_info_grid" id="localtion">
						<div class="col-lg-8">
							<h1 class="test" style="color: green">
							国内排行榜
						</h1>
							<p style="color: green;">
								* 限全国已监测空气质量的城市排名
							</p>
						</div>
						<div class="col-lg-4">最新更新时间：2017-04-25 10:00
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- banner -->
		<!-- bootstrap-pop-up -->
		<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						Germinate
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<section>
						<div class="modal-body">
							<img src="images/4.jpg" alt=" " class="img-responsive" />
							<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.
								<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i></p>
						</div>
					</section>
				</div>
			</div>
		</div>
		<!-- //bootstrap-pop-up -->
		<!-- breadcrumbs -->
		<div class="breadcrumbs">
			<div class="container">
				<div class="w3layouts_breadcrumbs_left">
					<ul>
						<li><i class="fa fa-home" aria-hidden="true"></i>
							<a href="ad_index">主页</a><span>/</span></li>
						<li><i class="fa fa-info-circle" aria-hidden="true"></i>排行榜</li>
					</ul>
				</div>
				<div class="w3layouts_breadcrumbs_right">
					<h2>实时排行榜</h2>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //breadcrumbs -->
		<!-- about -->
		<div class="col-md-12 column">
			<div class="tabbable" id="tabs-851447" align="center">
				<ul class="nav nav-tabs myuli">
					<li class="active" style="margin-left: 25%;">
						<a href="#panel-988708" data-toggle="tab"><b>实时排行</b></a>
					</li>
					<li>
						<a href="#panel-194105" data-toggle="tab"><b>昨日排行</b></a>
					</li>
					<li>
						<a href="#panel-194345" data-toggle="tab"><b>前七日排行</b></a>
					</li>
					<li>
						<a href="#panel-194456" data-toggle="tab"><b>上月排行</b></a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-988708">
						<div class="col-md-2 column"></div>
						<div class="col-md-8 column">
							<table class="table table-hover table-striped">
								<thead>
									<tr style="text-align: center;">
										<th>
											排名
										</th>
										<th>
											空气质量状况
										</th>
										<th>
											城市
										</th>
										<th>
											省份
										</th>
										<th>
											AQI
										</th>
										<th>
											PM 2.5 浓度
										</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${orderlist }" var="rank" varStatus="status">
									<tr>
										<td>
											${status.count}
										</td>
										<td>
											<button type="button" class="btn btn-xs btn-danger">${rank.aircontion }</button>
										</td>
										<td>
											${rank.city }
										</td>
										<td>
											${rank.province }
										</td>
										<td>
											${rank.aqi }
										</td>
										<td>
											${rank.pm2 }
										</td>
									</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</div>
					</div>
					<div class="tab-pane" id="panel-194105">
						<div class="col-md-2 column"></div>
						<div class="col-md-8 column">
							<table class="table table-hover table-striped">
								<thead>
									<tr style="text-align: center;">
										<th>
											排名
										</th>
										<th>
											空气质量状况
										</th>
										<th>
											城市
										</th>
										<th>
											省份
										</th>
										<th>
											AQI
										</th>
										<th>
											PM 2.5 浓度
										</th>
									</tr>
								</thead>
								<tbody>
										<%for(int i = 1;i<100;i++){ %>
									<tr>
										<td>
											<%=i %>
										</td>
										<td>
											<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
										</td>
										<td>
											芜湖
										</td>
										<td>
											安徽
										</td>
										<td>
											123
										</td>
										<td>
											67 μg/m³
										</td>
									</tr>
									<%} %>
								</tbody>
							</table>
						</div>
					</div>
					<div class="tab-pane" id="panel-194345">
						<div class="col-md-2 column"></div>
						<div class="col-md-8 column">
							<table class="table table-hover table-striped">
								<thead>
									<tr style="text-align: center;">
										<th>
											排名
										</th>
										<th>
											空气质量状况
										</th>
										<th>
											城市
										</th>
										<th>
											省份
										</th>
										<th>
											AQI
										</th>
										<th>
											PM 2.5 浓度
										</th>
									</tr>
								</thead>
								<tbody>
									<%for(int i = 1;i<100;i++){ %>
									<tr>
										<td>
											<%=i %>
										</td>
										<td>
											<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
										</td>
										<td>
											合肥
										</td>
										<td>
											安徽
										</td>
										<td>
											123
										</td>
										<td>
											67 μg/m³
										</td>
									</tr>
									
								<%} %>
								</tbody>
							</table>
						</div>
					</div>
					<div class="tab-pane" id="panel-194456">
						<div class="col-md-2 column"></div>
						<div class="col-md-8 column">
							<table class="table table-hover table-striped">
								<thead>
									<tr style="text-align: center;">
										<th>
											排名
										</th>
										<th>
											空气质量状况
										</th>
										<th>
											城市
										</th>
										<th>
											省份
										</th>
										<th>
											AQI
										</th>
										<th>
											PM 2.5 浓度
										</th>
									</tr>
								</thead>
								<tbody>
									<%for(int i = 1;i<100;i++){ %>
									<tr>
										<td>
											<%=i %>
										</td>
										<td>
											<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
										</td>
										<td>
											芜湖啊
										</td>
										<td>
											安徽
										</td>
										<td>
											135
										</td>
										<td>
											67 μg/m³
										</td>
									</tr>
									<%} %>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="welcome">
			<div class="container">
				<h3 class="agileits_w3layouts_head">污染程度<span>数据</span>统计</h3>
				<div class="w3_agile_image">
					<img src="images/1.png" alt=" " class="img-responsive" />
				</div>
				<p class="agile_para">* 限全国已监测空气质量的城市空气污染统计</p>
				<div class="w3ls_news_grids">
					<div class="col-md-6 w3_agile_about_grid_left">
						<h3>我们拒绝2.5颗粒，我们要呼吸好空气</h3>
						<p><i>雾霾毒害重重，我们给你支招，这里有最贴心最全面的防护手册，为你的衣食住行支招护航。我们和你一样，热爱生活，热爱自然，期待与你一起关注PM2.5，重视PM2.5，重视我们每天的呼吸！.</i>
						</p>
						<br>
						<div class="col-xs-2 w3_agile_services_grid_left">
							<div class="agile_services_grid_left1 hvr-radial-out"  style="border: 0px;">
								<img src="images/13.png" alt=" " class="img-responsive" />
								
							</div>
						</div>
						<div class="col-xs-2 w3_agile_services_grid_left">
							<div class="agile_services_grid_left1 hvr-radial-out" style="border: 0px;">
								<img src="images/14.png" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-2 w3_agile_services_grid_left">
							<div class="agile_services_grid_left1 hvr-radial-out" style="border: 0px;">
								<img src="images/15.png" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-2 w3_agile_services_grid_left">
							<div class="agile_services_grid_left1 hvr-radial-out" style="border: 0px;">
								<img src="images/16.png" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-2 w3_agile_services_grid_left">
							<div class="agile_services_grid_left1 hvr-radial-out" style="border: 0px;">
								<img src="images/22.png" alt=" " class="img-responsive" />
							</div>
						</div>
					</div>
					<div class="col-md-6 w3_agile_about_grid_right">
						<div class="skillbar" data-percent="1">
							<span class="skillbar-title">严重污染</span>
							<p class="skillbar-bar" style="background: purple;"></p>
							<span class="skill-bar-percent"></span>
						</div>
						<!-- End Skill Bar -->

						<div class="skillbar" data-percent="15">
							<span class="skillbar-title">重度污染</span>
							<p class="skillbar-bar" style="background: darkorchid;"></p>
							<span class="skill-bar-percent"></span>
						</div>
						<!-- End Skill Bar -->

						<div class="skillbar" data-percent="28">
							<span class="skillbar-title">中度污染</span>
							<p class="skillbar-bar" style="background: red;"></p>
							<span class="skill-bar-percent"></span>
						</div>
						<!-- End Skill Bar -->

						<div class="skillbar" data-percent="29">
							<span class="skillbar-title">轻度污染</span>
							<p class="skillbar-bar" style="background: #EC971F;"></p>
							<span class="skill-bar-percent"></span>
						</div>
						<div class="skillbar" data-percent="14">
							<span class="skillbar-title">良好</span>
							<p class="skillbar-bar" style="background: #f5d410;"></p>
							<span class="skill-bar-percent"></span>
						</div>
						<div class="skillbar" data-percent="13">
							<span class="skillbar-title">优秀</span>
							<p class="skillbar-bar" style="background: green;"></p>
							<span class="skill-bar-percent"></span>
						</div>
						<!-- End Skill Bar -->
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //about -->
		<!-- skills -->
		<script src="js/skill.bars.jquery.js"></script>
		<script>
			$(document).ready(function() {

				$('.skillbar').skillBars({
					from: 0,
					speed: 4000,
					interval: 100,
					decimals: 0
				});
			});
		</script>
		<!-- //skills -->
		<!-- about-bottom -->
		<div class="about-bottom">
			<div class="container">
				<h3><span>爱护地球</span>是我们每一个人不可推卸得责任与义务</h3>
				<div class="agileits_w3layouts_learn_more agileits_learn_more hvr-radial-out">
					<a href="#" data-toggle="modal" data-target="#myModal">了解更多</a>
				</div>
			</div>
		</div>
		<!-- //about-bottom -->
		<!-- footer -->
		<div class="footer ">
			<div class="container ">
				<div class="w3agile_footer_grids ">
					<div class="col-md-3 agileinfo_footer_grid ">
						<div class="agileits_w3layouts_footer_logo ">
							<h2><a href="ad_index "><span>PM</span>2.5<i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;检测系统</i></a></h2>
						</div>
					</div>
					<div class="col-md-4 agileinfo_footer_grid ">
						<h3><a href="aboutus">关于我们</a></h3>
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
							<a href="# " data-toggle="modal " data-target="#myModal "><img src="images/6.jpg " alt=" " class="img-responsive " style="width: 120px;height: 80px; " /></a>
						</div>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img src="images/2.jpg " alt=" " class="img-responsive " style="width: 120px;height: 80px; " /></a>
						</div>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img src="images/5.jpg " alt=" " class="img-responsive " style="width: 120px;height: 80px; " /></a>
						</div>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img src="images/3.jpg " alt=" " class="img-responsive " style="width: 120px;height: 80px; " /></a>
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

					if(thisMenu.hasClass("is-open")) {

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
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
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

				$().UItoTop({
					easingType: 'easeOutQuart'
				});

			});
		</script>
		<!-- //here ends scrolling icon -->
	</body>

</html>