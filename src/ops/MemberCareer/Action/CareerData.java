package ops.MemberCareer.Action;

import static common.ConUtilDAO.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import ops.MemberCareer.Beans.Career;
import ops.MemberCareer.Beans.Loc;
import ops.MemberCareer.Beans.Work;

//이력서 DAO
public class CareerData {
	Connection con;
	PreparedStatement ps = null;
	ResultSet rs = null;
	private String cityName;	
	private static CareerData instance;
	
	public static CareerData getInstance(){
		if(instance == null)
			instance = new CareerData();
		return instance;
	}
	public void setConnection(Connection con) {
		this.con = con;
	}
	
	public int insertArticle(Career c) { //이력서작성
		int x = 0;
		try {
			String sql = "insert into career values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, c.getCa_title());
			ps.setString(2, c.getCa_subTitle());
			ps.setString(3, c.getCa_selfText());
			ps.setString(4, c.getCa_talk());
			ps.setString(5, c.getCa_job());
			ps.setString(6, c.getCa_address());
			ps.setString(7, c.getCa_workTerm());
			ps.setString(8, c.getCa_workDay());
			ps.setString(9, c.getCa_workTime());
			ps.setTimestamp(10, c.getCa_date());
			ps.setInt(11, c.getCa_sal());
			ps.setString(12, c.getCa_acadamiBg());
			ps.setString(13, c.getCa_startPublic());
			ps.setString(14, c.getCa_endPublic());
			ps.setString(15, c.getCa_publicTerm());
			ps.setString(16, c.getCa_phone());
			ps.setString(17, c.getCa_addPhone());
			ps.setInt(18, c.getCa_private());
			ps.setInt(19, c.getWorkFormNo());
			ps.setString(20, c.getId());
			x = ps.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("이력서작성오류:"+ e);
		}finally {
			close(ps);
		}
		return x;
	}
	
