<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서작성</title>
 <script>
  function showPopup() 
  { 
	  window.open("careerWorkSearch.ops", "a", "width=400, height=300, left=100, top=50"); 
  }
  
  function checkValue()
  {
      var form = document.userInfo;
  
      if(!form.id.value){
          alert("아이디를 입력하세요!");
          return false;
      }
      if(!form.title.value){
          alert("제목을 입력하세요!");
          return false;
      }
      if(!form.subTitle.value){
          alert("부제목을 입력하세요!");
          return false;
      }
      if(!form.ca_selfText.value){
          alert("자기소개를 입력하세요!");
          return false;
      }
      if(!form.talk.value){
          alert("한마디를 입력하세요!");
          return false;
      }
      if(!form.job.value){
          alert("직종을 입력하세요!");
          return false;
      }
      if(!form.workForm.value){
          alert("근무형태를 입력하세요!");
          return false;
      }
      if(!form.location.value){
          alert("주소를 입력하세요!");
          return false;
      }
      if(!form.workTerm.value){
          alert("근무기간을 입력하세요!");
          return false;
      }
      if(!form.workDay.value){
          alert("근무일시를 입력하세요!");
          return false;
      }
      if(!form.workTime.value){
          alert("근무시간을 입력하세요!");
          return false;
      }
      if(!form.sal.value){
          alert("급여를 입력하세요!");
          return false;
      }
      if(!form.acadamiBg.value){
          alert("학력을 입력하세요!");
          return false;
      }
      if(!form.startPublic.value){
          alert("근무시작일을 입력하세요!");
          return false;
      }
      if(!form.endPublic.value){
          alert("근무종료일을 입력하세요!");
          return false;
      }
      if(!form.publicTerm.value){
          alert("공개기간을 입력하세요!");
          return false;
      }
      if(!form.phone.value){
          alert("연락처를 입력하세요!");
          return false;
      }
      if(!form.addPhone.value){
          alert("추가연락처를 입력하세요!");
          return false;
      }
  }
  </script>
<style type="text/css">
h2 {
   text-align: center;
}

 input:not([type="radio"]), textarea {
  width: 50%;
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
   <!-- 이력서 등록 -->
      <h2>이력서작성</h2>
      <form action="careerWritePro.ops" method="post" id = "chkForm" name="userInfo" onsubmit="return checkValue()">
		  <p align="center">
          <input name="id" placeholder="아이디" type="text" id="id"  />
               
          <p align="center">
          <input name="title" placeholder="제목" type="text" id="title"  />
            
          <p align="center">
          <input type="text" placeholder="부제목" name="subTitle" id="subTitle"  /></p>
               
          <p align="center">
          <textarea id="ca_selfText" placeholder="자기소개" name="ca_selfText" cols="68" rows="10"></textarea>
               
          <p align="center">
          <textarea id="talk" placeholder="한마디" name="talk" cols="68" rows="3" ></textarea>
            
          <p align="center">
          <input name="job" placeholder="직종" type="text" id="job" />
               
          <p align="center">
          <input name="workForm" placeholder="근무형태" type="text" id="workForm" />
          <input type="button" value="검색" onclick="showPopup();" />
               
          <p align="center">
          <input name="address" placeholder="주소" type="text" id="address" />
               
          <p align="center">
          <input name="workTerm" placeholder="근무기간" type="text" id="workTerm" />
            
          <p align="center">
          <input name="workDay" placeholder="근무일시" type="text" id="workDay" />
               
          <p align="center">
          <input name="workTime" placeholder="근무시간" type="text" id="workTime" />
               
          <p align="center">
          <input name="sal" placeholder="급여" type="text" id="sal"/>
            
          <p align="center">
          <input name="acadamiBg" placeholder="학력" type="text" id="acadamiBg"  />
           
          <p align="center">
          <input name="startPublic" placeholder="근무시작일" type="text" id="startPublic"  />
          
          <p align="center">
          <input name="endPublic" placeholder="근무종료일" type="text" id="endPublic"  />
            
          <p align="center">
          <input name="publicTerm" placeholder="공개기간" type="text" id="publicTerm" />
            
          <p align="center">
          <input name="phone" placeholder="연락처" type="text" id="phone" />
            
          <p align="center">
          <input name="addPhone" placeholder="추가연락처" type="text" id="addPhone" />
               
          <p align="center">
          <input name="public" type="radio" id="public" value="1" />공개
          <input name="public" type="radio" id="public" value="0" />비공개<br><br>
   
          <input type="submit" value="등록">
      </form>
   
</body>
</html>