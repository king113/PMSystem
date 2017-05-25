
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport"
			content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;" />
		<title>PM2.5首页</title>
		<link type="text/css" href="layer_mobile/need/layer.css"
			rel="stylesheet" />
		<link type="text/css" href="css/cityPicker.css" rel="stylesheet" />
		<link type="text/css" href="css/index.css" rel="stylesheet" />
		<script type="text/javascript" src="js/Jquery/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="js/Phone/phone.js"></script>
		<script type="text/javascript" src="js/Menu_x/menu_x.js"></script>
		<script type="text/javascript" src="js/TouchSlide/TouchSlide.1.1.js"></script>
		<script type="text/javascript" src="js/City/cityPicker.js"></script>
		<script type="text/javascript" src="layer_mobile/layer.js"></script>
		<script type="text/javascript" src="js/Food/food.js"></script>
		<script type="text/javascript" src="ichartjs/ichart.1.2.1.min.js"></script>
		<link href="css/bootstrap.min.css" rel="stylesheet">
	</head>

	<body
		style="background-image: url(image/bg2.jpg); background-size: 100%; background-repeat: no-repeat;">
		<header class="header">
			<div style="height: 30px; width: 100%;">

			</div>
			<div class="head">
				<div class="city">
					<input type="text" value="${city }" name="city" class="cities"
						onfocus="this.blur()" />
					<i class="fa fa-angle-down"></i>
				</div>
				<script type="text/javascript">
	$(".cities").CityPicker();
	/*window.location.href="ad_indexlph?city="+$(".cities").val();*/
