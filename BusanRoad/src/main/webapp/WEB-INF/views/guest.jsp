<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["기준년월", "방문비율", { role: "style" } ],
        <c:forEach var="vo" items="${list}">
        ["${vo.day}", ${vo.guest}, "#99ccff"],
		</c:forEach>
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "방문자 추이 예측",
        bar: {groupWidth: "70%"},
        legend: { position: "none" }
      };
      var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
      chart.draw(view, options);
    }
</script>
</head>
<body>
<div class="container">
	<header class="d-flex justify-content-center py-3">
		<h1 style="color: #1E4FFF;"><a href="../main/main.jsp"><img src=resources/img/부산로드.png style="width: 200px; height: 60px;"></a> &nbsp;&nbsp;&nbsp;</h1>
			<ul class="nav nav-pills" style="font-weight: bold;">
				<li class="nav-item"><a href="#" class="nav-link">지역별로 보기</a></li>
				<li class="nav-item"><a href="beach.jsp" class="nav-link">해수욕장</a></li>
				<li class="nav-item"><a href="#" class="nav-link">무장애 여행</a></li>
				<li class="nav-item"><a href="#" class="nav-link">검색</a></li>
				<li class="nav-item"><a href="#" class="nav-link">혼잡도 알아보기</a></li>
			</ul>
	</header>
		<p style="text-align: right;"><a href="#" class="nav-link">⚙️관리자</a></p>
	<hr>
</div>
<table border="1" class="container">
	<tr><td><br><h2 style="text-align: center;">부산해수욕장 방문자 추이 예측 그래프</h2><br></td></tr>
	<tr><td><div id="barchart_values" style="width: 1500px; height:800px; text-align: top;" class="container"></div></td></tr>
	<tr><td><h3 style="text-align: center;">위 그래프는 한국관광 데이터랩에서 제공하는 방문자 추이 예측 수치 입니다.</h3><br></td></tr>
</table>
<br><br>
</body>
</html>