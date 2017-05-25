
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
	<script type="text/javascript" charset="utf-8" src="ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="lang/zh-cn/zh-cn.js"></script>
		<!-- //custom-theme -->
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
			media="all" />
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
		<!-- js -->
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="js/myslideup.js"></script>
		<!-- //js -->
		<link href="css/mislider.css" rel="stylesheet" type="text/css" />
		<link href="css/mislider-custom.css" rel="stylesheet" type="text/css" />
		<!-- font-awesome-icons -->
		<link href="css/font-awesome.css" rel="stylesheet">
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=UfGt9nwiQMr1IjOnLGSgAXb8yGmPLAKR"></script>
		<!-- //font-awesome-icons -->

		<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
		<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
		<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
		<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
		<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>

		<style>a.back{display: inline-block;text-decoration: none;color: #fff;margin: 50px auto;padding: 10px 30px;background: #333;font-family: Segoe UI;}</style>
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="js/flexy-menu.js"></script>
		<script type="text/javascript">$(document).ready(function(){$(".flexy-menu").flexymenu({speed: 400});});</script>


		<link rel="shortcut icon" href="images/pm25.png">
		<link href="googleapis-fonts/fonts.css?family=Bree+Serif&amp;subset=latin-ext" rel="stylesheet" />
		<link href="googleapis-fonts/fonts.css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" rel="stylesheet" type="text/css" />
		<c:if test="${avgl<=50}">
			<EMBED src="music/brid.mp3" autostart="true" loop="5" width="0"
				height="0">
		</c:if>
		<c:if test="${avgl>50 && avgl<=100}">
			<EMBED src="music/bird.mp3" autostart="true" loop="5" volume="50"
				width="0" height="0">
		</c:if>
		<c:if test="${avgl>100 && avgl<=150}">
			<EMBED src="music/feng.mp3" autostart="true" loop="5" width="0"
				height="0">
		</c:if>
		<c:if test="${avgl>150 && avgl<=200}">
			<EMBED src="music/feng.mp3" autostart="true" loop="5" width="0"
				height="0">
		</c:if>
		<c:if test="${avgl>200 && avgl<=300}">
			<EMBED src="music/feng.mp3" autostart="true" loop="5" width="0"
				height="0">
		</c:if>
		<c:if test="${avgl>300 && avgl<=500}">
			<EMBED src="music/feng.mp3" autostart="true" loop="5" width="0"
				height="0">
		</c:if>
	<style type="text/css">
		.rotWord span {
			background: url(img/rot.png);
			background-repeat:no-repeat;
			background-size:100%;
			width: 40px;
			height: 40px;
			float: left;
			margin-left: 20px;
		}
		.gai canvas{
			background-color: #25aaff;
		}
		.ye canvas{
			background-image: url("img/ye.jpg");
			background-size: 100%;
		}
		.gaimg img{
			width: 150px;
			height: 150px;
			margin-right: 130px;
		}

		.tianqi{
			position:absolute;
			z-index: -1;top:70px;right: -5px
		}
	</style>
	<link href="mycss/mystyle.css"  rel="stylesheet">
	<script>
function bigImg(x)
{
x.style.right="2px";
}

function normalImg(x)
{
x.style.right="-40px";

}
</script>

			<script type="text/javascript">
				var num = ${avgl };
				$(document).ready(function() {
					if (num <= 50) {
						$('.CursorLayer').addClass("gai");
						$('#wu').addClass("wu");
						$('#wu').val("优秀");
					} else if (num > 50 && num <= 100) {
						$('.CursorLayer').addClass("gai");
						$('#wu').addClass("wu1");
						$('#wu').val("良好");
					} else if (num > 100 && num <= 150) {
						$('.CursorLayer').addClass("gai");
						$('#wu').addClass("wu2");
						$('#wu').val("轻度污染");
					} else if (num > 150 && num <= 200) {
						$('.CursorLayer').addClass("gai");
						$('#wu').addClass("wu3");
						$('#wu').val("中度污染");
					} else if (num > 200 && num <= 300) {
						$('.CursorLayer').addClass("gai");
						$('#wu').addClass("wu4");
						$('#wu').val("重度污染");
					} else if (num > 300 && num <= 500) {
						$('.CursorLayer').addClass("gai");
						$('#wu').addClass("wu5");
						$('#wu').val("严重污染");
					} else {
						$('.CursorLayer').addClass("gai");
						$('#wu').addClass("wu");
						$('#wu').val("污染程度");
					}
				})
			</script>

			<script type="text/javascript" src="js/ThreeWebGL.js"></script>
			<script type="text/javascript" src="js/ThreeExtras.js"></script>

			<script type="text/javascript" src="js/Detector.js"></script>
			<script type="text/javascript" src="js/RequestAnimationFrame.js"></script>
			<script id="vs" type="x-shader/x-vertex">

			varying vec2 vUv;

			void main() {

				vUv = uv;
				gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );

			}

		</script>

			<script id="fs" type="x-shader/x-fragment">

			uniform sampler2D map;

			uniform vec3 fogColor;
			uniform float fogNear;
			uniform float fogFar;

			varying vec2 vUv;

			void main() {

				float depth = gl_FragCoord.z / gl_FragCoord.w;
				float fogFactor = smoothstep( fogNear, fogFar, depth );

				gl_FragColor = texture2D( map, vUv );
				gl_FragColor.w *= pow( gl_FragCoord.z, 20.0 );
				gl_FragColor = mix( gl_FragColor, vec4( fogColor, gl_FragColor.w ), fogFactor );

			}

		</script>
			<link rel="stylesheet" type="text/css" href="data/jquery.datetimepicker.css"/>
			<script src="data/jquery.datetimepicker.js"></script>
	</head>

	<body>
		<div style="position: absolute;right:35px;top:80px;" id="toolbarframe">
		<img src="img/rottok.png" style="width: 210px;height: 177px"/>
			<script>
				$(function() {
					var url = "http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&text=嗨,你好哦,我是智能语音客服机器人,要是有什么问题想知道,点我哦&spd=6";
					var n = new Audio(url);
					n.src = url;
					n.play();
					setTimeout('$("#toolbarframe").show("slow")',100);
					setTimeout('$("#toolbarframe").hide("slow")',7000);
				});
			</script>
		</div>

		<div style="position: fixed; right: 20px; bottom: 60px; z-index: 999;border:0px double #B4B4B4;width: 120px;height: 140px" id="jc">
			<div align="right">
			<a onclick="demo()" style="color: #000;margin-right: 18px">x</a>
				<script>
					function demo(){
						$("#jc").slideUp("slow");
					}
				</script>
			</div>
			<div style="width: 105px;height: 35px;">
				<button class="btn btn-danger btn-sm btn-block">一键检测</button>
			</div>
			<div align="center" style="width: 105px;height: 105px;border-radius: 50%;border:2px double #000;background-color: #FFFFFF;overflow: hidden">
				<img src="images/kefu.gif" style="width: 105px;height: 105px"/>
			</div>
		</div>


		<div id="rot" style="position: fixed; right: -40px; top: 200px; z-index: 999" onmousemove="bigImg(this)" onmouseout="normalImg(this)">
			<a id="modal-842764" href="#modal-container-842764" role="button"
				data-toggle="modal"><img src="img/zhineng.png"
					style="height: 100px;width: 80px" />
			</a>
		</div>

		<div class="modal video-modal fade" id="modal-container-842764"
			tabindex="-1" role="dialog" aria-labelledby="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header" style="height: 50px">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true" style="margin-top: -10px">
							×
						</button>
						<h4 class="modal-title" id="myModalLabel">
							智能客服机器人
						</h4>
					</div>
					<div class="modal-body" style="overflow: auto;width: 100%;">
						<div class="c_center" style="height: 280px;overflow: auto">
							<div class="rotWord">
								<span></span>
									<p>
										嗨i，最近想我了吗？
									</p>
							</div>
				
						</div>
						<script type="text/plain" id="myEditor" style="width:100%;height:100px;overflow: auto" name="text">
 
						</script>
					
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							关闭
						</button>
						<button id="btn" type="button" class="btn btn-primary">
							发送
						</button>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
 							
						 $(function(){
							   text.focus();
						   });
						var config = {
						   toolbars:[['undo', 'redo','cleardoc']]
						      ,elementPathEnabled : false

				        //wordCount
				        		,wordCount:false   
						  };
						   
						   var text = UE.getEditor('myEditor',config);
						  
						   function action(){
							   if(text.getContentTxt()==null||text.getContentTxt()==""){
								   text.focus();
								   return;
							   }
							   
							   
							   $(".c_center").append("<div class='mWord'><span></span><p> "+ text.getContentTxt() + "</p></div>");
						       $(".c_center").scrollTop(100000000);
						      
						       $.ajax({
						    	  type: "POST",
						          url: "rot",
						          data: {"text":text.getContentTxt()},
						          success: function(data){
						        	var result = $.parseJSON(data).text;
						        	$(".c_center").append("<div class='rotWord'><span></span><p > "+ result + "</p></div>");
						        	 $(".c_center").scrollTop(100000000);
						        	/*  result = result.replace(/\s+/g,",");  //去除空格 */
						        	
						        var url = "http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&text=" + encodeURI(result)+"&spd=5";
						        var n = new Audio(url);
						        n.src= url;
						        n.play();
						        	
						            /* var url = "fanyi.baidu.com/gettts?lan=zh&text="+ result +"&spd=5&source=web";
						        	 var obj = "<audio src="+ url +" autoplay ></audio>";
						        	 $("body").append(obj); */
						          } 
						       });
						       text.setContent("");
						       text.focus();
						       
						       
						       
						      
						
						       }
						       
						                    //按钮绑定
						       $("#btn").click(function(){
						    	   action();
						       });
						    	            //键盘响应
						       $(document).keydown(function(event){
						    	   if(event.keyCode==13){
						    		   action();
						    	   }
						       });
						          text.addListener("keydown",function(type,event){
								   //判断是不是enter
								   if(event.keyCode==13){
								    
								     action();
								    
								   }
								  })
						</script>
		<!-- banner -->

		<div class="banner" id="bg">

			<div class="content">
				<ul class="flexy-menu orange" style="height: 72px;text-align: center;">
					<li><img src=""></li>
					<li class="active" style="margin-left: 225px;border-bottom:2px solid #000;"><a href="ad_index" style="height: 70px;width: 150px"><img src="images/zhuye.png" style="width: 25px;height: 25px"/>
					主页</a></li>
					<li><a href="jiance" style="height: 70px;width: 150px"><img src="images/jiance.png"  style="width: 25px;height: 25px"/>实时检测</a></li>
					<li><a href="order" style="height: 70px;width: 150px"><img src="images/pai.png"  style="width: 25px;height: 25px"/>排行榜</a>
					<li><a href="map" style="height: 70px;width: 150px"><img src="images/ditu.png"  style="width: 25px;height: 25px"/>地图分布</a>
					<li><a href="gallery" style="height: 70px;width: 150px"><img src="images/shenghuo.png"  style="width: 25px;height: 25px"/>生活小帮手</a></li>
					<li><a href="contact" style="height: 70px;width: 150px"><img src="images/pm.png"  style="width: 25px;height: 25px"/>PM 2.5 防护</a></li>
				</ul>
			</div>
			<div class="container">

				<div class="w3_banner_info">
					<div class="w3_banner_info_grid" id="localtion" style="margin-top: -80px">
						<div class="col-lg-12">
							<div style="float: left;">
								<h1 class="test" style="color: #f6f1ff;font-size: 45px;font-weight:bold;">
									<b><p id="newcity">当前所在城市：${city }</p></b>
								</h1>
							</div>
							<div style="float: right; text-align: right;">
								<div style="margin-top: 50px; float: left;">
									<img src="weathercn02/${wier.img }.png" />
								</div>
								<div style="float: left; margin-top: 60px;margin-right: 120px;">
									<font size="4" color="#75746f">${wier.weather }</font>
									<br>
									${wier.temp }°C
								</div>

							</div>
							<div style="position: absolute;top:220px;right:40px;z-index: 99">
								<input type="text" id="datetimepicker3"/>
								<input type="hidden" id="city" value="${city }">
								<script>
									$('#datetimepicker3').datetimepicker({
										formatDate:'YYYY-MM-DD',
										inline:true,
										onSelectTime:function() {
											$.ajax({
												type: "POST",
												url: "date",
												data: {"time":$('#datetimepicker3').val(),"city":$('#city').val()},
												success: function (data) {
													var num = eval(data)[0].aqi;
													var pm2 = eval(data)[0].pm2;
													$('#newaqi').html(num);
													$('#pm2').html("PM2.5浓度："+pm2+"微克/立方米"+"<br>击败了全国 42% 的城市，目前城市排名 210");
													if (num <= 50) {
														$('.CursorLayer').addClass("gai");
														$('#wu').addClass("wu");
														$('#wu').val("优秀");
													} else if (num > 50 && num <= 100) {
														$('.CursorLayer').addClass("gai");
														$('#wu').addClass("wu1");
														$('#wu').val("良好");
													} else if (num > 100 && num <= 150) {
														$('.CursorLayer').addClass("gai");
														$('#wu').addClass("wu2");
														$('#wu').val("轻度污染");
													} else if (num > 150 && num <= 200) {
														$('.CursorLayer').addClass("gai");
														$('#wu').addClass("wu3");
														$('#wu').val("中度污染");
													} else if (num > 200 && num <= 300) {
														$('.CursorLayer').addClass("gai");
														$('#wu').addClass("wu4");
														$('#wu').val("重度污染");
													} else if (num > 300 && num <= 500) {
														$('.CursorLayer').addClass("gai");
														$('#wu').addClass("wu5");
														$('#wu').val("严重污染");
													} else {
														$('.CursorLayer').addClass("gai");
														$('#wu').addClass("wu");
														$('#wu').val("污染程度");
													}
												}
											});
										}
									});

								</script>
							</div>
						</div>
						<div class="col-lg-12">
							<div style="float: left;">
								<font style="font-size: 60px;" color="#75746f" id="newaqi"><b>${avgl
										}</b>&nbsp;</font>
							</div>
							<div style="float: left; margin-top: 20px;">
								<font size="2" color="#75746f" >AQI指数</font>
								<br>
								<input type="button" class="btn btn-danger btn-sm" id="wu"
									style="height: 25px; width: 85px; padding: 2px; text-align: center;"
									value="污染程度" />
							</div>
							<div style="float: left; margin-top: 20px;">
								<div class="btn-group"
									style="margin-top: 20px; margin-left: 20px">
									<button type="button" class="btn btn-success dropdown-toggle"
										data-toggle="dropdown">
										更换监测点
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu"
										style="max-height: 300px; overflow: auto">
										<c:forEach items="${pmnum }" var="pm">
											<li>
												<a
													href="ad_index2?city=${city }&&jiance=${pm.position_name }">${pm.position_name
													}</a>
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
						<p style="color: #75746f;" id="pm2">
							PM2.5浓度：${pml }微克/立方米
							<br>
							击败了全国 42% 的城市，目前城市排名 210
						</p>
						<ul>
							<li>
								<a href="#" class="w3ls_more" data-toggle="modal"
									data-target="#myModal">切换城市</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="thim-click-to-bottom">
					<a href="#welcome_bottom" class="scroll"> <i
						class="fa  fa-chevron-down"></i> </a>
				</div>
			</div>
			<script type="text/javascript">


				if ( ! Detector.webgl ) Detector.addGetWebGLMessage();

				// Bg gradient

				var canvas = document.createElement( 'canvas' );
				canvas.width = 32;
				canvas.height = window.innerHeight;

				var context = canvas.getContext( '2d' );

				var gradient = context.createLinearGradient( 0, 0, 0, canvas.height );
				gradient.addColorStop(0, "#1e4877");
				gradient.addColorStop(0.5, "#4584b4");

				context.fillStyle = gradient;
				context.fillRect(0, 0, canvas.width, canvas.height);

				// Clouds

				var container;
				var camera, scene, renderer, sky, mesh, geometry, material,
						i, h, color, colors = [], sprite, size, x, y, z;

				var mouseX = 0, mouseY = 0;
				var start_time = new Date().getTime();

				var windowHalfX = window.innerWidth / 2;
				var windowHalfY = window.innerHeight / 2;

				init();
				animate();

				function init() {

					container = document.createElement( 'div' );
					container.className = "CursorLayer";
					document.body.appendChild( container );

					camera = new THREE.Camera( 30, window.innerWidth / window.innerHeight, 1, 3000 );
					camera.position.z = 6000;

					scene = new THREE.Scene();

					geometry = new THREE.Geometry();
					var date = new Date();
					var time = date.toLocaleTimeString();
					var texture;
					if(time<'18:00:00'&&time>'06:00:00'){
						texture = THREE.ImageUtils.loadTexture( 'cloud10.png' );
						$(".CursorLayer").after('<div align="right" class="tianqi"><img id="img_id" src="img/sun.png"/></div>');
					}else{
						texture = THREE.ImageUtils.loadTexture( 'cloud11.png' );
						$(".CursorLayer").addClass("ye");
						$(".CursorLayer").after('<div align="right" class="tianqi" ></div>');
					}

					texture.magFilter = THREE.LinearMipMapLinearFilter;
					texture.minFilter = THREE.LinearMipMapLinearFilter;

					var fog = new THREE.Fog( 0x4584b4, - 100, 3000 );

					material = new THREE.MeshShaderMaterial( {

						uniforms: {

							"map": { type: "t", value:2, texture: texture },
							"fogColor" : { type: "c", value: fog.color },
							"fogNear" : { type: "f", value: fog.near },
							"fogFar" : { type: "f", value: fog.far },

						},
						vertexShader: document.getElementById( 'vs' ).textContent,
						fragmentShader: document.getElementById( 'fs' ).textContent,
						depthTest: false

					} );

					var plane = new THREE.Mesh( new THREE.Plane( 64, 64 ) );

					for ( i = 0; i < 8000; i++ ) {

						plane.position.x = Math.random() * 1000 - 500;
						plane.position.y = - Math.random() * Math.random() * 200 - 15;
						plane.position.z = i;
						plane.rotation.z = Math.random() * Math.PI;
						plane.scale.x = plane.scale.y = Math.random() * Math.random() * 1.5 + 0.5;

						GeometryUtils.merge( geometry, plane );

					}

					mesh = new THREE.Mesh( geometry, material );
					scene.addObject( mesh );

					mesh = new THREE.Mesh( geometry, material );
					mesh.position.z = - 8000;
					scene.addObject( mesh );

					renderer = new THREE.WebGLRenderer( { antialias: false } );
					renderer.setSize( window.innerWidth, window.innerHeight );
					container.appendChild( renderer.domElement );

					document.addEventListener( 'mousemove', onDocumentMouseMove, false );
					window.addEventListener( 'resize', onWindowResize, false );

				}

				function onDocumentMouseMove( event ) {

					mouseX = ( event.clientX - windowHalfX ) * 0.25;
					mouseY = ( event.clientY - windowHalfY ) * 0.15;

				}

				function onWindowResize( event ) {

					camera.aspect = window.innerWidth / window.innerHeight;
					camera.updateProjectionMatrix();

					renderer.setSize( window.innerWidth, window.innerHeight );

				}

				function animate() {

					requestAnimationFrame( animate );
					render();

				}

				function render() {

					position = ( ( new Date().getTime() - start_time ) * 0.03 ) % 8000;

					camera.position.x += ( mouseX - camera.target.position.x ) * 0.01;
					camera.position.y += ( - mouseY - camera.target.position.y ) * 0.01;
					camera.position.z = - position + 8000;

					camera.target.position.x = camera.position.x;
					camera.target.position.y = camera.position.y;
					camera.target.position.z = camera.position.z - 1000;

					renderer.render( scene, camera );

				}

			</script>

		</div>

		<!-- banner -->

		<!-- bootstrap-pop-up -->

		<div class="modal video-modal fade" id="myModal" tabindex="-1"
			role="dialog" aria-labelledby="myModal" style="margin-top: 77px">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						点击选择地区
						<font size="1">可拖动选择</font>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<section>
						<div class="modal-body">
							<div id="allmap" style="width: 598px; height: 420px;"></div>
						</div>
					</section>
				</div>
			</div>
		</div>

		<!-- //bootstrap-pop-up -->
		<!-- welcome -->

