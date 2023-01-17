<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body>
<div id="map"></div>
</body>

</html>