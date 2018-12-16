package com.ex.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ex.test.allDAO;
import com.ex.test.signUpDTO;

public class ListCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		allDAO dao = new allDAO();
		signUpDTO[] arr = null;
		
		try {
			arr = dao.select();
			request.setAttribute("list", arr);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