</script>
				<div class="search">
					<div class="icon-sear">
						<img src="image/search.png" />
					</div>
					<input type="text" name="search" value="" placeholder="请输入您要搜索的内容" />
				</div>
				<div class="menu-icon">
					<img src="image/icon-1.png" />
				</div>
			</div>
		</header>
		<!--头部轮播-->
		<div id="carousel" class="carousel" style="border: 0px solid #3D87DC;">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-6 column">
							<div class="row clearfix">
								<div class="col-md-10 column"
									style="margin-left: 30px; margin-top: 15px;">
									<div>
										<h1>
											当前城市：${city }
											<br>
											<small><span class="label label-warning"
												style="width: 80px;">环境质量</span> </small>
										</h1>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-12 column">
									<div class="row clearfix">
										<div class="col-md-6 column">
											<h1 style="margin-left: 30px; font-size: 70px;">
												${avgl }
											</h1>
										</div>
										<div class="col-md-6 column">
											<div class="row clearfix">
												<div class="col-md-12 column" style="margin-top: 30px;">
													<div>
														AQI 指数
													</div>
													<div class="btn-group">
														<button type="button"
															class="btn btn-primary dropdown-toggle"
															data-toggle="dropdown">
															选择监测站
															<span class="caret"></span>
														</button>
														<ul class="dropdown-menu myli" role="menu">
															<c:forEach items="${pmnum }" var="pm">
																<li>
																	<a
																		href="ph_index2?city=${city }&&jiance=${pm.position_name }">${pm.position_name
																		}</a>
																</li>
															</c:forEach>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row clearfix">
										<div class="col-md-12 column">
											<blockquote>
												<p>
													PM2.5浓度：${pml }微克/立方米
												</p>
												<p>
													击败了全国 42% 的城市，目前城市排名 210
												</p>
											</blockquote>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 column">
							<div class="row clearfix">
								<div class="col-md-12 column">
									<div style="margin-top: 90px; margin-left: 130px;">

										<img src="weathercn02/${wier.img }.png" />
									</div>
									<div style="margin-left: 130px;">
										<font size="5" color="#009900">${wier.weather }</font>
										${wier.temp }°C
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<div class="row clearfix">
								<div class="col-md-10 column">

								</div>
								<div class="col-md-2 column">
									最后更新：2017-04-26 14:00
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--头部轮播END-->

		<!-- 主内容 Start -->
		<div id="tabBox1" class="tabBox" style="height: auto;">
			<div class="hd">
				<ul>
					<li>
						<span><img src="image/hot.png" /> </span>
						<a href="javascript:void(0)">实时监测</a>
					</li>
					<li>
						<span><img src="image/news.png" /> </span>
						<a href="javascript:void(0)">历史信息</a>
					</li>
					<li>
						<span><img src="image/shop.png" /> </span>
						<a href="javascript:void(0)">生活帮手</a>
					</li>
					<li>
						<span><img src="image/fan.png" /> </span>
						<a href="javascript:void(0)">PM2.5防护</a>
					</li>
				</ul>
			</div>
			<div class="bd" id="tabBox1-bd">
				<div class="con">
					<!-- 高度自适应需添加外层 -->
					<ul>
						<li>
							<div class="content-head" align="center">
								<h1>
									芜湖各监测点实时数据
								</h1>
							</div>
							<div class="con-detail" style="height: 100px;" align="center">
								<img src="image/1.png" width="60%" />
							</div>
							<div class="con-foot" style="height: auto;">
								<table class="table table-hover table-striped addtab">
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
										<c:forEach items="${pmnum }" var="pm">
											<tr>
												<td>
													${pm.position_name }
												</td>
												<td>
													<button type="button" class="btn btn-xs btn-danger">
														${pm.quality }
													</button>
												</td>
												<td>
													${pm.primary_pollutant }
												</td>
												<td>
													${pm.aqi }
												</td>
												<td>
													${pm2_5 } μg/m³
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</li>
						<li>
							<div class="content-head" align="center">
								<h1>
									芜湖相关数据曲线图
								</h1>
							</div>
							<div class="con-detail" style="height: 100px;" align="center">
								<img src="image/1.png" width="60%" />
							</div>
							<div class="con-foot" style="height: auto; margin-left: -42px;">
								<div id='canvasDiv'></div>
							</div>
						</li>
						<li>
							<div class="content-head"
								style="height: auto; margin-left: -42px;">
								<div id='canvasDiv2'></div>
							</div>
							<div class="con-detail" style="height: auto; margin-left: -42px;">

							</div>
							<div class="con-foot" style="height: auto; margin-left: -42px;">

							</div>
						</li>
						<li>
							<div class="content-head"
								style="height: auto; margin-left: -42px;">
								<div id='canvasDiv3'></div>
							</div>
							<div class="con-detail">

							</div>
							<div class="con-foot" align="center">
							</div>
						</li>
					</ul>
				</div>
				<div class="con">
					<!-- 高度自适应需添加外层 -->
					<ul>
						<li>
							<div class="content-head" align="center">
								<h1>
									芜湖PM2.5历史数据
								</h1>
							</div>
							<div class="con-detail" style="height: 100px;" align="center">
								<img src="image/1.png" width="60%" />
							</div>
							<div class="con-foot" style="height: auto;">
								<table class="table table-hover table-striped addtab">
									<thead>
										<tr style="text-align: center;">
											<th>
												时间
											</thfor (int i = 0; i < 100; i++) {
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
										<%
											for (int i = 0; i < 100; i++) {
										%>
										<tr>
											<td>
												2017/4/26
											</td>
											<td>
												<button type="button" }er">
													轻度污染
												</button>
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
										<%
											}
										%>
									</tbody>
								</table>
							</div>
						</li>
						<li>
							<div clasfor (int i = 1; i < 6; i++) {/div>
							<div class="con-detail">

							</div>
						</li>
					</ul>
				</div>
				<div class="con">
					<!-- 高度自适应需添加外层 -->



				</div>
				<div class="con">
					<!-- 高度自适应需添加外层 -->
					<ul class="rest">
						<%
							for (int i = 1; i < 6; i++) {
						%>
						<li>
							<div class="content-head">
								<span class="con-head"> <img src="image/head.jpg" /> </span>
								<spin class="head-name">保护环境</span>
								<span class="zan"> <img class="zans" src="image/zans.png" />
									<i></i> <a>25</a> </span>
							</div>
							<div class="con-detail">
								<div class="thumbnail high">
									<div class="labimg">
										<img src="images/6<%=i%>.jpg" />
									</div>
									<div class="caption">
										<h3>
											Thumbnail label
										</h3>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam.
											Donec id elit non mi porta gravida at eget metus. Nullam id
								}ltricies vehicula ut id elit.
										</p>
										<p>
											<a class="btn btn-primary" href="shops-detail.html">查看详情</a>
										</p>
									</div>
								</div>
							</div>
							<div class="con-foot">

							</div>

						</li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
		</div>
		<script type="text/javascript">
	TouchSlide({
		slideCell : "#tabBox1",

		endFun : function(i) { //高度自适应
			var bd = document.getElementById("tabBox1-bd");
			bd.parentNode.style.height = bd.children[i].children[0].offsetHeight
					+ "px";
			if (i > 0)
				bd.parentNode.style.transition = "200ms"; //添加动画效果
		}

	});
</script>
		<!-- 主内容代码 End -->

		<!--footer-->
		<div class="footer">
			<a class="active" href="ph_index"> <span><img
						src="image/dining.png" /> </span> <span>主页</span> </a>
			<a href="#"> <span><img src="image/map.png" /> </span> <span>站点信息</span>
			</a>
			<a href="phone_rank"> <span><img src="image/pai.png" /> </span>
				<span>排行榜</span> </a>
			<a href="#"> <span><img src="image/my.png" /> </span> <span>关于我们</span>
			</a>
		</div>
		<!--footer end-->

		<script type="text/javascript">
	var menux = new menuX("#J_MenuX", 3);
</script>
		<script type="text/javascript">
	TouchSlide({
		slideCell : "#carousel",
		titCell : ".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
		mainCell : ".bd ul",
		effect : "left",
		autoPlay : true, //自动播放
		autoPage : true, //自动分页
		switchLoad : "_src" //切换加载，真实图片路径为"_src" 
	});
</script>
		<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
		<script src="https://code.jquery.com/jquery.js"></script>
		<!-- 包括所有已编译的插件 -->
		<script src="js/bootstrap.min.js"></script>

		<script type="text/javascript">
	$(function() {
		var flow = [];
		for ( var x = 0; x < 25; x++) {
			flow.push(Math.floor(117.59051301429025+0.20137697223141868*x-0.00040573583394974303*x*x+0.0000002388649812961838*x*x*x));
		}

		var data = [ {
			name : 'PV',
			value : flow,
			color : '#ec4646',
			line_width : 1
		} ];

		var labels = [ "00", "01", "02", "03", "04", "05", "06", "07", "08",
				"09", "10", "11", "12", "13", "14", "15", "16", "17", "18",
				"19", "20", "21", "22", "23", "" ];

		var chart = new iChart.LineBasic2D(
				{
					render : 'canvasDiv',
					data : data,
					align : 'center',
					title : {
						text : '芜湖市最近24小时PM2.5变化曲线',
						font : '微软雅黑',
						fontsize : 24,
						color : '#b4b4b4'
					},
					subtitle : {
						text : '14:00-16:00PM2.5达到最大值',
						font : '微软雅黑',
						color : '#b4b4b4'
					},
					footnote : {
						text : 'ichartjs.com',
						font : '微软雅黑',
						fontsize : 11,
						fontweight : 600,
						padding : '0 28',
						color : '#b4b4b4'
					},
					width : 740,
					height : 400,
					shadow : true,
					shadow_color : '#202020',
					shadow_blur : 8,
					shadow_offsetx : 0,
					shadow_offsety : 0,
					background_color : '#2e2e2e',
					tip : {
						enable : true,
						shadow : true,
						listeners : {
							//tip:提示框对象、name:数据名称、value:数据值、text:当前文本、i:数据点的索引
							parseText : function(tip, name, value, text, i) {
								return "<span style='color:#005268;font-size:12px;'>"
										+ labels[i]
										+ ":00PM2.5值约:<br/>"
										+ "</span><span style='color:#005268;font-size:20px;'>"
										+ value + "μg/m³ </span>";
							}
						}
					},
					crosshair : {
						enable : true,
						line_color : '#ec4646'
					},
					sub_option : {
						smooth : true,
						label : false,
						hollow : false,
						hollow_inside : false,
						point_size : 8
					},
					coordinate : {
						width : 600,
						height : 260,
						striped_factor : 0.18,
						grid_color : '#4e4e4e',
						axis : {
							color : '#252525',
							width : [ 0, 0, 4, 4 ]
						},
						scale : [ {
							position : 'left',
							start_scale : 0,
							end_scale : 24,
							scale_space : 10,
							scale_size : 2,
							scale_enable : true,
							label : {
								color : '#9d987a',
								font : '微软雅黑',
								fontsize : 11,
								fontweight : 600
							},
							scale_color : '#9f9f9f'
						}, {
							position : 'bottom',
							label : {
								color : '#9d987a',
								font : '微软雅黑',
								fontsize : 11,
								fontweight : 600
							},
							scale_enable : true,
							labels : labels
						} ]
					}
				});
		//利用自定义组件构造左侧说明文本
		chart
				.plugin(new iChart.Custom(
						{
							drawFn : function() {
								//计算位置
								var coo = chart.getCoordinate(), x = coo
										.get('originx'), y = coo.get('originy'), w = coo.width, h = coo.height;
								//在左上侧的位置，渲染一个单位的文字
								chart.target.textAlign('start').textBaseline(
										'bottom').textFont('600 11px 微软雅黑')
										.fillText('PM2.5(μg/m³ )', x - 40,
												y - 12, false, '#9d987a')
										.textBaseline('top').fillText('(时间)',
												x + w + 12, y + h + 10, false,
												'#9d987a');

							}
						}));
		//开始画图
		chart.draw();
	});
</script>

		<script type="text/javascript">
	$(function() {
		var flow = [];
		for ( var i = 0; i < 31; i++) {
			flow.push(Math.floor(Math.random() * (10 + ((i % 16) * 15))) + 10);
		}

		var data = [ {
			name : 'PV',
			value : flow,
			color : '#ec4646',
			line_width : 1
		} ];

		var labels = [ "00", "01", "02", "03", "04", "05", "06", "07", "08",
				"09", "10", "11", "12", "13", "14", "15", "16", "17", "18",
				"19", "20", "21", "22", "23", "24", "25", "26", '27', "28",
				"29" ];

		var chart = new iChart.LineBasic2D(
				{
					render : 'canvasDiv2',
					data : data,
					align : 'center',
					title : {
						text : '芜湖市最近30天PM2.5变化曲线',
						font : '微软雅黑',
						fontsize : 24,
						color : '#b4b4b4'
					},
					subtitle : {
						text : 'PM2.5达到最大值',
						font : '微软雅黑',
						color : '#b4b4b4'
					},
					footnote : {
						text : 'ichartjs.com',
						font : '微软雅黑',
						fontsize : 11,
						fontweight : 600,
						padding : '0 28',
						color : '#b4b4b4'
					},
					width : 740,
					height : 400,
					shadow : true,
					shadow_color : '#202020',
					shadow_blur : 8,
					shadow_offsetx : 0,
					shadow_offsety : 0,
					background_color : '#2e2e2e',
					tip : {
						enable : true,
						shadow : true,
						listeners : {
							//tip:提示框对象、name:数据名称、value:数据值、text:当前文本、i:数据点的索引
							parseText : function(tip, name, value, text, i) {
								return "<span style='color:#005268;font-size:12px;'>"
										+ labels[i]
										+ "日PM2.5值约:<br/>"
										+ "</span><span style='color:#005268;font-size:20px;'>"
										+ value + "μg/m³ </span>";
							}
						}
					},
					crosshair : {
						enable : true,
						line_color : '#ec4646'
					},
					sub_option : {
						smooth : true,
						label : false,
						hollow : false,
						hollow_inside : false,
						point_size : 8
					},
					coordinate : {
						width : 600,
						height : 260,
						striped_factor : 0.18,
						grid_color : '#4e4e4e',
						axis : {
							color : '#252525',
							width : [ 0, 0, 4, 4 ]
						},
						scale : [ {
							position : 'left',
							start_scale : 0,
							end_scale : 24,
							scale_space : 10,
							scale_size : 2,
							scale_enable : true,
							label : {
								color : '#9d987a',
								font : '微软雅黑',
								fontsize : 11,
								fontweight : 600
							},
							scale_color : '#9f9f9f'
						}, {
							position : 'bottom',
							label : {
								color : '#9d987a',
								font : '微软雅黑',
								fontsize : 11,
								fontweight : 600
							},
							scale_enable : true,
							labels : labels
						} ]
					}
				});
		//利用自定义组件构造左侧说明文本
		chart
				.plugin(new iChart.Custom(
						{
							drawFn : function() {
								//计算位置
								var coo = chart.getCoordinate(), x = coo
										.get('originx'), y = coo.get('originy'), w = coo.width, h = coo.height;
								//在左上侧的位置，渲染一个单位的文字
								chart.target.textAlign('start').textBaseline(
										'bottom').textFont('600 11px 微软雅黑')
										.fillText('PM2.5(μg/m³ )', x - 40,
												y - 12, false, '#9d987a')
										.textBaseline('top').fillText('(时间)',
												x + w + 12, y + h + 10, false,
												'#9d987a');

							}
						}));
		//开始画图
		chart.draw();
	});
</script>

		<script type="text/javascript">
	$(function() {
		var flow = [];
		for ( var i = 0; i < 7; i++) {
			flow.push(Math.floor(Math.random() * (10 + ((i % 16) * 15))) + 10);
		}

		var data = [ {
			name : 'PV',
			value : flow,
			color : '#ec4646',
			line_width : 1
		} ];

		var labels = [ "00", "01", "02", "03", "04", "05", "06", "07" ];

		var chart = new iChart.LineBasic2D(
				{
					render : 'canvasDiv3',
					data : data,
					align : 'center',
					title : {
						text : '芜湖市未来7天PM2.5变化曲线',
						font : '微软雅黑',
						fontsize : 24,
						color : '#b4b4b4'
					},
					subtitle : {
						text : 'PM2.5达到最大值',
						font : '微软雅黑',
						color : '#b4b4b4'
					},
					footnote : {
						text : 'ichartjs.com',
						font : '微软雅黑',
						fontsize : 11,
						fontweight : 600,
						padding : '0 28',
						color : '#b4b4b4'
					},
					width : 740,
					height : 400,
					shadow : true,
					shadow_color : '#202020',
					shadow_blur : 8,
					shadow_offsetx : 0,
					shadow_offsety : 0,
					background_color : '#2e2e2e',
					tip : {
						enable : true,
						shadow : true,
						listeners : {
							//tip:提示框对象、name:数据名称、value:数据值、text:当前文本、i:数据点的索引
							parseText : function(tip, name, value, text, i) {
								return "<span style='color:#005268;font-size:12px;'>"
										+ labels[i]
										+ "日PM2.5值约:<br/>"
										+ "</span><span style='color:#005268;font-size:20px;'>"
										+ value + "μg/m³ </span>";
							}
						}
					},
					crosshair : {
						enable : true,
						line_color : '#ec4646'
					},
					sub_option : {
						smooth : true,
						label : false,
						hollow : false,
						hollow_inside : false,
						point_size : 8
					},
					coordinate : {
						width : 600,
						height : 260,
						striped_factor : 0.18,
						grid_color : '#4e4e4e',
						axis : {
							color : '#252525',
							width : [ 0, 0, 4, 4 ]
						},
						scale : [ {
							position : 'left',
							start_scale : 0,
							end_scale : 24,
							scale_space : 10,
							scale_size : 2,
							scale_enable : true,
							label : {
								color : '#9d987a',
								font : '微软雅黑',
								fontsize : 11,
								fontweight : 600
							},
							scale_color : '#9f9f9f'
						}, {
							position : 'bottom',
							label : {
								color : '#9d987a',
								font : '微软雅黑',
								fontsize : 11,
								fontweight : 600
							},
							scale_enable : true,
							labels : labels
						} ]
					}
				});
		//利用自定义组件构造左侧说明文本
		chart
				.plugin(new iChart.Custom(
						{
							drawFn : function() {
								//计算位置
								var coo = chart.getCoordinate(), x = coo
										.get('originx'), y = coo.get('originy'), w = coo.width, h = coo.height;
								//在左上侧的位置，渲染一个单位的文字
								chart.target.textAlign('start').textBaseline(
										'bottom').textFont('600 11px 微软雅黑')
										.fillText('PM2.5(μg/m³ )', x - 40,
												y - 12, false, '#9d987a')
										.textBaseline('top').fillText('(时间)',
												x + w + 12, y + h + 10, false,
												'#9d987a');

							}
						}));
		//开始画图
		chart.draw();
	});
</script>
	</body>

</html>