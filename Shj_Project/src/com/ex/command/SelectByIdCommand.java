package com.ex.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ex.test.allDAO;
import com.ex.test.signUpDTO;

public class SelectByIdCommand implements Command {

	//int a = 1;
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		allDAO dao = new allDAO();
		signUpDTO dto = new signUpDTO();
		HttpSession session = request.getSession();
		//session.getAttribute("userID");
		//session.getAttribute("userName");
		String id = (String)session.getAttribute("userID");;
		System.out.println(session.getAttribute("userID"));
		try {
			dto =  dao.createSignUpDto(id);
			System.out.println(dto);
			request.setAttribute("SelectById", dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}

}
