
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
		<title>PM2.5排行榜</title>
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

	<body style="background-image: url(images/pai.jpg); background-size: 100%; background-repeat: no-repeat;">
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
		<div id="carousel2" class="carousel2" style="border: 0px solid #3D87DC;">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-6 column">
							<div class="row clearfix">
								<div class="col-md-10 column"
									style="margin-left: 30px;">
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
						</div>
						<div class="col-md-6 column">
							<div class="row clearfix">
								<div class="col-md-12 column" style="margin-top: 100px;margin-left: 140px">
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
			<div class="bd" id="tabBox1-bd">
				<div class="con">
					<!-- 高度自适应需添加外层 -->
					<ul>
						<li>
							<div class="content-head" align="center">
								<h1>
									全国各地空气质量实时排行
								</h1>
							</div>
							<div class="con-detail" style="height: 100px;" align="center">
								<img src="image/1.png" width="60%" />
							</div>
							<div class="con-foot" style="height: auto;">
								<table class="table table-hover table-striped addtab">
									<thead>
										<tr style="text-align: center;">
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
												<button type="button" class="btn btn-xs btn-danger">
														${rank.aircontion }
												</button>
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
						</li>
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
			<a href="phone_index"> <span><img
						src="image/dining.png" /> </span> <span>主页</span> </a>
			<a href="#"> <span><img src="image/map.png" /> </span> <span>站点信息</span>
			</a>
			<a class="active" href="phone_rank"> <span><img src="image/pai.png" /> </span> <span>排行榜</span>
			</a>
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
		for ( var i = 0; i < 25; i++) {
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
						text : '芜湖市最近30天PM2.5变化曲线',
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
	</body>

</html>