package com.ex.command;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//세션 추가
import javax.servlet.http.HttpSession;
//세션 추가

import com.ex.test.allDAO;

public class DeleteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int cnt =0;
		allDAO dao = new allDAO();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("userID");
		String pw = request.getParameter("pw");
		//삭제시 기준은 id. 그러니까 id로 일단 맞는지부터?
		
		cnt = dao.deleteById(id, pw);
		//값이 0일때 반응 추가.
		request.setAttribute("result", cnt);
	}
}
