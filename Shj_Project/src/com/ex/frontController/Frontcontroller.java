package com.ex.frontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ex.command.AjaxCommand;
import com.ex.command.AjaxCommand_LCate;
import com.ex.command.AjaxCommand_MCate;
import com.ex.command.AjaxCommand_P_Find;
import com.ex.command.AjaxCommand_P_List;
import com.ex.command.AjaxCommand_P_List2;
import com.ex.command.AjaxCommand_P_ListByCate;
import com.ex.command.ChangePwCommand;
import com.ex.command.Command;
import com.ex.command.DeleteCommand;
import com.ex.command.InsertCommand;
import com.ex.command.LoginCommand;
import com.ex.command.P_ViewCommand;
import com.ex.command.P_WriteCommand;
import com.ex.command.SelectByIdCommand;
import com.ex.command.UpdateCommand;
import com.ex.command.findIdCommand;
import com.ex.test.signUpDTO;

import javafx.scene.control.Alert;

/**
 * Servlet implementation class Frontcontroller
 */
@WebServlet("*.do")
public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   public Frontcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		String page = null;
		
		int result = 0;
		
		String viewPage = null;
		Command command = null;
		
		
		switch (com) {
		case "/insert.do":
			
			command = new InsertCommand();
			command.execute(request, response);
			
			viewPage = "pageLoading.jsp?getPage=page_test"; //대소문자 구분하는 또라이임.
			break;
			
		case "/ajaxList.do":
			new AjaxCommand().execute(request, response);
			return;
			
		case "/ajaxList_lcate.do":
			new AjaxCommand_LCate().execute(request, response);
			return;
			
		case "/ajaxList_mcate.do":
			new AjaxCommand_MCate().execute(request, response);
			return;
			
		case "/update.do":
			command =new UpdateCommand();
			command.execute(request, response);
			viewPage = "P__Notice.jsp";
			break;
			
		case "/delete.do":
			command =new DeleteCommand();
			command.execute(request, response);
			viewPage = "withdrawal_Check.jsp";
			break;
			
		case "/list.do":
			page = "Join.jsp";
			request.setAttribute("page", page);
			viewPage = "P__Notice.jsp";
			break;
			
		case "/QnA.do":
			page = "QnA.jsp";
			request.setAttribute("page", page);
			viewPage = "P__Notice.jsp";
			break;
			
		case "/main.do":
			command = new LoginCommand();
			command.execute(request, response);
			page = (String)request.getParameter("page");
			if(page != null) {
				viewPage = "page.jsp?page="+page+".jsp"; 
			}
			else {
				//경고창을 띄우게 해야 한다. < 이 자리에 뭔가를 넣음.
				viewPage = "Login.jsp";
			}
			break;
			
		case "/login.do":
			command = new LoginCommand();
			command.execute(request, response);
			result = (int)request.getAttribute("result");
			if(result != 0) {
				page = "QnA.jsp";
				request.setAttribute("page", page);
				viewPage = "pageLoading.jsp"; 
			}
			else {
				//경고창을 띄우게 해야 한다. < 이 자리에 뭔가를 넣음.
				viewPage = "Login.jsp";
			}
			break;
			
		//삭제
		case "/withdrawal.do":
			command = new DeleteCommand();
			command.execute(request, response);
			result = (int)request.getAttribute("result");
			viewPage = "withdrawal_Check.jsp";
			break;
			
		case "/selectbyid.do":
			command = new SelectByIdCommand();
			command.execute(request, response);
			viewPage = "Modification.jsp"; 
			break;
			
		case "/changePw.do":
			command = new ChangePwCommand();
			command.execute(request, response);
			viewPage = "ChangePw.jsp";
			break;
			
		case "/findId.do":
			command = new findIdCommand();
			command.execute(request, response);
			viewPage = "sendId.jsp";
			break;
			
		/// post부분
		case "/write.do":
			
			command = new P_WriteCommand();
			command.execute(request, response);
			if(session.getAttribute("userID") != null) {
				viewPage = "pageLoading.jsp"; 
			}
			else
			{
				viewPage = "02_Beauty.jsp";
			}
			
			break;
			
		case "/p_view.do":
			
			command = new P_ViewCommand();
			command.execute(request, response);
			
			viewPage = "Write_Read_Test.jsp"; 
			break;	
			
		case "/ajaxList_p_list.do":
			new AjaxCommand_P_List().execute(request, response);
			return;
			
		case "/ajaxList_p_list2.do":
			
			command = new AjaxCommand_P_List2();
			command.execute(request, response);
			
			viewPage = "02_Beauty.jsp"; //대소문자 구분하는 또라이임.
			break;
			
		case "/ajaxList_p_listByCate.do":
			if(request.getParameter("category") == null)
			{
				viewPage = "P__Notice.jsp";
				break;
				//카테고리가없을때 예외처리.
			}
			new AjaxCommand_P_ListByCate().execute(request, response);
			return;
			
		case "/ajaxList_p_find.do":
			if(request.getParameter("category") == null)
			{
				viewPage = "P__Notice.jsp";
				break;
				//카테고리가없을때 예외처리.
			}
			new AjaxCommand_P_Find().execute(request, response);
			return;
			
			
		default:
			break;
		}
		
		// request 를 forward 해줌
		if(viewPage != null) {			
			System.out.println(viewPage);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
		
	}

}
