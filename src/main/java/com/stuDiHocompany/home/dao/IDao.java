package com.stuDiHocompany.home.dao;

import com.stuDiHocompany.home.dto.MemberDto;

public interface IDao {
	
	//회원관리
	public int memberJoin(String mid, String mpw, String mname, String memail);//회원 가입 insert
	public int checkId(String mid);//아이디 존재여부 확인 select
	public int checkIdAndPW(String mid, String mpw);//아이디와 비밀번호의 존재 및 일치 여부 select
	public MemberDto getMemberInfo(String mid);//아이디로 조회하여 회원정보 가져오기 select
	public void memberModify(String mid, String mpw, String mname, String memail);//회원 정보 수정 update
	
}