	public ArrayList<Career> selectCareerList(){ //이력서리스트
		String sql="select c.ca_no, c.ca_title, c.ca_subTitle, c.ca_selfText, c.ca_talk, c.ca_job, c.ca_address, c.ca_workTerm, c.ca_workDay, c.ca_workTime, c.ca_date, c.ca_sal, c.ca_acadamiBg, c.ca_startPublic, c.ca_endPublic, c.ca_publicTerm, c.ca_phone, c.ca_addPhone, c.ca_private, w.workName, m.id from career c, work w, member m where c.workFormNo = w.workFormNo and m.id = c.id;";
		ArrayList<Career> careerList = new ArrayList<Career>();
		
		try{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next()){
				do{
				Career c = new Career();
				c.setCa_no(rs.getInt("ca_no"));
				c.setCa_title(rs.getString("ca_title"));
				c.setCa_subTitle(rs.getString("ca_subTitle"));
				c.setCa_selfText(rs.getString("ca_selfText"));
				c.setCa_talk(rs.getString("ca_talk"));
				c.setCa_job(rs.getString("ca_job"));
				c.setCa_address(rs.getString("ca_address"));
				c.setCa_workTerm(rs.getString("ca_workTerm"));
				c.setCa_workDay(rs.getString("ca_workDay"));
				c.setCa_workTime(rs.getString("ca_workTime"));
				c.setCa_date(rs.getTimestamp("ca_date"));
				c.setCa_sal(rs.getInt("ca_sal"));
				c.setCa_acadamiBg(rs.getString("ca_acadamiBg"));
				c.setCa_startPublic(rs.getString("ca_startPublic"));
				c.setCa_endPublic(rs.getString("ca_endPublic"));
				c.setCa_publicTerm(rs.getString("ca_publicTerm"));
				c.setCa_phone(rs.getString("ca_phone"));
				c.setCa_addPhone(rs.getString("ca_addPhone"));
				c.setCa_private(rs.getInt("ca_private"));
				c.setWorkName(rs.getString("workName"));
				c.setId(rs.getString("id"));
				careerList.add(c);
				}while(rs.next());
			}
		}catch(Exception ex){
			System.out.println("이력서리스트오류: " + ex);			
		}finally{
			close(rs);
			close(ps);
		}
		return careerList;
	}
	
	public Career selectDetail(int ca_no) { //이력서 상세보기
		Career c = null;
		try {
			String sql = "select * from career where ca_no=?";
		
			ps = con.prepareStatement(sql);
			ps.setInt(1, ca_no);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				c = new Career();
				c.setCa_no(rs.getInt("ca_no"));
				c.setCa_title(rs.getString("ca_title"));
				c.setCa_subTitle(rs.getString("ca_subTitle"));
				c.setCa_selfText(rs.getString("ca_selfText"));
				c.setCa_talk(rs.getString("ca_talk"));
				c.setCa_job(rs.getString("ca_job"));
				c.setCa_address(rs.getString("ca_address"));
				c.setCa_workTerm(rs.getString("ca_workTerm"));
				c.setCa_workDay(rs.getString("ca_workDay"));
				c.setCa_workTime(rs.getString("ca_workTime"));
				c.setCa_date(rs.getTimestamp("ca_date"));
				c.setCa_sal(rs.getInt("ca_sal"));
				c.setCa_acadamiBg(rs.getString("ca_acadamiBg"));
				c.setCa_startPublic(rs.getString("ca_startPublic"));
				c.setCa_endPublic(rs.getString("ca_endPublic"));
				c.setCa_publicTerm(rs.getString("ca_publicTerm"));
				c.setCa_phone(rs.getString("ca_phone"));
				c.setCa_addPhone(rs.getString("ca_addPhone"));
				c.setCa_private(rs.getInt("ca_private"));
				c.setWorkFormNo(rs.getInt("workFormNo"));
				c.setId(rs.getString("id"));
				
			}
		}catch(Exception e) {
			System.out.println("이력서 상세보기오류 : " + e);
		}finally {
			close(rs);
			close(ps);
		}
		return c;
	}
	
	public int updateArticle(Career article){ //이력서수정

		int updateCount = 0;
		String sql="update career set ca_title=?, ca_subTitle=?, ca_selfText=?, ca_talk=?, ca_job=?, ca_address=?, ca_workTerm=?, ca_workDay=?, ca_workTime=?, ca_sal=?, ca_acadamiBg=?, ca_startPublic=?, ca_endPublic=?, ca_publicTerm=?, ca_phone=?, ca_addPhone=? where ca_no=?";

		try{
			ps = con.prepareStatement(sql);
			ps.setString(1, article.getCa_title());
			ps.setString(2, article.getCa_subTitle());
			ps.setString(3, article.getCa_selfText());
			ps.setString(4, article.getCa_talk());
			ps.setString(5, article.getCa_job());
			ps.setString(6, article.getCa_address());
			ps.setString(7, article.getCa_workTerm());
			ps.setString(8, article.getCa_workDay());
			ps.setString(9, article.getCa_workTime());
			ps.setInt(10, article.getCa_sal());
			ps.setString(11, article.getCa_acadamiBg());
			ps.setString(12, article.getCa_startPublic());
			ps.setString(13, article.getCa_endPublic());
			ps.setString(14, article.getCa_publicTerm());
			ps.setString(15, article.getCa_phone());
			ps.setString(16, article.getCa_addPhone());
			ps.setInt(17, article.getCa_no());
			updateCount = ps.executeUpdate();
		}catch(Exception ex){
			System.out.println("이력서수정오류 : " + ex);
		}finally{
			close(ps);
		}

		return updateCount;
	}
	
	public ArrayList<Work> selectWorkList(){ //직종선택
		String sql="select * from work";
		ArrayList<Work> workList = new ArrayList<Work>();
		
		try{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next()){
				do{
				Work w = new Work();
				w.setWorkFormNo(rs.getInt("workFormNo"));
				w.setWorkName(rs.getString("workName"));
				workList.add(w);
				}while(rs.next());
			}
		}catch(Exception ex){
			System.out.println("직종오류: " + ex);			
		}finally{
			close(rs);
			close(ps);
		}
		return workList;
	}	
	
	public boolean isArticleCareerWriter(int ca_no){ //이력서 번호확인

		String sql="select * from career where ca_no=?";
		boolean isWriter = false;
			
		try{
			ps = con.prepareStatement(sql);
			ps.setInt(1, ca_no);
			rs = ps.executeQuery();
			if(rs.next()) {
				isWriter = true;
			}
		}catch(Exception e){
			System.out.println("isCareerWriter 오류: "+ e);
		}
		finally{
			close(ps);
		}
		return isWriter;
	}
	
	public int deleteArticle(int ca_no){ //이력서 삭제

		String sql="delete from career where ca_no=?";
		int deleteCount=0;

		try{
			ps = con.prepareStatement(sql);
			ps.setInt(1, ca_no);
			deleteCount = ps.executeUpdate();
		}catch(Exception ex){
			System.out.println("Delete오류: "+ex);
		}	finally{
			close(ps);
		}

		return deleteCount;

	}
}

