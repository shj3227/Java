package com.ex.command;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.ex.test.postDAO;
import com.ex.test.postDTO;

public class AjaxCommand_P_Find implements Command {

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
		postDAO dao = new postDAO();
		//되냐?
		int page = 1;
		int startPage = 0; //x 이상
		int endPage = 2; //x 미만
		String tableName = "listByCate";
		
		
		try {
			if(request.getParameter("page") != null)
			{
				page = Integer.parseInt(request.getParameter("page"));
				startPage = (page); 
				endPage = (page + 1);
			}
			
			
			String category = request.getParameter("category");
			String FnKey = request.getParameter("fnkey");
			
			
			int totalPage  = dao.P_ListCount(tableName); //총갯수를 여기다 넣고 필요할때마다 꺼내쓰는건 어때?
			//일부러 conn부분은 종료하지 않고 나중에 다음줄 list부분에서 끝나고 종료한다. 이것이 꼬옴수우~쓰다가 걸림 시바거....
			
			postDTO[] arr = dao.P_Find(startPage, endPage, category, tableName, FnKey);
			
			JSONObject json = new JSONObject();
			
			
			int count  = (arr == null) ? 0 : arr.length;
			//여기다 넣는 이유는 서순. 만약 카테고리가 아무것도 없다면, 정상적인 방법으로 들어온게 아니기 떄문에
			//다른곳으로 나가게끔 해줘야한다.
			if(request.getParameter("category") == null)
			{
				count = 0;
			}
			
			json.put("count", count);
			json.put("totalPage", totalPage);
			
			JSONArray P_ListArr = new JSONArray();
			
			for(int i = 0; i < count ; i++)
			{
				JSONObject P_List  = new JSONObject();
				
				P_List.put("P_seqnum", arr[i].getP_seqnum());
				P_List.put("P_section", arr[i].getP_section());
				P_List.put("P_title", arr[i].getP_title());
				P_List.put("P_id", arr[i].getP_id());
				P_List.put("P_regdate", arr[i].getP_regdate());
				P_List.put("P_cnt_read", arr[i].getP_cnt_read());
				P_List.put("P_cnt_like", arr[i].getP_cnt_like());
				P_List.put("P_contents", arr[i].getP_contents());
				P_List.put("P_category", arr[i].getP_category());
				
				P_ListArr.put(P_List);
			}
			json.put("P_ListArr", P_ListArr);
			
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