<%--		<div class="banner-bottom">
			<div class="col-md-4 agileits_banner_bottom_left">
				<div class="agileinfo_banner_bottom_pos">
					<div class="w3_agileits_banner_bottom_pos_grid">
						<div class="col-xs-5 wthree_banner_bottom_grid_left">
							<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
								<i class="fa fa-pagelines" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-xs-6 wthree_banner_bottom_grid_right">
							<h4>
								运动建议
							</h4>
							<p>
								室内运动
								<br>
								适当减少室外运动
							</p>
						</div>
						<div class="clearfix">
						</div>
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
							<h4>
								出行建议
							</h4>
							<p>
								适合出行
								<br>
								空气清新，适合出行
							</p>
						</div>
						<div class="clearfix">
						</div>
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
							<h4>
								居家建议
							</h4>
							<p>
								开窗通风
								<br>
								请减少开窗通风时间
							</p>
						</div>
						<div class="clearfix">
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix">
			</div>
		</div>--%>
		<!-- //banner-bottom -->
		<!-- welcome -->
		<div class="welcome">
			<div class="container">
				<h3 class="agileits_w3layouts_head">
					健康生活
					<span>小助手</span>
				</h3>
				<div class="w3_agile_image">
					<img src="images/1.png" alt=" " class="img-responsive" />
				</div>
				<p class="agile_para">
					根据您所在的地区，为您精心打造，属于您的生活方式
				</p>
			</div>
			<div class="mis-stage w3_agileits_welcome_grids">
				<!-- The element to select and apply miSlider to - the class is optional -->
				<ol class="mzis-slider">
					<li class="mis-slide">
						<figure style="overflow: hidden;">
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid">
									<img src="images/2.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos"
										style="width: 244px; height: 243px; border-radius: 50%; overflow: hidden; margin-left: 19px; margin-top: 8px;">
										<div class="wthree_text" align="center">
											<h3 style="margin-top: 20px;">
												运动指数
											</h3>
											<div class="wthree_stars">
												<ul>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star-o"></i>
													</li>
													<li>
														<i class="fa fa-star-o"></i>
													</li>
													<li>
														<i class="fa fa-star-o"></i>
													</li>
												</ul>
											</div>
											<p>
												不适宜运动
											</p>
										</div>
									</div>
								</div>
							</div>
							<figcaption>
								运动指数
							</figcaption>
						</figure>
					</li>
					<li class="mis-slide">
						<figure>
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid">
									<img src="images/3.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos"
										style="width: 244px; height: 243px; border-radius: 50%; overflow: hidden; margin-left: 19px; margin-top: 8px;">
										<div class="wthree_text" align="center">
											<h3 style="margin-top: 20px;">
												口罩指数
											</h3>
											<div class="wthree_stars">
												<ul>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star-half-o"></i>
													</li>
													<li>
														<i class="fa fa-star-o"></i>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<figcaption>
								口罩指数
							</figcaption>
						</figure>
					</li>
					<li class="mis-slide">
						<figure>
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid">
									<img src="images/4.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos"
										style="width: 244px; height: 243px; border-radius: 50%; overflow: hidden; margin-left: 19px; margin-top: 8px;">
										<div class="wthree_text" align="center">
											<h3 style="margin-top: 20px;">
												开窗指数
											</h3>
											<div class="wthree_stars">
												<ul>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star-half-o"></i>
													</li>
													<li>
														<i class="fa fa-star-o"></i>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<figcaption>
								开窗指数
							</figcaption>
						</figure>
					</li>
					<li class="mis-slide">
						<figure>
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid">
									<img src="images/5.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos"
										style="width: 244px; height: 243px; border-radius: 50%; overflow: hidden; margin-left: 19px; margin-top: 8px;">
										<div class="wthree_text" align="center">
											<h3 style="margin-top: 20px;">
												过敏指数
											</h3>
											<div class="wthree_stars">
												<ul>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star-half-o"></i>
													</li>
													<li>
														<i class="fa fa-star-o"></i>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<figcaption>
								过敏指数
							</figcaption>
						</figure>
					</li>
					<li class="mis-slide">
						<figure>
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid">
									<img src="images/6.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos"
										style="width: 238px; height: 231px; border-radius: 50%; overflow: hidden; margin-left: 21px; margin-top: 14px;">
										<div class="wthree_text" align="center">
											<h3 style="margin-top: 20px;">
												空气指数
											</h3>
											<div class="wthree_stars">
												<ul>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star-half-o"></i>
													</li>
													<li>
														<i class="fa fa-star-o"></i>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<figcaption>
								空气指数
							</figcaption>
						</figure>
					</li>
					<li class="mis-slide">
						<figure>
							<div class="w3ls_news_grid" style="overflow: hidden;">
								<div class="w3layouts_news_grid">
									<img src="images/7.png" alt=" " class="img-responsive" />
									<div class="w3layouts_news_grid_pos"
										style="width: 238px; height: 240px; border-radius: 50%; overflow: hidden; margin-left: 21px; margin-top: 8px;">
										<div class="wthree_text" align="center">
											<h3 style="margin-top: 20px;">
												出行指数
											</h3>
											<div class="wthree_stars">
												<ul>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star"></i>
													</li>
													<li>
														<i class="fa fa-star-half-o"></i>
													</li>
													<li>
														<i class="fa fa-star-o"></i>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<figcaption>
								出行指数
							</figcaption>
						</figure>
					</li>
				</ol>
			</div>
		</div>

		<!-- //welcome -->
		<!-- welcome-bottom -->

		<div id="welcome_bottom" class="welcome-bottom">
			<div class="col-md-6 wthree_welcome_bottom_left">
				<h3>
					芜湖市的各类空气质量
					<span>监测</span>
				</h3>
				<p>
					PM2.5指的是空气动力学当量直径小于或等于2.5微米的颗粒物(可悬浮于空气中的固态和液态的微粒)。
				</p>
				<div class="col-md-6 wthree_welcome_bottom_left_grid">
					<div class="w3l_social_icon_gridl">
						<img src="images/8.png" alt=" " class="img-responsive" />
					</div>
					<div class="w3l_social_icon_gridr">
						<h4 class="counter">
							165
						</h4>
					</div>
					<div class="clearfix">
					</div>
					<div class="w3l_social_icon_grid_pos">
						<label>
						</label>
					</div>
				</div>
				<div class="col-md-6 wthree_welcome_bottom_left_grid">
					<div class="w3l_social_icon_gridl">
						<img src="images/9.png" alt=" " class="img-responsive" />
					</div>
					<div class="w3l_social_icon_gridr">
						<h4 class="counter">
							154
						</h4>
					</div>
					<div class="clearfix">
					</div>
					<div class="w3l_social_icon_grid_pos">
						<label>
						</label>
					</div>
				</div>
				<div class="col-md-6 wthree_welcome_bottom_left_grid">
					<div class="w3l_social_icon_gridl">
						<img src="images/10.png" alt=" " class="img-responsive" />
					</div>
					<div class="w3l_social_icon_gridr">
						<h4 class="counter">
							18
						</h4>
					</div>
					<div class="clearfix">
					</div>
					<div class="w3l_social_icon_grid_pos">
						<label></label>
					</div>
				</div>
				<div class="col-md-6 wthree_welcome_bottom_left_grid">
					<div class="w3l_social_icon_gridl">
						<img src="images/11.png" alt=" " class="img-responsive" />
					</div>
					<div class="w3l_social_icon_gridr">
						<h4 class="counter">
							36
						</h4>
					</div>
					<div class="clearfix">
					</div>
					<div class="w3l_social_icon_grid_pos">
						<label></label>
					</div>
				</div>
				<div class="clearfix">
				</div>
			</div>

			<div class="col-md-6 wthree_welcome_bottom_right" style="height: 437px" id="main">


			</div>

			<script type="text/javascript">
				var data = ${array };
				var dom = document.getElementById("main");
				var myChart = echarts.init(dom);
				var app = {};
				var option = null;
				var geoCoordMap = {
					'海门':[121.15,31.89],
					'鄂尔多斯':[109.781327,39.608266],
					'招远':[120.38,37.35],
					'舟山':[122.207216,29.985295],
					'齐齐哈尔':[123.97,47.33],
					'盐城':[120.13,33.38],
					'赤峰':[118.87,42.28],
					'青岛':[120.33,36.07],
					'乳山':[121.52,36.89],
					'金昌':[102.188043,38.520089],
					'泉州':[118.58,24.93],
					'佳木斯':[130.284735,46.81378],
					'双鸭山':[131.171402,46.655102],
					'崇左':[107.357322,22.415455],
					'铜仁':[109.196161,27.726271],
					'宁德':[119.52,26.65],
					'莆田':[119.01,24.26 ],
					'丽江':[100.229628,26.875351],
					'莱西':[120.53,36.86],
					'日照':[119.46,35.42],
					'胶南':[119.97,35.88],
					'南通':[121.05,32.08],
					'拉萨':[91.11,29.97],
					'云浮':[112.02,22.93],
					'梅州':[116.1,24.55],
					'文登':[122.05,37.2],
					'上海':[121.48,31.22],
					'攀枝花':[101.718637,26.582347],
					'威海':[122.1,37.5],
					'承德':[117.93,40.97],
					'厦门':[118.1,24.46],
					'昌吉州':[87.296038,44.007058],
					'汕尾':[115.375279,22.786211],
					'潮州':[116.63,23.68],
					'丹东':[124.37,40.13],
					'太仓':[121.1,31.45],
					'曲靖':[103.79,25.51],
					'烟台':[121.39,37.52],
					'福州':[119.3,26.08],
					'瓦房店':[121.979603,39.627114],
					'即墨':[120.45,36.38],
					'抚顺':[123.97,41.97],
					'玉溪':[102.52,24.35],
					'张家口':[114.87,40.82],
					'阳泉':[113.57,37.85],
					'莱州':[119.942327,37.177017],
					'湖州':[120.1,30.86],
					'汕头':[116.69,23.39],
					'昆山':[120.95,31.39],
					'宁波':[121.56,29.86],
					'湛江':[110.359377,21.270708],
					'揭阳':[116.35,23.55],
					'荣成':[122.41,37.16],
					'连云港':[119.16,34.59],
					'葫芦岛':[120.836932,40.711052],
					'常熟':[120.74,31.64],
					'东莞':[113.75,23.04],
					'河源':[114.68,23.73],
					'淮安':[119.15,33.5],
					'泰州':[119.9,32.49],
					'南宁':[108.33,22.84],
					'营口':[122.18,40.65],
					'惠州':[114.4,23.09],
					'江阴':[120.26,31.91],
					'蓬莱':[120.75,37.8],
					'韶关':[113.62,24.84],
					'嘉峪关':[98.289152,39.77313],
					'广州':[113.23,23.16],
					'延安':[109.47,36.6],
					'太原':[112.53,37.87],
					'清远':[113.01,23.7],
					'中山':[113.38,22.52],
					'昆明':[102.73,25.04],
					'寿光':[118.73,36.86],
					'玉树州':[97.013316,33.00624],
					'盘锦':[122.070714,41.119997],
					'长治':[113.08,36.18],
					'深圳':[114.07,22.62],
					'珠海':[113.52,22.3],
					'宿迁':[118.3,33.96],
					'咸阳':[108.72,34.36],
					'铜川':[109.11,35.09],
					'平度':[119.97,36.77],
					'佛山':[113.11,23.05],
					'海口':[110.35,20.02],
					'文山州':[104.55186,23.906048],
					'江门':[113.06,22.61],
					'章丘':[117.53,36.72],
					'肇庆':[112.44,23.05],
					'大连':[121.62,38.92],
					'临汾':[111.5,36.08],
					'吴江':[120.63,31.16],
					'石嘴山':[106.39,39.04],
					'沈阳':[123.38,41.8],
					'苏州':[120.62,31.32],
					'茂名':[110.88,21.68],
					'嘉兴':[120.76,30.77],
					'长春':[125.35,43.88],
					'胶州':[120.03336,36.264622],
					'银川':[106.27,38.47],
					'张家港':[120.555821,31.875428],
					'三门峡':[111.19,34.76],
					'锦州':[121.15,41.13],
					'南昌':[115.89,28.68],
					'柳州':[109.4,24.33],
					'三亚':[109.511909,18.252847],
					'黔东南州':[107.985353,26.583992],
					'黔南州':[107.523205,26.264536],
					'黔西南州':[104.900558,25.095148],
					'绥化':[126.989095,46.646064],
					'自贡':[104.778442,29.33903],
					'吉林':[126.57,43.87],
					'阳江':[111.95,21.85],
					'泸州':[105.39,28.91],
					'西宁':[101.74,36.56],
					'宜宾':[104.56,29.77],
					'呼和浩特':[111.65,40.82],
					'成都':[104.06,30.67],
					'大同':[113.3,40.12],
					'镇江':[119.44,32.2],
					'桂林':[110.28,25.29],
					'张家界':[110.479191,29.117096],
					'宜兴':[119.82,31.36],
					'北海':[109.12,21.49],
					'西安':[108.95,34.27],
					'金坛':[119.56,31.74],
					'东营':[118.49,37.46],
					'牡丹江':[129.58,44.6],
					'遵义':[106.9,27.7],
					'绍兴':[120.58,30.01],
					'扬州':[119.42,32.39],
					'常州':[119.95,31.79],
					'潍坊':[119.1,36.62],
					'重庆':[106.54,29.59],
					'台州':[121.420757,28.656386],
					'南京':[118.78,32.04],
					'那曲':[92.067018,31.48068],
					'滨州':[118.03,37.36],
					'贵阳':[106.71,26.57],
					'安顺':[105.92827,26.228595],
					'防城港':[108.351791,21.617398],
					'无锡':[120.29,31.59],
					'本溪':[123.73,41.3],
					'克拉玛依':[84.77,45.59],
					'渭南':[109.5,34.52],
					'马鞍山':[118.48,31.56],
					'钦州':[108.638798,21.97335],
					'宝鸡':[107.15,34.38],
					'焦作':[113.21,35.24],
					'句容':[119.16,31.95],
					'北京':[116.46,39.92],
					'徐州':[117.2,34.26],
					'迪庆州':[99.713682,27.831029],
					'伊春':[128.910766,47.734685],
					'阿坝州':[102.228565,31.905763],
					'衡水':[115.72,37.72],
					'河池':[108.069948,24.699521],
					'包头':[110,40.58],
					'绵阳':[104.73,31.48],
					'乌鲁木齐':[87.68,43.77],
					'枣庄':[117.57,34.86],
					'杭州':[120.19,30.26],
					'淄博':[118.05,36.78],
					'鞍山':[122.85,41.12],
					'溧阳':[119.48,31.43],
					'库尔勒':[86.06,41.68],
					'安阳':[114.35,36.1],
					'开封':[114.35,34.79],
					'济南':[117,36.65],
					'德阳':[104.37,31.13],
					'温州':[120.65,28.01],
					'九江':[115.97,29.71],
					'邯郸':[114.47,36.6],
					'临安':[119.72,30.23],
					'兰州':[103.73,36.03],
					'沧州':[116.83,38.33],
					'临沂':[118.35,35.05],
					'南充':[106.110698,30.837793],
					'天津':[117.2,39.13],
					'富阳':[119.95,30.07],
					'泰安':[117.13,36.18],
					'诸暨':[120.23,29.71],
					'郑州':[113.65,34.76],
					'哈尔滨':[126.63,45.75],
					'聊城':[115.97,36.45],
					'芜湖':[118.38,31.33],
					'唐山':[118.02,39.63],
					'平顶山':[113.29,33.75],
					'邢台':[114.48,37.05],
					'德州':[116.29,37.45],
					'济宁':[116.59,35.38],
					'荆州':[112.239741,30.335165],
					'宜昌':[111.3,30.7],
					'义乌':[120.06,29.32],
					'丽水':[119.92,28.45],
					'洛阳':[112.44,34.7],
					'秦皇岛':[119.57,39.95],
					'株洲':[113.16,27.83],
					'石家庄':[114.48,38.03],
					'莱芜':[117.67,36.19],
					'常德':[111.69,29.05],
					'保定':[115.48,38.85],
					'湘潭':[112.91,27.87],
					'金华':[119.64,29.12],
					'岳阳':[113.09,29.37],
					'长沙':[113,28.21],
					'衢州':[118.88,28.97],
					'廊坊':[116.7,39.53],
					'菏泽':[115.480656,35.23375],
					'合肥':[117.27,31.86],
					'武汉':[114.31,30.52],
					'大庆':[125.03,46.58],
					'大兴安岭':[124.196104,51.991789],
					'楚雄州':[101.529382,25.066356],
					'兴安盟':[122.048167,46.083757],
					'陇南':[104.934573,33.39448],
					'鹤岗':[130.292472,47.338666],
					'毕节':[105.300492,27.302612],
					'怀化':[109.986959,27.557483],
					'南平':[118.181883,26.643626],
					'林芝':[94.349985,29.666941],
					'湛江':[110.365067,21.257463],
					'黑河':[127.50083,50.25069],
					'博州':[82.119231,44.56165],
					'日喀则':[88.891486,29.269023],
					'来宾':[109.231817,23.741166],
					'保山':[99.177996,25.120489],
					'漳州':[117.676205,24.517065],
					'邵阳':[111.461525,27.236811],
					'甘孜州':[101.969232,30.055144],
					'辽阳':[123.172451,41.273339]
					,'石河子':[86.041865,44.308259],
					'阿勒泰':[88.137915,47.839744],
					'阿里':[81.107669,30.404557],
					'凉山州':[102.259591,27.892393],
					'酒泉':[98.508415,39.741474],
					'延边州':[129.485902,42.896414],
					'呼伦贝尔':[119.760822,49.201636],
					'白城':[122.840777,45.621086],
					'衡阳':[112.583819,26.898164],
					'五家渠':[87.565449,44.368899],
					'山南':[91.750644,29.229027],
					'果洛州':[100.223723,34.480485],
					'眉山':[103.84143,30.061115],
					'临沧':[100.092613,23.887806],
					'伊犁哈萨克州':[82.680923,43.23387],
					'湘西州':[109.745746,28.317951],
					'广元':[105.819687,32.44104],
					'七台河':[131.019048,45.775005]
					,'阜新':[121.660822,42.01925],
					'鸡西':[130.941767,45.32154],
					'郴州':[113.037704,25.782264],
					'龙岩':[117.017997,25.078685],
					'三明':[117.642194,26.270835],
					'榆林':[109.745926,38.279439],
					'塔城':[82.974881,46.758684],
					'娄底':[111.996396,27.741073],
					'大理州':[100.223675,25.5969],
					'乐山':[103.760824,29.600958],
					'梧州':[111.305472,23.485395],
					'甘南州':[102.917442,34.992211],
					'黄山':[118.29357,29.734435],
					'平度':[120.006164,36.772168],
					'池州':[117.494477,30.660019],
					'辽源':[125.133686,42.923303],
					'天水':[105.736932,34.584319],
					'乌兰察布':[113.112846,41.022363]
					,'黄南州':[102.0076,35.522852],
					'六盘水':[104.852087,26.591866],
					'红河州':[103.384065,23.367718],
					'庆阳':[107.644227,35.726801],
					'德宏州':[98.589434,24.44124],
					'海南州':[100.624066,36.284364],
					'资阳':[104.63593,30.132191],
					'贺州':[111.552594,24.411054],
					'哈密':[93.528355,42.858596],
					'定西':[104.626638,35.586056],
					'松原':[124.832995,45.136049],
					'内江':[105.073056,29.599462],
					'鹰潭':[117.03545,28.24131],
					'益阳':[112.366547,28.588088],
					'海西州':[97.342625,37.373799],
					'巴中':[106.757916,31.869189],
					'海东':[102.085207,36.51761],
					'安康':[109.038045,32.70437]
					,'海北州':[100.879802,36.960654],
					'西双版纳州':[100.803038,22.009433],
					'铁岭':[123.85485,42.299757],
					'恩施州':[109.517433,30.308978],
					'广安':[106.63572,30.463984],
					'新乡':[113.91269,35.307258],
					'荆门':[112.21733,31.042611],
					'阿拉善盟':[105.695683,38.843075],
					'商洛':[109.934208,33.873907],
					'晋城':[112.867333,35.499834],
					'玉林':[110.151676,22.643974],
					'固原':[106.285268,36.021523],
					'临夏州':[103.215249,35.598514],
					'平凉':[106.688911,35.55011],
					'抚州':[116.360919,27.954545],
					'中卫':[105.196754,37.521124],
					'永州':[111.614648,26.435972],
					'贵港':[109.613708,23.103373]
					,'十堰':[110.801229,32.636994],
					'昌都':[97.185582,31.140576],
					'铜陵':[117.819429,30.94093],
					'朔州':[112.479928,39.337672],
					'怒江州':[98.859932,25.860677],
					'安庆':[117.058739,30.537898],
					'吕梁':[111.143157,37.527316],
					'漯河':[114.046061,33.576279],
					'四平':[124.391382,43.175525],
					'南阳':[112.542842,33.01142],
					'景德镇':[117.186523,29.303563],
					'周口':[114.654102,33.623741],
					'张掖':[100.459892,38.93932],
					'昭通':[103.725021,27.340633],
					'新余':[114.947117,27.822322],
					'六安':[116.505253,31.755558],
					'上饶':[117.955464,28.457623],
					'吴忠':[106.208254,37.993561],
					'通化':[125.94265,41.736397],
					'驻马店':[114.049154,32.983158],
					'鹤壁':[114.29777,35.755426]
					,'萍乡':[113.859917,27.639544],
					'许昌':[113.835312,34.02674],
					'蚌埠':[117.35708,32.929499],
					'亳州':[115.787928,33.871211],
					'白山':[126.435798,41.945859],
					'喀什':[75.992973,39.470627],
					'吉安':[114.992039,27.113848],
					'乌海':[106.831999,39.683177],
					'黄冈':[114.906618,30.446109],
					'晋中':[112.738514,37.693362],
					'宿州':[116.988692,33.636772],
					'赣州':[114.935909,25.845296],
					'朝阳':[120.446163,41.571828],
					'宜春':[114.400039,27.81113],
					'达州':[107.494973,31.214199],
					'武威':[102.640147,37.933172],
					'运城':[111.006854,35.038859],
					'黄石':[115.050683,30.216127],
					'濮阳':[115.026627,35.753298],
					'随州':[113.379358,31.717858],
					'宣城':[118.752096,30.951642]
					,'遂宁':[105.564888,30.557491],
					'巴彦淖尔':[107.423807,40.76918],
					'阜阳':[115.820932,32.901211],
					'白银':[104.171241,36.546682],
					'信阳':[114.085491,32.128582],
					'雅安':[103.009356,29.999716],
					'咸宁':[114.300061,29.880657],
					'汉中':[107.045478,33.081569],
					'百色':[106.631821,23.901512],
					'忻州':[112.727939,38.461031],
					'商丘':[115.641886,34.438589],
					'吐鲁番':[89.181595,42.96047],
					'鄂州':[114.895594,30.384439],
					'淮北':[116.791447,33.960023],
					'滁州':[118.32457,32.317351],
					'淮南':[117.018639,32.642812],
					'锡林郭勒盟':[116.02734,43.939705],
					'阿克苏':[80.269846,41.171731],
					'通辽':[122.260363,43.633756],
					'孝感':[113.935734,30.927955],
					'和田':[79.930239,37.116774]
				};

				var convertData = function (data) {
					var res = [];
					for (var i = 0; i < data.length; i++) {
						var geoCoord = geoCoordMap[data[i].name];
						if (geoCoord) {
							res.push({
								name: data[i].name,
								value: geoCoord.concat(data[i].value)
							});

						}
					}
					return res;
				};
				option = {
					backgroundColor: '#404a59',
					visualMap: {
						type: 'continuous', // 连续型
						min: 0,               // 值域最小值，必须参数
						max: 500,            // 值域最大值，必须参数
						calculable: true,    // 是否启用值域漫游
						inRange: {
							color: ['#50a3ba','#eac736','#d94e5d']
							// 指定数值从低到高时的颜色变化
						},
						textStyle: {
							color: '#fff'    // 值域控件的文本颜色
						}
					},
					title: {
						text: '全国主要城市空气质量',
						subtext: 'data from PM25.in',
						sublink: 'http://www.pm25.in',
						left: 'center',
						textStyle: {
							color: '#fff'
						}
					},
					tooltip : {
						trigger: 'item'
					},
					legend: {
						orient: 'vertical',
						y: 'bottom',
						x:'right',
						data:['pm2.5'],
						textStyle: {
							color: '#fff'
						}
					},
					geo: {
						map: 'china',
						label: {
							emphasis: {
								show: false
							}
						},
						roam: true,
						itemStyle: {
							normal: {
								areaColor: '#323c48',
								borderColor: '#111'
							},
							emphasis: {
								areaColor: '#2a333d'
							}
						}
					},
					series : [
						{
							name: 'pm2.5',
							type: 'scatter',
							coordinateSystem: 'geo',
							data: convertData(data),
							symbolSize: function (val) {
								return val[2] / 10;
							},
							label: {
								normal: {
									formatter: '{b}',
									position: 'right',
									show: false
								},
								emphasis: {
									show: true
								}
							},
							itemStyle: {
								normal: {
									color: '#ddb926'
								}
							}
						},
						{
							name: 'Top 5',
							type: 'effectScatter',
							coordinateSystem: 'geo',
							data: convertData(data.sort(function (a, b) {
								return b.value - a.value;

							}).slice(0, 6)),
							symbolSize: function (val) {
								return val[2] / 10;
							},
							showEffectOn: 'render',
							rippleEffect: {
								brushType: 'stroke'
							},
							hoverAnimation: true,
							label: {
								normal: {
									formatter: '{b}',
									position: 'right',
									show: true
								}
							},
							itemStyle: {
								normal: {
									color: '#f4e925',
									shadowBlur: 10,
									shadowColor: '#333'
								}
							},
							zlevel: 1
						}
					]

				};

				if (option && typeof option === "object") {
					myChart.setOption(option, true);
				}

			</script>

			<div class="clearfix">

			</div>
		</div>

		<!-- //welcome-bottom -->

		<!-- news -->


		<div class="welcome">
			<div class="container">
				<h3 class="agileits_w3layouts_head">
					健康
					<span>图文</span> 小常识
				</h3>
				<div class="w3_agile_image">
					<img src="images/1.png" alt=" " class="img-responsive">
				</div>
				<p class="agile_para">
					这是我们为您提供的生活小常识，为您的健康生活送上一份关心。
				</p>
				<div class="w3ls_news_grids">
					<div class="col-md-4 w3ls_news_grid">
						<div class="w3layouts_news_grid">
							<img src="images/pm25.jpg" alt=" " class="img-responsive"
								style="width: 380px; height: 200px;" />
							<div class="w3layouts_news_grid_pos">
								<div class="wthree_text">
									<h3>
										PM2.5专题
									</h3>
								</div>
							</div>
						</div>
						<div class="agileits_w3layouts_news_grid">
							<ul>
								<li>
									<i class="fa fa-calendar" aria-hidden="true"></i>2017/4/24
								</li>
								<li>
									<i class="fa fa-user" aria-hidden="true"></i>
									<a href="#">管理员</a>
								</li>
							</ul>
							<h4>
								<a href="#" data-toggle="modal" data-target="#myModal">罗汉果泡茶喝可对抗PM2.5</a>
							</h4>
							<p>
								义大医院辛重毅中医师表示，PM2.5是指空气中直径小于或等于2.5微米的颗粒，大约只有头发直径的28分之1。特别是
								PM2.5很容易随着呼吸进入肺部，甚至可能随着血液循环进入身体其他部位，危害人体健康。
							</p>
						</div>
					</div>
					<div class="col-md-4 w3ls_news_grid">
						<div class="w3layouts_news_grid">
							<img src="images/shenghuo.jpg" alt=" " class="img-responsive"
								style="width: 380px; height: 200px;" />
							<div class="w3layouts_news_grid_pos">
								<div class="wthree_text">
									<h3>
										雾霾小贴士
									</h3>
								</div>
							</div>
						</div>
						<div class="agileits_w3layouts_news_grid">
							<ul>
								<li>
									<i class="fa fa-calendar" aria-hidden="true"></i>2017/4/24
								</li>
								<li>
									<i class="fa fa-user" aria-hidden="true"></i>
									<a href="#">不详</a>
								</li>
							</ul>
							<h4>
								<a href="#" data-toggle="modal" data-target="#myModal">雾霾易致中风与焦虑
									并引发孩子自闭症</a>
							</h4>
							<p>
								据合众国际社3月25日报道，
								往的研究表明，长期暴露在烟尘和雾霾环境中与更高的中风风险之间存在联系，但英国爱丁堡大学研究人员开展的一项新研究是把雾霾天气与中风就医病例增加相关联的首批研究之一。
							</p>
						</div>
					</div>
					<div class="col-md-4 w3ls_news_grid">
						<div class="w3layouts_news_grid">
							<img src="images/news.png" class="img-responsive "
								style="width: 380px; height: 200px;" />

							<div class="w3layouts_news_grid_pos ">

								<div class="wthree_text ">

									<h3>
										各地新闻
									</h3>
								</div>
							</div>
						</div>

						<div class="agileits_w3layouts_news_grid ">

							<ul>
								<li>
									<i class="fa fa-calendar " aria-hidden="true "></i>2017/4/24
								</li>
								<li>
									<i class="fa fa-user " aria-hidden="true "></i>
									<a href="# ">管理员</a>
								</li>
							</ul>
							<h4>
								<a href="# " data-toggle="modal " data-target="#myModal ">预计明天33℃
									清明节后有强冷空气</a>
							</h4>
							<p>
								前天，杭州还是阴阴的天气，偶尔有一点小雨，风里还带着早春的凉意；但是一夜之后，昨天早晨，气温就像搭乘上火箭似的，一个劲地往上冲。
								按照杭州市气象台的说法，昨天，热烈的阳光真是来得突然而又凶猛。
							</p>
						</div>
					</div>
					<div class="clearfix ">
					</div>
				</div>
			</div>
		</div>


		<!-- //news -->

		<!-- newsletter -->

