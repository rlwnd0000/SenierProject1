# https://ops.or.kr/ops/main 저희팀이 만든 구인구직(취업연계) 사이트입니다.(졸업작품)

### 프로젝트 개요<br>
청년들의 실업률이 증가하고 회사에서 요구하는 수준과 취업의 문턱이 높아짐에 따라 개인 포트폴리오 구성 및 기업, 사회단체를 저희 사이트를 통해 구직자와 연결해주고 청년들의 취업률을 높이고자 만들어 보았습니다.

### 프로젝트에서 역할<br>
- 졸업작품당시 팀에서 맡은 역할인 DB설계와 백엔드 개발(JSP MVC2 모델이용)을 담당했습니다.<br>
- DB 설계 및 구축
- 이력서작성, 리스트보기, 수정, 조회, 삭제 개발<br>
- 공고작성, 수정, 리스트보기, 조회, 삭제 개발<br>
- 관리자 페이지의 공지사항 작성, 수정, 조회, 삭제 개발<br>
- 관리자 페이지의 Q&A 작성, 수정, 조회, 삭제 개발<br>
- 1:1 문의 게시판 작성, 수정, 조회, 삭제, 답변달기 개발을 맡아 담당하였습니다.<br>

### 구성파일<br>
- SenierPriject1에는 DB ERD이미지 및 파일과 덤프파일, 이력서 부분 파일이있고 **나머지파일은 SenierProject2에 올리도록하겠습니다.**<br>
- DB/Physical.png, Logical.png -> ERD 이미지<br>
- DB/dump.sql-> sql dump 파일<br>
- src/ops/MemberCareer -> 이력서작성, 리스트보기, 수정, 조회, 삭제
- src/ops/MemberCareer/Action/~Action -> action
- src/ops/MemberCareer/Action/~Data -> DAO
- src/ops/MemberCareer/Beans -> vo
- src/Controller -> Controller
- SenierProject1/WebContent/~.jsp -> View

### 프로젝트 주요기능<br>
일반회원
- 회원가입 및 로그인 
- 포트폴리오작성
- 이력서작성(포트폴리오첨부가능)
- 작성된 공고 지원
- 통합검색

기업회원
- 공고작성
- 이력서(포트폴리오) 열람 및 승인 거절

관리자
- 공지사항 작성
- Q&A 조회
- 1:1 게시판 답변

