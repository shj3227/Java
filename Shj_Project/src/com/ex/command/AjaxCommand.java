package com.ex.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.ex.test.signUpDTO;

public class AjaxCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		new ListCommand().execute(request, response);
		
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
		signUpDTO[] arr = (signUpDTO[])request.getAttribute("list");
		
		JSONObject json = new JSONObject();
		
		int count  = (arr == null) ? 0 : arr.length;
		json.put("count", count);
		
		JSONArray memberArr = new JSONArray();
		
		for(int i = 0; i < count ; i++)
		{
			JSONObject member  = new JSONObject();
			
			member.put("id", arr[i].getId());
//			member.put("pw", arr[i].getPw());
//			member.put("name", arr[i].getName());
//			member.put("nickname", arr[i].getNickname());
//			member.put("email", arr[i].getEmail());
//			member.put("phonenum", arr[i].getPhonenum());
//			member.put("address", arr[i].getAddress());
//			member.put("grade", arr[i].getGrade());
			
			memberArr.put(member);
		}
		json.put("member", memberArr);
		
		String jsonString = json.toString();
		response.setContentType("application/json; charset=utf-8");
		
		try {
			response.getWriter().write(jsonString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
