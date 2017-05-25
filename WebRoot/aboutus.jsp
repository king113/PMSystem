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
		<title>关于我们</title>
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
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
		<!-- //js -->
		<!-- gallery -->
		<link href="css/lsb.css" rel="stylesheet" type="text/css">
		<!-- //gallery -->
		<!-- font-awesome-icons -->
		<link href="css/font-awesome.css" rel="stylesheet">
		<!-- //font-awesome-icons -->
		<link href="googleapis-fonts/fonts.css?family=Bree+Serif&amp;subset=latin-ext" rel="stylesheet">
		<link href='googleapis-fonts/fonts.css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	</head>

	<body>
		<!-- banner -->
		<div class="banner1">
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
				<div style="margin-top: 60px;">
					<div class="w3_banner_info_grid" id="localtion">
						<div class="col-lg-8">
							<h1 class="test" style="color: green">
							关于我们的团队
						</h1>
							<p style="color: green;">
								
							</p>
						</div>
						<div class="col-lg-4">
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
						<li><i class="fa fa-picture-o" aria-hidden="true"></i>关于我们</li>
					</ul>
				</div>
				<div class="w3layouts_breadcrumbs_right">
					<h2>关于我们</h2>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //breadcrumbs -->
		<!-- gallery -->
		<div class="welcome">
			<div class="container">
				<h3 class="agileits_w3layouts_head">PM2.5的 <span>危害</span></h3>
				<div class="w3_agile_image">
					<img src="images/1.png" alt=" " class="img-responsive" />
				</div>
				<p class="agile_para">专心打造pm2.5的实时预测与分析，让更多的朋友了解pm2.5,知道他的危害，为此呼吁朋友们，保护我们的地球。</p>
				<div class="w3layouts_gallery_grids">
					<div class="col-md-4 w3layouts_gallery_grid">
						<a href="images/6.jpg" class="lsb-preview" data-lsb-group="header">
							<div class="w3layouts_news_grid">
								<img src="images/6.jpg" alt=" " class="img-responsive">
								<div class="w3layouts_news_grid_pos">
									<div class="wthree_text">
										<h3>环境污染</h3></div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 w3layouts_gallery_grid">
						<a href="images/61.jpg" class="lsb-preview" data-lsb-group="header">
							<div class="w3layouts_news_grid">
								<img src="images/61.jpg" alt=" " class="img-responsive">
								<div class="w3layouts_news_grid_pos">
									<div class="wthree_text">
										<h3>环境污染</h3></div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 w3layouts_gallery_grid">
						<a href="images/62.jpg" class="lsb-preview" data-lsb-group="header">
							<div class="w3layouts_news_grid">
								<img src="images/62.jpg" alt=" " class="img-responsive">
								<div class="w3layouts_news_grid_pos">
									<div class="wthree_text">
										<h3>环境污染</h3></div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 w3layouts_gallery_grid">
						<a href="images/63.jpg" class="lsb-preview" data-lsb-group="header">
							<div class="w3layouts_news_grid">
								<img src="images/63.jpg" alt=" " class="img-responsive">
								<div class="w3layouts_news_grid_pos">
									<div class="wthree_text">
										<h3>环境污染</h3></div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 w3layouts_gallery_grid">
						<a href="images/64.jpg" class="lsb-preview" data-lsb-group="header">
							<div class="w3layouts_news_grid">
								<img src="images/64.jpg" alt=" " class="img-responsive">
								<div class="w3layouts_news_grid_pos">
									<div class="wthree_text">
										<h3>环境污染</h3></div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 w3layouts_gallery_grid">
						<a href="images/65.jpg" class="lsb-preview" data-lsb-group="header">
							<div class="w3layouts_news_grid">
								<img src="images/65.jpg" alt=" " class="img-responsive">
								<div class="w3layouts_news_grid_pos">
									<div class="wthree_text">
										<h3>环境污染</h3></div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 w3layouts_gallery_grid">
						<a href="images/66.jpg" class="lsb-preview" data-lsb-group="header">
							<div class="w3layouts_news_grid">
								<img src="images/66.jpg" alt=" " class="img-responsive">
								<div class="w3layouts_news_grid_pos">
									<div class="wthree_text">
										<h3>环境污染</h3></div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 w3layouts_gallery_grid">
						<a href="images/67.jpg" class="lsb-preview" data-lsb-group="header">
							<div class="w3layouts_news_grid">
								<img src="images/67.jpg" alt=" " class="img-responsive">
								<div class="w3layouts_news_grid_pos">
									<div class="wthree_text">
										<h3>环境污染</h3></div>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-4 w3layouts_gallery_grid">
						<a href="images/68.jpg" class="lsb-preview" data-lsb-group="header">
							<div class="w3layouts_news_grid">
								<img src="images/68.jpg" alt=" " class="img-responsive">
								<div class="w3layouts_news_grid_pos">
									<div class="wthree_text">
										<h3>环境污染</h3></div>
								</div>
							</div>
						</a>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>

		<div class="testimonials">
			<div class="container">
				<h3 class="agileits_w3layouts_head">我们的 <span>团队</span> 成员</h3>
				<div class="w3_agile_image">
					<img src="images/1.png" alt=" " class="img-responsive">
				</div>
				<p class="agile_para">专心打造pm2.5的实时预测与分析，让更多的朋友了解pm2.5,知道他的危害，为此呼吁朋友们，保护我们的地球。</p>
				<div class="w3ls_news_grids">
					<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<div class="agile_testimonials_grid">
										<div class="col-md-4 agile_testimonials_grid_left">
											<img src="images/guiliang.png" alt=" " class="img-responsive" />
										</div>
										<div class="col-md-8 agile_testimonials_grid_right">
											<h5>组长：<span>桂亮</span></h5>
											<div class="wthree_stars">
												<ul>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star-half-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<p>只要你确信自己正确就去做。做了有人说不好，不做还是有人说不好，不要逃避批判。</p>
											<h6>:- 引领团队 <span>走的更远！</span></h6>
										</div>
										<div class="clearfix"> </div>
									</div>
								</li>
								<li>
									<div class="agile_testimonials_grid">
										<div class="col-md-4 agile_testimonials_grid_left">
											<img src="images/kaige.png" alt=" " class="img-responsive" />
										</div>
										<div class="col-md-8 agile_testimonials_grid_right">
											<h5>组员 <span>蔡凯</span></h5>
											<div class="wthree_stars">
												<ul>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<p>做事成功的要诀就如同钥匙开锁的道理一样，如果你不能准确对号，那麽一定无法打开成功之门.</p>
											<h6>:- 爱拼<span>才会赢！</span></h6>
										</div>
										<div class="clearfix"> </div>
									</div>
								</li>
								<li>
									<div class="agile_testimonials_grid">
										<div class="col-md-4 agile_testimonials_grid_left">
											<img src="images/14.jpg" alt=" " class="img-responsive" />
										</div>
										<div class="col-md-8 agile_testimonials_grid_right">
											<h5>组员：<span>李男</span></h5>
											<div class="wthree_stars">
												<ul>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star-half-o"></i></li>
													<li><i class="fa fa-star-half-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
											</div>
											<p>人生的道路不会一帆风顺，事业的征途也充满崎岖艰险，只有奋斗，只有拼搏，才会达到成功的彼岸。</p>
											<h6>:- 勇敢<span>做自己！</span></h6>
										</div>
										<div class="clearfix"> </div>
									</div>
								</li>
							</ul>
						</div>
					</section>
				</div>
			</div>
		</div>
		<!-- //gallery -->
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
		
		<script src="js/lsb.min.js"></script>
		<script>
			$(window).load(function() {
				$.fn.lightspeedBox();
			});
		</script>

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
	</body>

</html>