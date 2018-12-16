package com.ex.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ex.test.allDAO;
import com.ex.test.signUpDTO;

public class UpdateCommand implements Command {

	//int a = 1;
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		allDAO dao = new allDAO();
		int cnt = 0;
		
		try {
			cnt =  dao.updateMember(
					request.getParameter("id"), request.getParameter("pw"),
					request.getParameter("name"), request.getParameter("nickname"), 
					request.getParameter("email"), request.getParameter("phonenum"),
					request.getParameter("zipcode"), request.getParameter("address")
					);
			
			System.out.println(cnt);
			
			request.setAttribute("result", cnt);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}

}
