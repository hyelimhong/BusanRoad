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
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() {
	$.ajax({
		url:"beach2.do",
		success: function(x) {
			//html로 받아라
			$('#result').html(x)
		}
	})
})
</script>
</head>
<body>
<!-- 헤더 -->
<div class="container" style="color: black;">
	<header class="d-flex justify-content-center py-3">
		<h1><a href="../main/main.jsp"><img src=resources/img/부산로드.png class="himg"></a> &nbsp;&nbsp;&nbsp;</h1>
			<ul class="nav nav-pills">
				<li class="nav-item"><a href="#" class="nav-link">지역별로 보기</a></li>
				<li class="nav-item"><a href="beach.jsp" class="nav-link">해수욕장</a></li>
				<li class="nav-item"><a href="#" class="nav-link">무장애 여행</a></li>
				<li class="nav-item"><a href="#" class="nav-link">검색</a></li>
				<li class="nav-item"><a href="confusion?id=1810011&lat=35.09846683706733&lng=129.03679919242902" class="nav-link">혼잡도 알아보기</a></li>
			</ul>
	</header>
		<p style="text-align: right;"><a href="#" class="nav-link">⚙️관리자</a></p>
	<hr>
	<div style="background-color: skyblue;"></div>

<h3 class="title">&nbsp;&nbsp;&nbsp;&nbsp; 부산 해수욕장 List</h3>
<form action="guest" style="text-align: right;" id="guest"><button type="submit">방문자수 추이 예측 보러가기</button></form>
<!-- 리스트 -->
<table border="1" class="container">
	<colgroup>
    	<col width="15%" />
        <col width="20%" />
        <col width="15%" />
        <col width="15%" />
        <col width="15%" />
        <col width="20%" />
    </colgroup>
	<thead>
		<tr>
			<th>이름</th>
			<th>상세</th>
			<th>오픈기간</th>
			<th>서비스제공</th>
			<th>거리</th>
			<th>이미지</th>
		</tr>
	</thead>
	<tbody id="result" class="table table-bordered">
		<!-- beach2 -->
	</tbody>
</table>
<br><br>
</div>
</body>
</html>