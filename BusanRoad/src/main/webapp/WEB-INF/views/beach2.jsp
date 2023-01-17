<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:forEach var="vo" items="${list}">
		<tr>
			<td style="text-align: center;"><a href="one?name=${vo.name}">${vo.name}</a></td>
			<td>${vo.contents}</td>
			<td>${vo.open}</td>
			<td>${vo.service}</td>
			<td>${vo.subway}</td>
			<td><img src=resources/img/${vo.img} style="width: 300px; height: 150px;"></td>	
		</tr>
	</c:forEach>
