package ops.MemberCareer.Action;

import static common.ConUtilDAO.*;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Action;
import common.ActionForward;
import ops.MemberCareer.Beans.Career;

//이력서 상세보기 Action
public class CareerDetailAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int ca_no = Integer.parseInt(request.getParameter("ca_no"));
		
		//////////////////////////////
		Career view = null;
		Connection con = getConnection();
		CareerData cd = CareerData.getInstance();
		cd.setConnection(con);
		view = cd.selectDetail(ca_no);
		close(con);
		//////////////////////////////
		
		request.setAttribute("view", view);
		ActionForward forward = new ActionForward("careerView.jsp",false);
		return forward;
}
}

