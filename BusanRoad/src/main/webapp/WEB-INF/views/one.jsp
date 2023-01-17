<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- css --> <link href="resources/css/all.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<!-- 헤더 -->
<div class="container">
	<header class="d-flex justify-content-center py-3">
		<h1 style="color: #1E4FFF;"><a href="../main/main.jsp"><img src=resources/img/부산로드.png style="width: 200px; height: 60px;"></a> &nbsp;&nbsp;&nbsp;</h1>
			<ul style="font-weight: bold;" class="nav nav-pills">
				<li class="nav-item"><a href="#" class="nav-link">지역별로 보기</a></li>
				<li class="nav-item"><a href="beach.jsp" class="nav-link">해수욕장</a></li>
				<li class="nav-item"><a href="#" class="nav-link">무장애 여행</a></li>
				<li class="nav-item"><a href="#" class="nav-link">검색</a></li>
				<li class="nav-item"><a href="#" class="nav-link">혼잡도 알아보기</a></li>
			</ul>
	</header>
		<p style="text-align: right;"><a href="#" class="nav-link">⚙️관리자</a></p>
	<hr>
	<h3 style="text-align: center; font-weight: bold;">${vo.name}🐳</h3>
	<hr>
	<h3 style="text-align: center;"><img src=resources/img/${vo.img} class="img"></h3> <br>
	<h2 class="container">${vo.contents}</h2> <br>
	<h3>${vo.open}</h3> <br>
	<h3>서비스 제공 : ${vo.service}</h3> <br>
	<h3>거리 : ${vo.subway}</h3> <br>
	<div id="map"></div>
	<br>
</div>
</body>

<!-- kakaoMap -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c3b76700f02739c36c073d523c4fdbd6"></script>
<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(${vo.latitude}, ${vo.longitude}),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new kakao.maps.Marker({ 
		    // 지도 중심좌표에 마커를 생성합니다 
		    position: map.getCenter() 
		}); 
		// 지도에 마커를 표시합니다
		marker.setMap(map);
</script>
</html>