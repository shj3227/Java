package com.ex.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ex.test.allDAO;
import com.ex.test.signUpDTO;

public class InsertCommand implements Command {

	//int a = 1;
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int a = 1;
		String email = request.getParameterValues("email")[0];
		String phonenum = request.getParameterValues("phonenum")[0];
		for(int i = 1; i< request.getParameterValues("email").length; i++)
		{
			email +="@" + request.getParameterValues("email")[i];
		}
		for(int i = 1; i< request.getParameterValues("phonenum").length; i++)
		{
			phonenum +="-" + request.getParameterValues("phonenum")[i];
		}
		signUpDTO dto = new signUpDTO(
				request.getParameter("id"),
				request.getParameter("pw"),
				request.getParameter("name"),
				request.getParameter("nickname"),
				email,
				phonenum,
				request.getParameter("zipcode"),
				request.getParameter("address"),
				a);
		
		allDAO dao = new allDAO();
		int cnt = 0;
		
		try {
			cnt =  dao.insertMember(dto);
			request.setAttribute("result", cnt);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}

}
