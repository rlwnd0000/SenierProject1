package ops.MemberCareer.Action;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static common.ConUtilDAO.*;
import common.Action;
import common.ActionForward;
import ops.MemberCareer.Beans.Career;
//이력서작성 action 및 service
public class CareerWriteProAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ActionForward forward = null;
		Career c = new Career();
		c.setId(request.getParameter("id"));
		c.setCa_title(request.getParameter("title"));
		c.setCa_subTitle(request.getParameter("subTitle"));
		c.setCa_selfText(request.getParameter("ca_selfText"));
		c.setCa_talk(request.getParameter("talk"));
		c.setCa_job(request.getParameter("job"));
		c.setCa_address(request.getParameter("address"));
		c.setWorkFormNo(Integer.parseInt(request.getParameter("workForm")));
		c.setCa_workTerm(request.getParameter("workTerm"));
		c.setCa_workDay(request.getParameter("workDay"));
		c.setCa_workTime(request.getParameter("workTime"));
		c.setCa_date(new Timestamp(System.currentTimeMillis()));
		c.setCa_sal(Integer.parseInt(request.getParameter("sal")));
		c.setCa_acadamiBg(request.getParameter("acadamiBg"));
		c.setCa_startPublic(request.getParameter("startPublic"));
		c.setCa_endPublic(request.getParameter("endPublic"));
		c.setCa_publicTerm(request.getParameter("publicTerm"));
		c.setCa_phone(request.getParameter("phone"));
		c.setCa_addPhone(request.getParameter("addPhone"));
		c.setCa_private(Integer.parseInt(request.getParameter("public")));
		
		Connection con = getConnection();
		CareerData cd = CareerData.getInstance();
		cd.setConnection(con);
		int x = cd.insertArticle(c);
		if(x>0) {
			commit(con);
			forward = new ActionForward("./mainForm.jsp",true);
		}else {
			rollback(con);
			response.setContentType("text/html;charset = UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('작성실패');");
			out.println("history.back();");
			out.println("</script>");
			
		}
		close(con);
		return forward;
	}

}
