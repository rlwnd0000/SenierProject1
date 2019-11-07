<%@ page import="ops.MemberCareer.Beans.Career"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
	<title>이력서 수정</title>
<script type="text/javascript">
	function modifyboard(){
		modifyform.submit();
	}
</script>
<style type="text/css">
input:not([type="radio"]), textarea {
 width: 50%;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  
 }
 
   h2{
      text-align: center;
   }

</style>
</head>
<body>
<!-- 이력서 수정-->
<h2>이력서수정</h2><br>

 <c:set var="article" value="${article}"></c:set>
<form action="careerModifyPro.ops" method="post" name = "modifyform">
<input type = "hidden" name = "ca_no" value = "${article.ca_no}"/>
		<p align="center">
            <input name="title" placeholder="제목" type="text" id="title" value = "${article.ca_title}"/></p>
            
        <p align="center">
            <input type="text" placeholder="부제목" name="subTitle" id="subTitle" value = "${article.ca_subTitle}" /></p>
	
	    <p align="center">
            <textarea id="ca_selfText" placeholder="자기소개" name="ca_selfText" cols="68" rows="10" >${article.ca_selfText}</textarea>
               
        <p align="center">
            <textarea id="talk" placeholder="한마디" name="talk" cols="68" rows="3">${article.ca_talk}</textarea>
            
		<p align="center">
               <input name="job" placeholder="직종" type="text" id="job" value = "${article.ca_job}"/>
             
        <p align="center">
               <input name="address" placeholder="주소" type="text" id="address" value = "${article.ca_address}"/>     
               
		<p align="center">
               <input name="workTerm" placeholder="근무기간" type="text" id="workTerm" value = "${article.ca_workTerm}"/>
            
        <p align="center">
               <input name="workDay" placeholder="근무일시" type="text" id="workDay" value = "${article.ca_workDay}"/>
               
        <p align="center">
               <input name="workTime" placeholder="근무시간" type="text" id="workTime" value = "${article.ca_workTime}"/>
               
		<p align="center">
               <input name="sal" placeholder="급여" type="text" id="sal" value = "${article.ca_sal}"/>
            
        <p align="center">
               <input name="acadamiBg" placeholder="학력" type="text" id="acadamiBg"  value = "${article.ca_acadamiBg}"/>
           
        <p align="center">
               <input name="startPublic" placeholder="시작일" type="text" id="startPublic"  value = "${article.ca_startPublic}"/>
        
        <p align="center">
               <input name="endPublic" placeholder="종료일" type="text" id="endPublic"  value = "${article.ca_endPublic}"/>
               
        <p align="center">
               <input name="publicTerm" placeholder="공개기간" type="text" id="publicTerm" value = "${article.ca_publicTerm}"/>
            
        <p align="center">
               <input name="phone" placeholder="연락처" type="text" id="phone" value = "${article.ca_phone}"/>
            
        <p align="center">
               <input name="addPhone" placeholder="추가연락처" type="text" id="addPhone" value = "${article.ca_addPhone}"/>

			<input type="submit" value="수정">
            <input type="button" value="뒤로" class="suc" onclick="javascript:window.history.back();">
	
</form>
</body>
</html>