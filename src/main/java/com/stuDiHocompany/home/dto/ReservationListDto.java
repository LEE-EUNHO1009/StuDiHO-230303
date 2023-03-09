package com.stuDiHocompany.home.dto;

public class ReservationListDto {
	private int rnum; 
	private String rid;
	private String rname;
	private String rdate;
	private String rdayof;
	private String rtime;
	private String rclass;
	private String rcontent;
	private String rstatus;
	
	public ReservationListDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReservationListDto(int rnum, String rid, String rname, String rdate, String rdayof, String rtime, String rclass,
			String rcontent, String rstatus) {
		super();
		this.rnum = rnum;
		this.rid = rid;
		this.rname = rname;
		this.rdate = rdate;
		this.rdayof = rdayof;
		this.rtime = rtime;
		this.rclass = rclass;
		this.rcontent = rcontent;
		this.rstatus = rstatus;
	}

	public String getRtime() {
		return rtime;
	}

	public void setRtime(String rtime) {
		this.rtime = rtime;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getRdayof() {
		return rdayof;
	}

	public void setRdayof(String rdayof) {
		this.rdayof = rdayof;
	}

	public String getRclass() {
		return rclass;
	}

	public void setRclass(String rclass) {
		this.rclass = rclass;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public String getRstatus() {
		return rstatus;
	}

	public void setRstatus(String rstatus) {
		this.rstatus = rstatus;
	}
	
		
	
}