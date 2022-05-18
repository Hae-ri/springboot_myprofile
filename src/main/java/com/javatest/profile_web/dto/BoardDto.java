package com.javatest.profile_web.dto;

public class BoardDto {

	// 글번호, 글쓴이 아이디, 글쓴이 이름, 내용, 이메일, 글쓴 날짜
	private int qnum; 
	private String qid;
	private String qname;
	private String qcontent;
	private String qemail;
	private String qdate;
	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDto(int qnum, String qid, String qname, String qcontent, String qemail, String qdate) {
		super();
		this.qnum = qnum;
		this.qid = qid;
		this.qname = qname;
		this.qcontent = qcontent;
		this.qemail = qemail;
		this.qdate = qdate;
	}

	public int getQnum() {
		return qnum;
	}

	public void setQnum(int qnum) {
		this.qnum = qnum;
	}

	public String getQid() {
		return qid;
	}

	public void setQid(String qid) {
		this.qid = qid;
	}

	public String getQname() {
		return qname;
	}

	public void setQname(String qname) {
		this.qname = qname;
	}

	public String getQcontent() {
		return qcontent;
	}

	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public String getQemail() {
		return qemail;
	}

	public void setQemail(String qemail) {
		this.qemail = qemail;
	}

	public String getQdate() {
		return qdate;
	}

	public void setQdate(String qdate) {
		this.qdate = qdate;
	}

}
