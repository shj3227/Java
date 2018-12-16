package com.ex.command;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.ex.test.postDAO;
import com.ex.test.postDTO;

public class P_ViewCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		postDAO dao = new postDAO();
		
		int p_seqnum = 0;
		if(request.getParameter("p_seqnum") != null)
		{
			p_seqnum = Integer.parseInt(request.getParameter("p_seqnum"));
		}
		
		try 
		{
			System.out.println("시작합니다");
			System.out.println("p_seqnum : " + p_seqnum);
			postDTO list = dao.P_List(p_seqnum);
			request.setAttribute("p_list", list);
			dao.end();
			
			
		} 
		catch (Exception e) 
		{
			// TODO: handle exception
		}
		
		

	}
	
}
