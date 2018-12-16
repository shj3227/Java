package com.ex.command;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.ex.test.allDAO;

public class AjaxCommand_LCate implements Command {

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
		//되냐?
		try {
			String[] arr = dao.categorylist();
			
			JSONObject json = new JSONObject();
			
			int count  = (arr == null) ? 0 : arr.length;
			json.put("count", count);
			
			JSONArray L_CategoryArr = new JSONArray();
			
			for(int i = 0; i < count ; i++)
			{
				JSONObject L_Category  = new JSONObject();
				
				L_Category.put("L_Category", arr[i]);
				
				L_CategoryArr.put(L_Category);
			}
			json.put("L_CategoryArr", L_CategoryArr);
			
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
