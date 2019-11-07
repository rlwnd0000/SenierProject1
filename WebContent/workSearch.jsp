<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>근무형태 리스트</title> <!-- 근무형태 검색할수 있는 페이지 -->
<script>
function sendCheckValue(){
	  opener.document.userInfo.workForm.value = document.getElementById("userworkForm").value;
	  
	  if(opener != null){
		  opener.chkForm = null;
		  self.close();
	  }
}
</script>
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

tr:nth-child(odd){background-color: #f2f2f2}

a{text-decoration:none;
  color:black;
}

input{
 width: 100%;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
 }
</style>
</head>
<body>
<table border = "1">
<c:forEach var = "workList" items="${workList}">
<tr>
	<th>번호</th>
	<th>근무형태</th>	
</tr>
<tr>
	<td>${workList.workFormNo}</td>
	<td>${workList.workName}</td>
</tr>
</c:forEach>
</table>
<input type = "text" id="userworkForm" placeholder="번호를입력해주세요"> 
<input type = "button" value = "사용하기" onclick="sendCheckValue()">
</body>
</html>