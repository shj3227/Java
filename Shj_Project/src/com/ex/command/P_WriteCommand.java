package com.ex.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ex.test.postDAO;

public class P_WriteCommand implements Command {

	//int a = 1;
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		String P_section = request.getParameter("cate_3");
		String P_title = request.getParameter("title");
		String P_id = (String)session.getAttribute("userID");
				//(String)session.getAttribute("userID");
		String P_contents = request.getParameter("contents");
		String P_category = request.getParameter("cate_2");
		
		
		postDAO dao = new postDAO();
		int cnt = 0;
		
		try {
			cnt =  dao.insertPost(P_section, P_title, P_id, P_contents, P_category);
			request.setAttribute("result", cnt);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}

}
