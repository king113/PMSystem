
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
		<title>实时检测</title>
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
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />

		<script type="text/javascript" src="jqplot.js"></script>
		<!-- font-awesome-icons -->
		<link href="css/font-awesome.css" rel="stylesheet">
		<link rel="shortcut icon" href="images/pm25.png">
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=UfGt9nwiQMr1IjOnLGSgAXb8yGmPLAKR"></script>
		<!-- //font-awesome-icons -->
		<link href="googleapis-fonts/fonts.css?family=Bree+Serif&amp;subset=latin-ext" rel="stylesheet">
		<link href='googleapis-fonts/fonts.css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
		<link href="mycss/mystyle.css"  rel="stylesheet">
	</head>

	<body>
		<!-- banner -->
		<div class="banner2" style="height:370px;">
			<div class="content2">
				<ul class="flexy-menu orange" style="height: 72px;text-align: center">
					<li><img src=""></li>
					<li style="margin-left: 225px;"><a href="ad_index" style="height: 70px;width: 150px"><img src="images/zhuye.png" style="width: 25px;height: 25px"/>
						主页</a></li>
					<li class="active" style="border-bottom:2px solid #000;"><a href="jiance" style="height: 70px;width: 150px"><img src="images/jiance.png"  style="width: 25px;height: 25px"/>实时检测</a></li>
					<li><a href="order" style="height: 70px;width: 150px"><img src="images/pai.png"  style="width: 25px;height: 25px"/>排行榜</a>
					<li><a href="map" style="height: 70px;width: 150px"><img src="images/ditu.png"  style="width: 25px;height: 25px"/>地图分布</a>
					<li><a href="gallery" style="height: 70px;width: 150px"><img src="images/shenghuo.png"  style="width: 25px;height: 25px"/>生活小帮手</a></li>
					<li><a href="contact" style="height: 70px;width: 150px"><img src="images/pm.png"  style="width: 25px;height: 25px"/>PM 2.5 防护</a></li>
				</ul>
			</div>
			<div class="container">
			<div style="margin-top: 0px;">
					<div class="w3_banner_info_grid" id="localtion">
						<div class="col-lg-12">
							<div style="float: left;margin-top:60px">
								<h1 class="test" style="color: green">
							当前所在城市：芜湖市
						</h1>
							</div>
						</div>
						<div class="col-lg-12">
							<div style="float: left;">
								<font style="font-size: 60px;" color="green"><b>65 </b>&nbsp;</font>
							</div>
							<div style="float: left;margin-top: 20px;">
								<font size="2">AQI指数</font><br>
								<input type="button" class="btn btn-danger btn-sm" style="height: 25px;padding: 2px;" value="污染程度" />
							</div>
						</div>
						<ul>
							<li>
								<a href="#" class="w3ls_more" data-toggle="modal" data-target="#myModal">切换城市</a>
							</li>
						</ul>
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
		<!-- breadcrumbs -->
		<div class="breadcrumbs">
			<div class="container">
				<div class="w3layouts_breadcrumbs_left">
					<ul>
						<li><i class="fa fa-home" aria-hidden="true"></i>
							<a href="ad_index">主页</a><span>/</span></li>
						<li><i class="fa fa-cogs" aria-hidden="true"></i>实时检测</li>
					</ul>
				</div>
				<div class="w3layouts_breadcrumbs_right">
					<h2>实时检测</h2>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //breadcrumbs -->
		<!-- services -->
		<div class="welcome">
			<div class="container">
				<h3 class="agileits_w3layouts_head">芜湖各 <span>监测点</span> 实时数据</h3>
				<div class="w3_agile_image">
					<img src="images/1.png" alt=" " class="img-responsive" />
				</div>
				<p class="agile_para">温馨提示： 敏感人群症状易加剧，应避免高强度户外锻炼，外出时做好防护措施。 </p>
				<div class="w3_agile_services_grids">
					<div class="col-md-12 column">
						<div class="tabbable" id="tabs-282123">
							<ul class="nav nav-tabs myadd">
								<li class="active" style="margin-left: 35%;">
									<a href="#panel-79648" data-toggle="tab"><b>中国标准</b></a>
								</li>
								<li>
									<a href="#panel-101511" data-toggle="tab"><b>美国标准</b></a>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="panel-79648">
									<div class="col-md-1 column"></div>
									<div class="col-md-10column">
										<table class="table table-hover table-striped">
											<thead>
												<tr style="text-align: center;">
													<th>
														检测站点
													</th>
													<th>
														空气质量状况
													</th>
													<th>
														首要污染物
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
												<tr>
													<td>
														科创中心
													</td>
													<td>
														<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
													</td>
													<td>
														颗粒物(PM10)
													</td>
													<td>
														123
													</td>
													<td>
														67 μg/m³
													</td>
												</tr>
												<tr>
													<td>
														监测站
													</td>
													<td>
														<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
													</td>
													<td>
														颗粒物(PM10)
													</td>
													<td>
														123
													</td>
													<td>
														67 μg/m³
													</td>
												</tr>
												<tr>
													<td>
														监测站
													</td>
													<td>
														<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
													</td>
													<td>
														颗粒物(PM10)
													</td>
													<td>
														123
													</td>
													<td>
														67 μg/m³
													</td>
												</tr>
												<tr>
													<td>
														监测站
													</td>
													<td>
														<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
													</td>
													<td>
														颗粒物(PM10)
													</td>
													<td>
														123
													</td>
													<td>
														67 μg/m³
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="tab-pane" id="panel-101511">
									<div class="col-md-1 column"></div>
									<div class="col-md-10column">
										<table class="table table-hover table-striped">
											<thead>
												<tr style="text-align: center;">
													<th>
														检测站点
													</th>
													<th>
														空气质量状况
													</th>
													<th>
														首要污染物
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
												<tr>
													<td>
														科创中心
													</td>
													<td>
														<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
													</td>
													<td>
														颗粒物(PM10)
													</td>
													<td>
														142
													</td>
													<td>
														67 μg/m³
													</td>
												</tr>
												<tr class="success">
													<td>
														监测站
													</td>
													<td>
														<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
													</td>
													<td>
														颗粒物(PM10)
													</td>
													<td>
														135
													</td>
													<td>
														67 μg/m³
													</td>
												</tr>
												<tr class="error">
													<td>
														监测站
													</td>
													<td>
														<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
													</td>
													<td>
														颗粒物(PM10)
													</td>
													<td>
														123
													</td>
													<td>
														67 μg/m³
													</td>
												</tr>
												<tr class="warning">
													<td>
														监测站
													</td>
													<td>
														<button type="button" class="btn btn-xs btn-danger">轻度污染</button>
													</td>
													<td>
														颗粒物(PM10)
													</td>
													<td>
														123
													</td>
													<td>
														67 μg/m³
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //services -->
		<!-- services-bottom -->
		<div class="services-bottom">
			<div class="container">
				<h3 class="agileits_w3layouts_head agileinfo_head w3_head"><span>芜湖</span>  空气质量指数(AQI)变化趋势</h3>
				<div class="w3_agile_image">
					<img src="images/17.png" alt=" " class="img-responsive">
				</div>
				<p class="agile_para agileits_para">芜湖 空气质量指数(AQI)变化趋势</p>
				<div class="w3ls_news_grids">
					<div class="col-md-12 w3_agileits_services_bottom_grid">
						<div class="col-md-12 column">
								<h1 style="color: #fff;margin-left: 42%;">最近24小时</h1>
								<div id="chart1" style="color: green;"></div>
								<h1 style="color: #fff;margin-left: 42%;" style="color: green;">最近30天</h1>
								<div id="chart3"></div>
								<h1 style="color: #fff;margin-left: 42%;" style="color: green;">未来七天预测</h1>
								<div id="chart4"></div>
						</div>

					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //services-bottom -->
		<!-- flexSlider -->
		<script defer src="js/jquery.flexslider.js"></script>
		<script type="text/javascript">
			$(window).load(function() {
				$('.flexslider').flexslider({
					animation: "slide",
					start: function(slider) {
						$('body').removeClass('loading');
					}
				});
			});
		</script>
		<!-- //flexSlider -->
		<!-- footer -->
		<div class="footer ">
			<div class="container ">
				<div class="w3agile_footer_grids ">
					<div class="col-md-3 agileinfo_footer_grid ">
						<div class="agileits_w3layouts_footer_logo ">
							<h2><a href="ad_index"><span>PM</span>2.5<i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;检测系统</i></a></h2>
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
		<script type="text/javascript">
			// 百度地图API功能
			var map = new BMap.Map("allmap");
			map.centerAndZoom("兰州", 6);
			map.enableScrollWheelZoom();
			var geoc = new BMap.Geocoder();

			map.addEventListener("click", function(e) {
				var pt = e.point;
				geoc.getLocation(pt, function(rs) {
					var addComp = rs.addressComponents;
					window.location.href = "icons.html?location=" + addComp.city;
				});
			});
		</script>

		<script type="text/javascript">
		
			var data = [
				[64, 78, 79, 59, 46, 132, 135, 62, 113, 94, 83, 67, 65, 87, 68, 85, 134, 125, 119,74,79, 65, 79, 79],
				[64, 78, 89, 54, 36, 120, 115, 69, 98, 96, 75, 54, 69, 87, 89, 96, 113, 145, 109, 89, 98, 48, 87, 95]
			];
			var data_max = 200; //Y轴最大刻度
			var line_title = ["中国标准", "美国标准"]; //曲线名称
			var y_label = "Y"; //Y轴标题
			var x_label = "X"; //X轴标题
			var x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]; //定义X轴刻度值
			var title = " "; //统计图标标题
			j.jqplot.diagram.base("chart1", data, line_title, " ", x, x_label, y_label, data_max, 1);
			var data2 = [
				[64, 78, 89, 54, 36, 120, 115, 69, 98, 96, 75, 54, 69, 87, 89, 96, 113, 145, 109, 89, 98, 48, 87,95,67,86,97,87,67,89],
				[89, 67, 68, 78, 67, 140, 105, 59, 123, 45, 95, 64, 79, 77, 99, 106, 123, 135, 119, 79, 88, 68,77, 85,67,87,56,98,112,89]
			];
			var data_max2 = 200; //Y轴最大刻度
			var line_title2 = ["中国标准", "美国标准"]; //曲线名称
			var y_label2 = "Y"; //Y轴标题
			var x_label2 = "X"; //X轴标题
			var x2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,25,26,27,28,29,30]; //定义X轴刻度值
			var title2 = " "; //统计图标标题
			j.jqplot.diagram.base("chart3", data2, line_title2, " ", x2, x_label2, y_label2, data_max2, 3);
			
				var data = [
				[64, 78, 79, 59, 46, 132, 135],
				[64, 78, 89, 54, 36, 120, 115]
			];
			var data_max = 200; //Y轴最大刻度
			var line_title = ["中国标准", "美国标准"]; //曲线名称
			var y_label = "Y"; //Y轴标题
			var x_label = "X"; //X轴标题
			var x = [1, 2, 3, 4, 5, 6, 7]; //定义X轴刻度值
			var title = " "; //统计图标标题
			j.jqplot.diagram.base("chart4", data, line_title, " ", x, x_label, y_label, data_max, 4);
		</script>
	</body>

</html>