<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>simpleMap</title>
<script
	src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xx6afc9e3c4c744922b363451f952ce0d4"></script>
<script type="text/javascript">
	function initTmap(){
		var map = new Tmapv2.Map("map_div",  
		{
			center: new Tmapv2.LatLng(35.16472197561447,128.97779994964642), 
			width: "890px",
			height: "400px",
			zoom: 15
		});
		 

		var marker = new Tmapv2.Marker({
			position: new Tmapv2.LatLng(35.16472197561447,128.97779994964642),
			map: map
		});	
	}
</script>
</head>
<body onload="initTmap()">
	<div id="map_div"></div>
</body>
</html>

