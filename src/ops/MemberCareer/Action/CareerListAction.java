package ops.MemberCareer.Action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Action;
import common.ActionForward;
import ops.MemberCareer.Beans.Career;

public class CareerListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ActionForward forward = null;
		CareerListService cls = new CareerListService();
   		ArrayList<Career> careerList = cls.getCareerList();
   		request.setAttribute("careerList", careerList);
   		forward = new ActionForward("./careerList.jsp",false);
	
   		return forward;
	}
}
