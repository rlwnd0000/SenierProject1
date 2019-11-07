package ops.MemberCareer.Beans;

import java.sql.Timestamp;

public class Career {
	private int ca_no; //이력서번호
	private String ca_title; //제목
	private String ca_subTitle; //부제목
	private String ca_selfText; //자기소개
	private String ca_talk; //한마디
	private String ca_job; //직종
	private String ca_address; //주소
	public String getCa_address() {
		return ca_address;
	}
	public void setCa_address(String ca_address) {
		this.ca_address = ca_address;
	}
	private String ca_workTerm; //근무기간
	private String ca_workDay; //근무일시(요일)
	private String ca_workTime; //근무시간
	private Timestamp ca_date; //신청일
	private int ca_sal; //급여
	private String ca_acadamiBg;  //학력
	private String cityName; //주소 시/도명
	private String workName; //근무형태명
	public String getWorkName() {
		return workName;
	}
	public void setWorkName(String workName) {
		this.workName = workName;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCountyName() {
		return countyName;
	}
	public void setCountyName(String countyName) {
		this.countyName = countyName;
	}
	public String getRoadName() {
		return roadName;
	}
	public void setRoadName(String roadName) {
		this.roadName = roadName;
	}
	private String countyName; //주소 시/군명칭
	private String roadName; //주소 도로명칭
	public String getCa_acadamiBg() {
		return ca_acadamiBg;
	}
	public void setCa_acadamiBg(String ca_acadamiBg) {
		this.ca_acadamiBg = ca_acadamiBg;
	}
	private String ca_startPublic; //시작일
	private String ca_endPublic; //종료일
	public String getCa_endPublic() {
		return ca_endPublic;
	}
	public void setCa_endPublic(String ca_endPublic) {
		this.ca_endPublic = ca_endPublic;
	}
	private String ca_publicTerm; //공개기간
	private String ca_phone; //폰번호
	private String ca_addPhone; //추가연락처
	private int ca_private; // 공개비공개여부
	private int workFormNo; //근무번호
	private String id; //아이디
	public int getCa_no() {
		return ca_no;
	}
	public void setCa_no(int ca_no) {
		this.ca_no = ca_no;
	}
	public String getCa_title() {
		return ca_title;
	}
	public void setCa_title(String ca_title) {
		this.ca_title = ca_title;
	}
	public String getCa_subTitle() {
		return ca_subTitle;
	}
	public void setCa_subTitle(String ca_subTitle) {
		this.ca_subTitle = ca_subTitle;
	}
	public String getCa_selfText() {
		return ca_selfText;
	}
	public void setCa_selfText(String ca_selfText) {
		this.ca_selfText = ca_selfText;
	}
	public String getCa_talk() {
		return ca_talk;
	}
	public void setCa_talk(String ca_talk) {
		this.ca_talk = ca_talk;
	}
	public String getCa_job() {
		return ca_job;
	}
	public void setCa_job(String ca_job) {
		this.ca_job = ca_job;
	}
	public String getCa_workTerm() {
		return ca_workTerm;
	}
	public void setCa_workTerm(String ca_workTerm) {
		this.ca_workTerm = ca_workTerm;
	}
	public String getCa_workDay() {
		return ca_workDay;
	}
	public void setCa_workDay(String ca_workDay) {
		this.ca_workDay = ca_workDay;
	}
	public String getCa_workTime() {
		return ca_workTime;
	}
	public void setCa_workTime(String ca_workTime) {
		this.ca_workTime = ca_workTime;
	}
	public Timestamp getCa_date() {
		return ca_date;
	}
	public void setCa_date(Timestamp ca_date) {
		this.ca_date = ca_date;
	}
	public int getCa_sal() {
		return ca_sal;
	}
	public void setCa_sal(int ca_sal) {
		this.ca_sal = ca_sal;
	}
	public String getCa_startPublic() {
		return ca_startPublic;
	}
	public void setCa_startPublic(String ca_startPublic) {
		this.ca_startPublic = ca_startPublic;
	}
	public String getCa_publicTerm() {
		return ca_publicTerm;
	}
	public void setCa_publicTerm(String ca_publicTerm) {
		this.ca_publicTerm = ca_publicTerm;
	}
	public String getCa_phone() {
		return ca_phone;
	}
	public void setCa_phone(String ca_phone) {
		this.ca_phone = ca_phone;
	}
	public String getCa_addPhone() {
		return ca_addPhone;
	}
	public void setCa_addPhone(String ca_addPhone) {
		this.ca_addPhone = ca_addPhone;
	}
	public int getCa_private() {
		return ca_private;
	}
	public void setCa_private(int ca_private) {
		this.ca_private = ca_private;
	}
	public int getWorkFormNo() {
		return workFormNo;
	}
	public void setWorkFormNo(int workFormNo) {
		this.workFormNo = workFormNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
