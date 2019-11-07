package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Action;
import common.ActionForward;
import ops.MemberCareer.Action.CareerDeleteProAction;
import ops.MemberCareer.Action.CareerDetailAction;
import ops.MemberCareer.Action.CareerListAction;
import ops.MemberCareer.Action.CareerModifyFormAction;
import ops.MemberCareer.Action.CareerModifyProAction;
import ops.MemberCareer.Action.CareerWorkSearchAction;
import ops.MemberCareer.Action.CareerWriteProAction;

/**
 * Servlet implementation class MemberCareerController
 */
@WebServlet("*.ops")
public class MemberCareerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberCareerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/careerWriteForm.ops")) {
				forward = new ActionForward("./careerWrite.jsp",true);
			
		}
		else if(command.equals("/careerWritePro.ops")) {
			action = new CareerWriteProAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/careerList.ops")) {
			action = new CareerListAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/careerDetail.ops")) {
			action = new CareerDetailAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/careerModifyForm.ops")) {
			action = new CareerModifyFormAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/careerModifyPro.ops")) {
			action = new CareerModifyProAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/careerWorkSearch.ops")) {
			action = new CareerWorkSearchAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/careerDeletePro.ops")) {
			action = new CareerDeleteProAction();
			try {
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else {	
		}
		
		if(forward!=null) {
			if(forward.isRedirect()) { 
				response.sendRedirect(forward.getPath());
			} else { 
				RequestDispatcher dp = request.getRequestDispatcher(forward.getPath());
				dp.forward(request, response);
			}
		}
	}

}

