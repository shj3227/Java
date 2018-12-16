package com.ex.command;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.ex.test.allDAO;

public class AjaxCommand_MCate implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String reqType = request.getParameter("reqType");
		
		if(reqType == null) reqType = "json";
		
		switch(reqType)
		{
		case "xml":
			//나중에 추가.
			break;
		case "json":
			responseJSON(request, response);
			break;
		}

	}
	
	private void responseJSON(HttpServletRequest request, HttpServletResponse response)
	{
		allDAO dao = new allDAO();
		String L_Cate = request.getParameter("L_Cate");
		//되냐?
		try {
			String[] arr = dao.m_categorylist(L_Cate);
			
			JSONObject json = new JSONObject();
			
			int count  = (arr == null) ? 0 : arr.length;
			json.put("count", count);
			
			JSONArray M_CategoryArr = new JSONArray();
			
			for(int i = 0; i < count ; i++)
			{
				JSONObject M_Category  = new JSONObject();
				
				M_Category.put("M_Category", arr[i]);
				
				M_CategoryArr.put(M_Category);
			}
			json.put("M_CategoryArr", M_CategoryArr);
			
			String jsonString = json.toString();
			response.setContentType("application/json; charset=utf-8");
			try {
				response.getWriter().write(jsonString);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	
	}

}
