package com.ex.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class postDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "scott";
	String pw = "tiger";
	
	public postDAO()
	{
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, pw);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int insertPost(String P_section, String P_title, 
			String P_id, String P_contents, String P_category) throws SQLException 
	{
		
		int cnt = 0;
		
		String sql  = "INSERT INTO Post(P_seqnum, P_section, P_title, P_id, P_regdate, P_cnt_read, P_cnt_like, P_contents, P_category) " +
				"VALUES(post_seq.nextval, ?, ?, ?, sysdate, '0', '0', ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, P_section);
			pstmt.setString(2, P_title);
			pstmt.setString(3, P_id);
//			pstmt.setString(4, P_regdate);  //P_regdate 초기값을 정해주는 애
//			pstmt.setString(5, 0); //P_cnt_read 초기값이 0 인 애들
//			pstmt.setString(6, 0); //P_cnt_like 초기값이 0 인 애들
			pstmt.setString(4, P_contents);
			pstmt.setString(5, P_category);
			
			cnt = pstmt.executeUpdate();
			
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
		return cnt;
		
	}
	//카테고리 글 가져오기
	public void getP_ListBymCate(String category, String tableName) throws SQLException
	{
		System.out.println(category);
		String sql = "CREATE OR REPLACE VIEW "+tableName+ " AS " + 
					"select * from post " + 
					"where p_category = '"+ category +"'";
		/*
		 * "CREATE OR REPLACE VIEW "+tableName+ " AS " + 
				"select * from post " + 
				"where p_category = '"+ category +"'";
				*/
		/*
		 * "CREATE OR REPLACE VIEW ? AS select * from post where p_category = ?"
		 * */
		//일단 바인드 함수가 안되니 다르게 처리해봄.
		//물어볼것.
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.executeQuery();
		if(pstmt != null)pstmt.close();
		
//		pstmt.setString(1, tableName);
//		pstmt.setString(2, category);
//		pstmt.executeUpdate();
//		System.out.println(sql);
	}
	
	//카테고리 + 찾기 글 가져오기
	public void getP_ListBymCate(String category, String tableName, String FnKey,
			String fndType) throws SQLException
	{
		String fnkey = "";
		System.out.println("들어온 fndtype의 값은 : " + fndType);
		if(FnKey != null)
		{
			
			if(fndType.equals("subject"))
			{
				fnkey = " and p_title like '%"+ FnKey +"%'";
			}
			else if(fndType.equals("content"))
			{
				fnkey = " and p_contents like '%"+ FnKey +"%'";
			}
			else if(fndType.equals("subncon"))
			{
				fnkey = " and p_contents like '%"+ FnKey 
						+"%' or p_title like '%"+ FnKey + "%'";
				//솔직히 이거 맞는지 모르겠음. 결과는 나오는데 이해 안감ㅎ ㅎ;;;
			}
			else if(fndType.equals("member_name"))
			{
				fnkey = " and p_id like '%"+ FnKey +"%'";
			}
		}
		
		System.out.println(category);
		String sql = "CREATE OR REPLACE VIEW "+tableName+ " AS " + 
					"select * from post " + 
					"where p_category = '"+ category +"'" + fnkey;
		/*
		 * "CREATE OR REPLACE VIEW "+tableName+ " AS " + 
				"select * from post " + 
				"where p_category = '"+ category +"'";
				*/
		/*
		 * "CREATE OR REPLACE VIEW ? AS select * from post where p_category = ?"
		 * */
		//일단 바인드 함수가 안되니 다르게 처리해봄.
		//물어볼것.
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.executeQuery();
		if(pstmt != null)pstmt.close();
		
//			pstmt.setString(1, tableName);
//			pstmt.setString(2, category);
//			pstmt.executeUpdate();
//			System.out.println(sql);
	}
	
	
	//판매/구매 게시글 가져오기
	public postDTO[] P_List() throws SQLException
	{
		/*
		 * 	String sql =  "SELECT COUNT(*) FROM post";
		pstmt= conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		rs.next();
		cnt = rs.getInt(1);
		if(pstmt != null)pstmt.close();
		if(rs != null)rs.close();
		 * 
		 * */
		
		ArrayList<postDTO> list = new ArrayList<postDTO>();
		String sql = "select * from post";
		
		pstmt= conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		
		while(rs.next())
		{
			postDTO post = new postDTO(rs.getInt(1),rs.getString(2),rs.getString(3),
					rs.getString(4),rs.getString(5),rs.getInt(6),
					rs.getInt(7),rs.getString(8),rs.getString(9));
			list.add(post);
		}
		
		postDTO[] arr = new postDTO[list.size()];
		list.toArray(arr);
		
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
		
		return arr;	
	}
	
	public postDTO[] P_List(int startPage, int endPage) throws SQLException
	{
		
		ArrayList<postDTO> list = new ArrayList<postDTO>();
		String sql = "SELECT * FROM " + 
				"(SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM post ORDER BY p_seqnum DESC) T)" + 
				"WHERE RNUM >= ? AND RNUM < ?";
		
		pstmt= conn.prepareStatement(sql);
		pstmt.setInt(1, startPage);
		pstmt.setInt(2, endPage);
		rs = pstmt.executeQuery();
		
		
		while(rs.next())
		{
			postDTO post = new postDTO(rs.getInt(2),rs.getString(3),rs.getString(4),
					rs.getString(5),rs.getString(6),rs.getInt(7),
					rs.getInt(8),rs.getString(9),rs.getString(10));
			list.add(post);
		}
		
		postDTO[] arr = new postDTO[list.size()];
		list.toArray(arr);
		
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
		
		return arr;	
	}
	
	public postDTO[] P_List(int startPage, int endPage, String category, String tableName) throws SQLException
	{
		
		ArrayList<postDTO> list = new ArrayList<postDTO>();
		getP_ListBymCate(category, tableName);
		String sql = "SELECT * FROM " + 
				"(SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM "+ tableName +" ORDER BY p_seqnum DESC) T)" + 
				"WHERE RNUM >= ? AND RNUM < ?";
		
		System.out.println(sql);
		
		pstmt= conn.prepareStatement(sql);
		pstmt.setInt(1, startPage);
		pstmt.setInt(2, endPage);
		rs = pstmt.executeQuery();
		
		
		while(rs.next())
		{
						
			postDTO post = new postDTO(rs.getInt(2),rs.getString(3),rs.getString(4),
					rs.getString(5),rs.getString(6),rs.getInt(7),
					rs.getInt(8),rs.getString(9),rs.getString(10));
			System.out.println(post.getP_contents());
			list.add(post);
		}
		
		postDTO[] arr = new postDTO[list.size()];
		list.toArray(arr);
		
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
		
		return arr;	
	} 

	
	public int P_ListCount(String tableName) throws SQLException {
		
		int cnt = 0;
		String sql =  "SELECT COUNT(*) FROM "+tableName;
		pstmt= conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		rs.next();
		cnt = rs.getInt(1);
		if(pstmt != null)pstmt.close();
		if(rs != null)rs.close();
//		if(conn != null) conn.close();
		
		return cnt;	
	}
	public int P_ListCount() throws SQLException {
		
		int cnt = 0;
		String sql =  "SELECT COUNT(*) FROM post";
		pstmt= conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		rs.next();
		cnt = rs.getInt(1);
		if(pstmt != null)pstmt.close();
		if(rs != null)rs.close();
//		if(conn != null) conn.close();
		
		return cnt;	
	}
	
	//찾기
	public postDTO[] P_Find(int startPage, int endPage, String category, String tableName, String FnKey) throws SQLException
	{
		
		ArrayList<postDTO> list = new ArrayList<postDTO>();
		getP_ListBymCate(category, tableName);
		String sql = "SELECT * FROM " + 
				"(SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM "+ tableName +" where p_contents like '%"
				+ FnKey + "%' ORDER BY p_seqnum DESC) T) WHERE RNUM >= ? AND RNUM < ?";
		
		System.out.println(sql);
		
		pstmt= conn.prepareStatement(sql);
		pstmt.setInt(1, startPage);
		pstmt.setInt(2, endPage);
		rs = pstmt.executeQuery();
		
		
		while(rs.next())
		{
						
			postDTO post = new postDTO(rs.getInt(2),rs.getString(3),rs.getString(4),
					rs.getString(5),rs.getString(6),rs.getInt(7),
					rs.getInt(8),rs.getString(9),rs.getString(10));
			list.add(post);
		}
		
		postDTO[] arr = new postDTO[list.size()];
		list.toArray(arr);
		
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		//if(conn != null) conn.close();
		
		return arr;	
	} 
	
	//찾기+ 게시글 긁어오기 통합.
	public postDTO[] P_List(int startPage, int endPage, String category, String tableName, String FnKey,
			String fndType) throws SQLException
	{
		
		ArrayList<postDTO> list = new ArrayList<postDTO>();
		getP_ListBymCate(category, tableName, FnKey, fndType);
		String sql = "SELECT * FROM " + 
				"(SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM "+ tableName 
				+" ORDER BY p_seqnum DESC) T) WHERE RNUM >= ? AND RNUM < ?";
		
		System.out.println(sql);
		
		pstmt= conn.prepareStatement(sql);
		pstmt.setInt(1, startPage);
		pstmt.setInt(2, endPage);
		rs = pstmt.executeQuery();
		
		
		while(rs.next())
		{
						
			postDTO post = new postDTO(rs.getInt(2),rs.getString(3),rs.getString(4),
					rs.getString(5),rs.getString(6),rs.getInt(7),
					rs.getInt(8),rs.getString(9),rs.getString(10));
			list.add(post);
		}
		
		postDTO[] arr = new postDTO[list.size()];
		list.toArray(arr);
		
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		//if(conn != null) conn.close();
		
		return arr;	
	} 
	
	//딱 하나만 가져오기
	public postDTO P_List(int p_seqnum) throws SQLException
	{
		
		
		String sql = "SELECT * FROM post where p_seqnum = ?";
		System.out.println(sql);
		pstmt= conn.prepareStatement(sql);
		pstmt.setInt(1, p_seqnum);
		rs = pstmt.executeQuery();
		
		rs.next();
		postDTO post = new postDTO(rs.getInt(1),rs.getString(2),rs.getString(3),
				rs.getString(4),rs.getString(5),rs.getInt(6),
				rs.getInt(7),rs.getString(8),rs.getString(9));
		
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
		
		return post;	
	} 
	
	public void end()
	{
		try {
			if(conn != null)conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
