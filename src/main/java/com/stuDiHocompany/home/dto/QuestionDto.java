package com.stuDiHocompany.home.dto;

public class QuestionDto {
	
	private int qnum;//게시판 글 번호(기본키)
	private String qid;//글쓴이 아이디
	private String qtitle;
	private String qcontent;//질문 내용
	private String qdate;//글 등록일시
	
	public QuestionDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuestionDto(int qnum, String qid, String qtitle, String qcontent, String qdate) {
		super();
		this.qnum = qnum;
		this.qid = qid;
		this.qtitle = qtitle;
		this.qcontent = qcontent;
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

	public String getQtitle() {
		return qtitle;
	}

	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}

	public String getQcontent() {
		return qcontent;
	}

	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public String getQdate() {
		return qdate;
	}

	public void setQdate(String qdate) {
		this.qdate = qdate;
	}
	
	
	
	
}