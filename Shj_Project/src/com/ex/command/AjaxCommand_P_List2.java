package com.ex.command;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.ex.test.postDAO;
import com.ex.test.postDTO;

public class AjaxCommand_P_List2 implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		postDAO dao = new postDAO();
		
		int page = 1;
		int startPage = 0; //x 이상
		int endPage = 2; //x 미만
		int totalPage = 0;
		String tableName = "listByCate";
		String FndType = "";
		String FnKey = "";
		String category = request.getParameter("category");
		System.out.println(category);
		
		if(request.getParameter("page") != null)
		{
			page = Integer.parseInt(request.getParameter("page"));
			startPage = (page); 
			endPage = (page + 1);
		}
		System.out.println(startPage);
		System.out.println(endPage);
		
		try 
		{
			System.out.println("시작합니다");
			
			System.out.println("fnkey로들어감");
			
			if(request.getParameter("fnkey") != null)
			{
				//혹시나 필요하면 쓰자.
			}
			FnKey = (String)request.getParameter("fnkey");
			FndType = (String)request.getParameter("fndtype");
			postDTO[] list = dao.P_List(startPage, endPage, category, tableName, FnKey, FndType);
			//System.out.println(list[0].getP_contents());
			//이게 null값을 불러오려고 하다보니 생기는 문제. 하나 하나 찍어보려고하다보니 null들을 생각하지 않으면 발생.
			request.setAttribute("p_list", list);
			System.out.println("여깁니다.2");
			totalPage  = dao.P_ListCount(tableName);
			System.out.println("여깁니다.");
			System.out.println("현재 페이지는 : " + totalPage);
			System.out.println("현재 페이지에 들어왔습니까 ?");
			request.setAttribute("totalPage", totalPage);
			
			dao.end();
			/*
			 if(request.getParameter("fnkey") != null)
			{
				System.out.println("fnkey로들어감");
				
				FnKey = (String)request.getParameter("fnkey");
				postDTO[] list = dao.P_Find(startPage, endPage, category, tableName, FnKey);
				System.out.println(list[0].getP_contents());
				request.setAttribute("p_list", list);
				
				totalPage  = dao.P_ListCount(tableName);
				System.out.println("현재 페이지는 : " + totalPage);
				System.out.println("현재 페이지에 들어왔습니까 ?");
				request.setAttribute("totalPage", totalPage);
				
				dao.end();
			}
			else
			{
				System.out.println("fnkey로안들어감");
				
				postDTO[] list = dao.P_List(startPage, endPage, category, tableName);
				System.out.println("들어오세용");
				System.out.println(list.length);
				System.out.println("나가세용.");
				request.setAttribute("p_list", list);
				
				totalPage  = dao.P_ListCount(tableName);
				System.out.println("현재 페이지는 : " + totalPage);
				System.out.println("현재 페이지에 들어왔습니까 ?");
				request.setAttribute("totalPage", totalPage);
				
				dao.end();
			}
			 */
			
		} 
		catch (Exception e) 
		{
			// TODO: handle exception
		}
		
		//System.out.println(list[0].getP_contents());
		//request.setAttribute("p_list", list);
		//파라미터와 어트리뷰트의 차이 = 파라미터는 오로지 스트링. 어트리뷰트는 오브젝트?
		//근데 set어트리뷰트밖에 없었구나... 하... 잠깐 안했다고 전혀 모르겠어하는 나... 망했다맨이야..
		

	}
	
}