<%--		<div class="newsletter ">
			<div class="container ">
				<h3 class="agileits_w3layouts_head agileinfo_head ">
					<span>对我们</span>提出您的建议
				</h3>
				<div class="w3_agile_image ">
					<img src="images/12.png " alt=" " class="img-responsive ">
				</div>
				<p class="agile_para agileits_para ">
					我们做的更好就是对您健康生活的更负责。希望您能提出更好的建议。
				</p>
				<div class="w3ls_news_grids w3ls_newsletter_grids ">
					<form action="# " method="post ">
						<input name="Your Name " placeholder="您的邮箱 " type="text"
							required=" ">
						<input name="Your Email " placeholder="建议内容" type="email"
							required=" ">
						<input type="submit" value="提交 ">
					</form>
				</div>
			</div>
		</div>--%>

		<!-- //newsletter -->

		<!-- footer -->

		<div class="footer ">
			<div class="container ">
				<div class="w3agile_footer_grids ">
					<div class="col-md-3 agileinfo_footer_grid ">
						<div class="agileits_w3layouts_footer_logo ">
							<h2>
								<a href="adindex.html "><span>PM</span>2.5<i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;检测系统</i>
								</a>
							</h2>
						</div>
					</div>
					<div class="col-md-4 agileinfo_footer_grid ">
						<h3>
							<a href="aboutus.html">关于我们</a>
						</h3>
						<h4>
							联系方式：
							<span>18856088388</span>
						</h4>
						<p>
							我们的团队：安徽信息工程学院
							<span>pm2.5研究小组</span>
						</p>
					</div>
					<div class="col-md-2 agileinfo_footer_grid agileinfo_footer_grid1 ">
						<h3>
							页面导航
						</h3>
						<ul class="w3layouts_footer_nav ">
							<li>
								<a href="ad_index"><i class="fa fa-long-arrow-right "
									aria-hidden="true "></i>主页面</a>
							</li>
							<li>
								<a href="jiance"><i class="fa fa-long-arrow-right "
									aria-hidden="true "></i>实时监测</a>
							</li>
							<li>
								<a href="rank"><i class="fa fa-long-arrow-right "
									aria-hidden="true "></i>排行榜</a>
							</li>
							<li>
								<a href="contact"><i class="fa fa-long-arrow-right "
									aria-hidden="true "></i>生活小帮手</a>
							</li>
							<li>
								<a href="contact"><i class="fa fa-long-arrow-right "
									aria-hidden="true "></i>PM 2.5 防护</a>
							</li>
						</ul>
					</div>
					<div class="col-md-3 agileinfo_footer_grid ">
						<h3>
							特殊关注
						</h3>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img
									src="images/6.jpg " alt=" " class="img-responsive "
									style="width: 120px; height: 80px;" />
							</a>
						</div>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img
									src="images/2.jpg " alt=" " class="img-responsive "
									style="width: 120px; height: 80px;" />
							</a>
						</div>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img
									src="images/5.jpg " alt=" " class="img-responsive "
									style="width: 120px; height: 80px;" />
							</a>
						</div>
						<div class="agileinfo_footer_grid_left ">
							<a href="# " data-toggle="modal " data-target="#myModal "><img
									src="images/3.jpg " alt=" " class="img-responsive "
									style="width: 120px; height: 80px;" />
							</a>
						</div>
						<div class="clearfix ">
						</div>
					</div>
					<div class="clearfix ">
					</div>
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
	jQuery(function($) {
		var slider = $('.mis-stage').miSlider({
			//  The height of the stage in px. Options: false or positive integer. false = height is calculated using maximum slide heights. Default: false
			stageHeight : 380,
			//  Number of slides visible at one time. Options: false or positive integer. false = Fit as many as possible.  Default: 1
			slidesOnStage : false,
			//  The location of the current slide on the stage. Options: 'left', 'right', 'center'. Defualt: 'left'
			slidePosition : 'center',
			//  The slide to start on. Options: 'beg', 'mid', 'end' or slide number starting at 1 - '1','2','3', etc. Defualt: 'beg'
			slideStart : 'mid',
			//  The relative percentage scaling factor of the current slide - other slides are scaled down. Options: positive number 100 or higher. 100 = No scaling. Defualt: 100
			slideScaling : 150,
			//  The vertical offset of the slide center as a percentage of slide height. Options:  positive or negative number. Neg value = up. Pos value = down. 0 = No offset. Default: 0
			offsetV : -5,
			//  Center slide contents vertically - Boolean. Default: false
			centerV : true,
			//  Opacity of the prev and next button navigation when not transitioning. Options: Number between 0 and 1. 0 (transparent) - 1 (opaque). Default: .5
			navButtonsOpacity : 1
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
			type : 'fadeIn',
			iChar : 100,
			iAnim : 1000
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

		allMenus.children(".shy-menu-hamburger").on(
				"click",
				function() {

					var thisTrigger = jQuery(this), thisMenu = thisTrigger
							.parent(), thisPanel = thisTrigger.next();

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
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
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
			easingType : 'easeOutQuart'
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
			window.location.href = "ad_indexl?city=" + addComp.city;
		});
	});
</script>
		<%--<script type="text/javascript">
	var num = ${avgl };
	$(document).ready(function() {
		if (num <= 50) {
			$('#bg').addClass("bg");
			$('#wu').addClass("wu");
			$('#wu').val("优秀");
		} else if (num > 50 && num <= 100) {
			$('#bg').addClass("bg1");
			$('#wu').addClass("wu1");
			$('#wu').val("良好");
		} else if (num > 100 && num <= 150) {
			$('#bg').addClass("bg2");
			$('#wu').addClass("wu2");
			$('#wu').val("轻度污染");
		} else if (num > 150 && num <= 200) {
			$('#bg').addClass("bg3");
			$('#wu').addClass("wu3");
			$('#wu').val("中度污染");
		} else if (num > 200 && num <= 300) {
			$('#bg').addClass("bg4");
			$('#wu').addClass("wu4");
			$('#wu').val("重度污染");
		} else if (num > 300 && num <= 500) {
			$('#bg').addClass("bg5");
			$('#wu').addClass("wu5");
			$('#wu').val("严重污染");
		} else {
			$('#bg').addClass("bg");
			$('#wu').addClass("wu");
			$('#wu').val("污染程度");
		}
	})
</script>--%>
		<script type="text/javascript">
	$(function() {
		$(".line").slideUp();
	});
</script>

	</body>
</html>