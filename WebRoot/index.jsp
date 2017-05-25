<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>

	<head>
		<title>定位中。。。</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Hosting Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script src="http://api.map.baidu.com/api?v=20&ak=iTfDv41Yh4Kd13aNutzpr1ue7hMS3Nch" type="text/javascript"></script>
		<link rel="shortcut icon" href="images/pm25.png">
	</head>

	<body>
			<div id="allmap" style="display:none"></div>
	</body>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);
		var sUserAgent = navigator.userAgent.toLowerCase();
	    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
	    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
	    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
	    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
	    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
	    var bIsAndroid = sUserAgent.match(/android/i) == "android";
	    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
	    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
	function myFun(result){
		var cityName = result.name;
		map.setCenter(cityName);
		if(cityName == "全国"){
		    if (!(bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) ){
		        window.location.href="ad_indexl?city="+"芜湖市";
		    }else{
				window.location.href="ad_indexlph?city="+"芜湖市"; 
		    }

		}else{
		 if (!(bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) ){

		       window.location.href="ad_indexl?city="+cityName; 
		    }else{
				window.location.href="ad_indexlph?city="+cityName; 
		    }
		}
	}
	var myCity = new BMap.LocalCity();
	myCity.get(myFun);
</script>

</html>