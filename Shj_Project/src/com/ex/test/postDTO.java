package com.ex.test;

public class postDTO {
	private int P_seqnum; //생각해보니 얘도 사실 오라클에서 부여할 애라 필요없음.
	



	private String P_section;
	private String P_title; 
	private String P_id;
	private String P_regdate;
	private int P_cnt_read;
	private int P_cnt_like;
	//private String P_cnt_comment; //댓글수는 그냥 댓글의 갯수를 총합해서 내놔도 될듯.
	private String P_contents;
	//	private String P_report; // 마찬가지로 신고 수 역시 신고를 따로 만들고 그 옆에 글 번호
	//그 글 번호를 통해 찾아가기도 하고 갯수를 나타낼 수 있기도하고 둘 다 할 수 있을듯.
	//private int P_C_code; //댓글코드를 따라서가기보단 댓글에 글번호를 넣어서 찾아가게하는게 더 편할거같다.
	private String P_category;
	


	
	public postDTO() {
		super();
	}

	
	
	public postDTO(int P_seqnum, String P_section, String P_title, 
			String P_id, String P_regdate, int P_cnt_read, int P_cnt_like, 
			String P_contents, String P_category)
	{
		super();
		this.P_seqnum = P_seqnum;
		this.P_section = P_section;
		this.P_title = P_title;
		this.P_id = P_id;
		this.P_regdate= P_regdate;
		this.P_cnt_read = P_cnt_read;
		this.P_cnt_like = P_cnt_like;
		this.P_contents = P_contents;
		this.P_category = P_category;
		
		
	}


	public int getP_seqnum() {
		return P_seqnum;
	}



	public void setP_seqnum(int p_seqnum) {
		P_seqnum = p_seqnum;
	}
	
	
	public String getP_section() {
		return P_section;
	}



	public void setP_section(String p_section) {
		P_section = p_section;
	}



	public String getP_title() {
		return P_title;
	}



	public void setP_title(String p_title) {
		P_title = p_title;
	}



	public String getP_id() {
		return P_id;
	}



	public void setP_id(String p_id) {
		P_id = p_id;
	}



	public String getP_regdate() {
		return P_regdate;
	}



	public void setP_regdate(String p_regdate) {
		P_regdate = p_regdate;
	}



	public int getP_cnt_read() {
		return P_cnt_read;
	}



	public void setP_cnt_read(int p_cnt_read) {
		P_cnt_read = p_cnt_read;
	}



	public int getP_cnt_like() {
		return P_cnt_like;
	}



	public void setP_cnt_like(int p_cnt_like) {
		P_cnt_like = p_cnt_like;
	}



	public String getP_contents() {
		return P_contents;
	}



	public void setP_contents(String p_contents) {
		P_contents = p_contents;
	}



	public String getP_category() {
		return P_category;
	}



	public void setP_category(String p_category) {
		P_category = p_category;
	}


	
}
