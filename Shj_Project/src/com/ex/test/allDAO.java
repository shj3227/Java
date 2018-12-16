package com.ex.test;

import java.sql.*;
import java.util.ArrayList;
import java.util.Random;

public class allDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "scott";
	String pw = "tiger";
	
	public allDAO()
	{
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, pw);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	//////////회원가입추가
	public int  insertMember(String id, String pw, String name, 
			String nickname,String email,String phonenum,String zipcode, String address,int grade) throws SQLException
	{
		int cnt = 0;
		
		String sql  = "INSERT INTO member_table(id, pw, name, nickname, email, phonenum, zipcode, address, grade) " +
				"VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, nickname);
			pstmt.setString(5, email);
			pstmt.setString(6, phonenum);
			pstmt.setString(7, zipcode);
			pstmt.setString(8, address);
			pstmt.setInt(9, grade);
			
			cnt = pstmt.executeUpdate();
			
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
		return cnt;
	}
	
	public int insertMember(signUpDTO dto) throws SQLException
	{
		String id = dto.getId();
		String pw = dto.getPw();
		String name = dto.getName();
		String nickname = dto.getNickname();
		String email = dto.getEmail();
		String phonenum = dto.getPhonenum();
		String zipcode = dto.getZipcode();
		String address = dto.getAddress();
		int grade = dto.getGrade();
		
		int cnt = this.insertMember(id, pw, name, nickname, email, phonenum, zipcode, address, grade);
		//여기서 this를 안써도 괜찮을까 ?
		
		return cnt;
		
	}
	//////////회원가입추가
	
	//-----------------테이블 선택
	public signUpDTO[] select() throws SQLException
	{
		try {
			String sql = "select * from member_table";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			return createArray(rs);
		} finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
		
	}
	
	
	public signUpDTO[] createArray(ResultSet rs) throws SQLException{
		//이거 나중에 object로 하고 <t> 제네릭 받아다가 해보는건 어떨까 ?
		
		ArrayList<signUpDTO> list = new ArrayList<signUpDTO>();
		
		while(rs.next()) {
			String id = rs.getString(1); 
			String pw = rs.getString(2); 
			String name = rs.getString(3); 
			String nickname = rs.getString(4); 
			String email = rs.getString(5); 
			String phonenum = rs.getString(6); 
			String zipcode = rs.getString(7);
			String address = rs.getString(8); 
			int grade = rs.getInt(9);
			
			
			signUpDTO dto = new signUpDTO(id, pw, name, nickname, email, phonenum, zipcode, address, grade);
			
			list.add(dto);
			
			
		}
		
		signUpDTO[] arr = new signUpDTO[list.size()];
		list.toArray(arr);
		return arr;
		
	}
	
	//하나만 불러오기.
	public signUpDTO createSignUpDto(String id) throws SQLException{
		
		try {
			return selectById(id);
		} finally {
			if(pstmt !=null) pstmt.close();
	        if(conn !=null) conn.close();
	        if(rs !=null) rs.close();
		}
	}
	
	public signUpDTO selectById(String id) {
		
		String sql = "select * FROM member_table WHERE id=?";
		System.out.println(id);
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			signUpDTO dto = new signUpDTO(rs.getString(1), 
					rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), 
					rs.getString(6), rs.getString(7), rs.getString(8), Integer.parseInt(rs.getString(9)));
			return dto;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			signUpDTO dto = null;
			return dto;
		}
	}
	
	
	//삭제 부분.
	/*
	 * 삭제할때 필요한건 암호랑 아이디
	 * 아이디와 암호가 맞는지 확인
	 * 확인이후에 정말 지울건지 확인
	 * 확인 후에 삭제.
	 * 다시이야기해서 이 부분은 그냥 삭제만.
	 * */
	public int deleteById(String id, String pw){
		
		int cnt = 0;
		try {
			signUpDTO dto = new signUpDTO();
			dto = selectById(id);
			if(rs != null)rs.close();
			if(pstmt != null)pstmt.close();
			if(pw.equals(dto.getPw()) == true);
			{
				String sql = "DELETE FROM member_table WHERE id=?";
				pstmt= conn.prepareStatement(sql);
				pstmt.setString(1, id);
				cnt = pstmt.executeUpdate();
				
				return cnt;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
				try {
					if(pstmt !=null)pstmt.close();
					if(conn !=null) conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		return cnt;
		
	}
	
	//회원 수정
	public int  updateMember(String id, String pw, String name, 
			String nickname,String email,String phonenum,String zipcode, String address) throws SQLException
	{
		int cnt = 0;
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(nickname);
		System.out.println(email);
		System.out.println(phonenum);
		System.out.println(zipcode);
		System.out.println(address);
		
		String sql  = "UPDATE member_Table SET id=?, pw=?, name=?, nickname=?, email=?, phonenum=?, zipcode=?, address=? WHERE id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, nickname);
			pstmt.setString(5, email);
			pstmt.setString(6, phonenum);
			pstmt.setString(7, zipcode);
			pstmt.setString(8, address);
			pstmt.setString(9, id);
			
			cnt = pstmt.executeUpdate();
			
		}finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
		return cnt;
	}
	
	//여기까지 회원 수정
	
	///로그인 확인 
	/*
	 * 실패시 = rs.next부분이 false면(가져온 데이터가 없다는 뜻)
	 * 어차피 string을 반환하는거라 1번(상태 표현)에 상태를 집어넣어 알려준다.
	 * 
	 * */
	public String[] login(String id, String pw) throws SQLException
	{
		String[] list = new String[3];
		String sql = "select * from member_table where id=?";
		//야 이거 뭐냐?ㅋㅋㅋㅋ 왜 붙여야 되는거지?ㅋㅋㅋ 그리고 ' ?' 이렇게 하면 안되는건가?ㅋㅋㅋㅋㅋ
		//너무 신기방기하고~
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next() !=  false)
		{
			if(id.equals(rs.getString(1)) && pw.equals(rs.getString(2)))
			{
				list[0] = "1"; //뭐냐고? 되냐 마냐임. 0은 실패 1은 성공
				list[1] = rs.getString(1);//아이디
				list[2]	= rs.getString(3);//이름
			}
			else
			{
				System.out.println("실패에 들어왔습니다.");
				list[0] = "0";
			}
		}
		else
		{
			System.out.println("없음에 들어왔습니다.");
			list[0] = "0";
		}
		
		
		if(pstmt !=null) pstmt.close();
        if(conn !=null) conn.close();
        if(rs !=null) rs.close();
		
		return list;
	}
	
	public signUpDTO[] select(ResultSet rs) throws SQLException{
		//이거 나중에 object로 하고 <t> 제네릭 받아다가 해보는건 어떨까 ?
		
		ArrayList<signUpDTO> list = new ArrayList<signUpDTO>();
		
		while(rs.next()) {
			String id = rs.getString(1); 
			String pw = rs.getString(2); 
			String name = rs.getString(3); 
			String nickname = rs.getString(4); 
			String email = rs.getString(5); 
			String phonenum = rs.getString(6); 
			String address = rs.getString(7); 
			String zipcode = rs.getString(8);
			int grade = rs.getInt(9);
			
			
			signUpDTO dto = new signUpDTO(id, pw, name, nickname, email, phonenum, zipcode, address, grade);
			
			list.add(dto);
			
			
		}
		
		signUpDTO[] arr = new signUpDTO[list.size()];
		list.toArray(arr);
		return arr;
		
	}
	
	//비밀번호 랜덤으로 바꾸기
	public String changePw(String id, String email) {
		
		char[] randChar = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n',
				'o','p','q','r','s','t','u','v','w','x','y','z',
				'A','B','C','D','E','F','G','H','I','J','K','L','M','N',
				'O','P','Q','R','S','T','U','V','W','X','Y','Z',
				'1','2','3','4','5','6','7','8','9','0',};
		
		Random rand = new Random();
		rand.nextInt(62);//0~61까지
		String otherPw ="";
		for(int i = 0; i < 10; i++)
		{
			otherPw += randChar[rand.nextInt(62)];
		}
		signUpDTO dto = new signUpDTO();
		try {
			dto = selectById(id);
			//안되면 지우는 부분 실험삼아 함
			if(pstmt !=null) pstmt.close();
	        if(rs !=null) rs.close();
	        //여기까지
	        //되는거같은데 ?
			if(id.equals(dto.getId()) && email.equals(dto.getEmail()))
			{
					String sql = "UPDATE member_Table SET pw=? WHERE id=?";
					pstmt= conn.prepareStatement(sql);
					pstmt.setString(1, otherPw);
					pstmt.setString(2, id);
					rs = pstmt.executeQuery();
					rs.next();} 
				
				return otherPw;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(NullPointerException ex) {
			return "0";
		}finally {
			
			if(pstmt !=null)
				try {
					pstmt.close();
					if(conn !=null) conn.close(); 
			        //이거 안될 수도 있겠다. 어쩌면. 왜냐면 꺼버려서 그 전에
			        if(rs !=null) rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		return "0";
		
	}
	//여기까지 비밀번호 바꾸기
	
	//여기서부터 아이디 찾기.
	public String findID(String name, String email) {
		
		String sql = "select * FROM member_table WHERE name=?";
		System.out.println(name);
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			/*
			 * 생각해야할 부분
			 * 1. 가져온 값이 없다 null
			 * 2. 같은 이름 다른 이메일
			 * 3. 없으면 0을 반환하고 있으면 하게. 그리고 아이디를 5자리이상으로하게하면 0은 매우 유니크해진다.
			 * */
			while(rs.next())
			{
				if(name.equals(rs.getString("name")) && email.equals(rs.getObject("email")))
				{
					return rs.getString("id");
				}
			}
			
			return "0";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return "0";
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}
	//여기까지 아이디 찾기
	
	//ajax에다가 대 카테고리 넣기 위한 부분
	public String[] categorylist() throws SQLException
	{
		//왜 쓰로우 걸어줄까? 그거슨 바로 트라이캐취를 해버리면 리턴값을 하나 더 만들어야한다는 개같음이 있기때무니지..
		String sql = "select * FROM Large_category";
		ArrayList<String> list = new ArrayList<String>();
		pstmt= conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		//커밋해라 ㅡㅡ.... 안하면 적용안되니까.
		while(rs.next())
		{
			String category = rs.getString(2);
			System.out.println(rs.getString(2));
			list.add(category);
		}
		System.out.println(list);
		String[] arr = new String[list.size()];
		list.toArray(arr);
		
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
		
		return arr;
		
	
	}
	//여기까지 대 카테고리
	
	//여기서부터는 중 카테고리
	public String[] m_categorylist(String L_Cate) throws SQLException
	{
		
		String sql = "select m_code, m_cname from Medium_category where m_code = (select l_code from Large_category where l_cname=?)";
		
		ArrayList<String> list = new ArrayList<String>();
		pstmt= conn.prepareStatement(sql);
		pstmt.setString(1, L_Cate);
		rs = pstmt.executeQuery();
		
		//커밋해라 ㅡㅡ.... 안하면 적용안되니까.
		while(rs.next())
		{
			String category = rs.getString(2);
			System.out.println(rs.getString(2));
			list.add(category);
		}
		System.out.println(list);
		String[] arr = new String[list.size()];
		list.toArray(arr);
		
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
		
		return arr;
		
	
	}
	//여기까지 중 카테고리

	
	
}
