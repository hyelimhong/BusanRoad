<%@page import="org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock.Catch"%>
<%@page import="com.sun.org.apache.bcel.internal.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xx6afc9e3c4c744922b363451f952ce0d4"></script>
<script type="text/javascript">
	function initTmap(){
		var map = new Tmapv2.Map("map_div",  
		{
			center: new Tmapv2.LatLng(${lat},${lng}),
			width: "890px",
			height: "400px",
			zoom: 15
		});
		 

		var marker = new Tmapv2.Marker({
			position: new Tmapv2.LatLng(${lat},${lng}),
			map: map
		});	
	}
</script>
</head>
<body onload="initTmap()">
<!-- 헤더 -->
<div class="container" style="text-align: center;">
	<header class="d-flex justify-content-center py-3">
		<h1 style="color: #1E4FFF;"><a href="#">🕊부산로드🕊</a> &nbsp;&nbsp;&nbsp;</h1>
			<ul class="nav nav-pills">
				<li class="nav-item"><a href="#" class="nav-link">지역별로 보기</a></li>
				<li class="nav-item"><a href="../beach/beach.jsp" class="nav-link">해수욕장</a></li>
				<li class="nav-item"><a href="#" class="nav-link">무장애 여행</a></li>
				<li class="nav-item"><a href="#" class="nav-link">검색</a></li>
				<li class="nav-item"><a href="#" class="nav-link">혼잡도 알아보기</a></li>
			</ul>
	</header>
	<hr>
	<table class="container" border="1">
		<thead><tr>
	 		<th><a href="confusion?id=1810011&lat=35.09846683706733&lng=129.03679919242902">
			<button>롯데백화점광복점</button>
			</a></th>
			<th><a href="confusion?id=384354&lat=35.15696848197605&lng=129.06326293945347">
			<button>NC백화점서면점</button>
			</a></th>
			<th><a href="confusion?id=1505596&lat=35.168915000027596&lng=129.12949998378795">
			<button>신세계백화점센텀시티점</button>
			</a></th>
			<th><a href="confusion?id=11647&lat=35.17321999993558&lng=128.94641003608746">
			<button>김해국제공항</button>
			</a></th>
			<th><a href="confusion?id=551562&lat=35.164722010697744&lng=128.97780003547712">
			<button>사상 르네시떼 </button>
			</a></th>
			<th><a href="confusion?id=529636&lat=35.32375001254311&lng=129.23568999910395">
			<button>부산 신세계 프리미엄 아울렛 부산점</button>
			</a></th>
		</tr></thead>
		<tbody>
			<tr>
				<td colspan="2"><img src="resources/img/${result}"></td>
				<td colspan="4"><div id="map_div"></div></td>
			</tr>
			<tr>
			</tr> 
		</tbody>
	</table>
</div>
</body>
</html>