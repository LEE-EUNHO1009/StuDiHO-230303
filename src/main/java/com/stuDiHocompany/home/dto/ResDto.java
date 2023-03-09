package com.stuDiHocompany.home.dto;

public class ResDto {
	private String ryear;
	private String rmonth;
	private String rdate;
	private String rvalue;
	
	public ResDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ResDto(String ryear, String rmonth, String rdate, String rvalue) {
		super();
		this.ryear = ryear;
		this.rmonth = rmonth;
		this.rdate = rdate;
		this.rvalue = rvalue;
	}

	public String getRyear() {
		return ryear;
	}

	public void setRyear(String ryear) {
		this.ryear = ryear;
	}

	public String getRmonth() {
		return rmonth;
	}

	public void setRmonth(String rmonth) {
		this.rmonth = rmonth;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getRvalue() {
		return rvalue;
	}

	public void setRvalue(String rvalue) {
		this.rvalue = rvalue;
	}
	
	
}
