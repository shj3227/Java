package com.ex.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//세션 추가
import javax.servlet.http.HttpSession;
//세션 추가

import com.ex.test.allDAO;

public class LoginCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		allDAO dao = new allDAO();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String[] list = new String[2];
		
		try {
			list = dao.login(id, pw);
			if(list[0].equals("1")) {
				HttpSession session = request.getSession();
				session.setAttribute("userID", list[1]);
				session.setAttribute("userName", list[2]);
				request.setAttribute("result", 1);
			}
			else{
				request.setAttribute("result", 0);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
