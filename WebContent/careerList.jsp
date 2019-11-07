<%@ page import="ops.MemberCareer.Beans.Career"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 이력서 리스트 -->
<title>이력서리스트</title>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: center;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

a{text-decoration:none;
  color:black;
}
</style>
</head>
<body>
<div style="overflow-x:hidden">
<table border="1">
	<tr>
		<caption><h1>이력서 목록</h1></caption>
	</tr>
	<c:forEach var = "careerList" items="${careerList}">
	<tr>
		<th>번호</th>	
		<th>제목</th>	
		<th>부제목</th>	
		<th>자기소개</th>	
		<th>한마디</th>	
		<th>직종</th>
		<th>주소</th>	
		<th>근무기간</th>	
		<th>근무일시</th>	
		<th>근무요일</th>	
		<th>신청일</th>	
		<th>급여</th>	
		<th>학력</th>	
		<th>시작일</th>
		<th>종료일</th>
		<th>공개기간</th>
		<th>폰번호</th>
		<th>추가연락쳐</th>
		<th>근무형태</th>
		<th>아이디</th>
	</tr>
	<tr>
		<td>${careerList.ca_no}</td>
		<td><a href="careerDetail.ops?ca_no=${careerList.ca_no}">${careerList.ca_title}</a></td>
		<td>${careerList.ca_subTitle}</td>
		<td>${careerList.ca_selfText}</td>
		<td>${careerList.ca_talk}</td>
		<td>${careerList.ca_job}</td>
		<td>${careerList.ca_address}</td>
		<td>${careerList.ca_workTerm}</td>
		<td>${careerList.ca_workDay}</td>
		<td>${careerList.ca_workTime}</td>
		<td>${careerList.ca_date}</td>
		<td>${careerList.ca_sal}</td>
		<td>${careerList.ca_acadamiBg}</td>
		<td>${careerList.ca_startPublic}</td>
		<td>${careerList.ca_endPublic}</td>
		<td>${careerList.ca_publicTerm}</td>
		<td>${careerList.ca_phone}</td>
		<td>${careerList.ca_addPhone}</td>
		<td>${careerList.workName}</td>
		<td>${careerList.id}</td>
	</c:forEach>
</table>
</div>
</body>
</html>