<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소검색</title> <!--  주소검색.....ㅠ 어캐해야하지..-->

</head>
<body>
<form method="post" action="addressSearch.jsp">
	주소검색 :

<table border="1">
<select name="selectBox" id="selectBox" style="width:100px;">
<c:forEach var = "list" items="${list}">
<option value="" selected disabled hidden >시/도</option>
<option value="${list.cityName}">${list.cityName}</option>
</c:forEach>
</select>
<select name="selectBox" id="selectBox" style="width:100px;">
<c:forEach var = "list" items="${list}">
<option value="" selected disabled hidden >시/군</option>
<option value="${list.countyName}">${list.countyName}</option>
</c:forEach>
</select>
<select name="selectBox" id="selectBox" style="width:200px;">
<c:forEach var = "list" items="${list}">
<option value="" selected disabled hidden >도로명</option>
<option value="${list.roadName}">${list.roadName}</option>
</c:forEach>
</select>

</table>
</form>

</body>
</html>
