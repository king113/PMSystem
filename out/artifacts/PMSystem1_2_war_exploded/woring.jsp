<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>

	<head>
		<title>主页</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Hosting Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script src="http://api.map.baidu.com/api?v=20&ak=iTfDv41Yh4Kd13aNutzpr1ue7hMS3Nch" type="text/javascript"></script>
	</head>

	<body>
			<div id="allmap" style="display:none"></div>
	</body>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);
	alert("您所选的地址不在检测范围之内！请重新选择。");

	function myFun(result){
		var cityName = result.name;
		map.setCenter(cityName);
		if(cityName == "全国"){
		alert("定位失败！请手动选择所在城市。");
		window.location.href="ad_indexl?city="+"芜湖市";
		}else{
			window.location.href="ad_indexl?city="+cityName;
		}
	}
	var myCity = new BMap.LocalCity();
	myCity.get(myFun);
</script>
</html>