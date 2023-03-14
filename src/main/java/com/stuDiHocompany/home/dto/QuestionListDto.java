package com.stuDiHocompany.home.dto;

public class QuestionListDto {

	// Q_LIST, Q_LIST_SEQ
	// 순번, 문의자 성명, 문의자 이름, 문의날짜, 답변여부, 문의내용, 답변내용 
	
	private int qnum; 
	private String qid;
	private String qname;
	private String qcontent;
	private String qemail;
	private String qdate;
	
	public QuestionListDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuestionListDto(int qnum, String qid, String qname, String qdate, String qcontent, String qemail) {
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

	public String getQdate() {
		return qdate;
	}

	public void setQdate(String qdate) {
		this.qdate = qdate;
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

	
}
