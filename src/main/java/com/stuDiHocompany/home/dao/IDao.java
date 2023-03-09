package com.stuDiHocompany.home.dao;

import java.util.ArrayList;

import java.util.List;

import com.stuDiHocompany.home.dto.Criteria;
import com.stuDiHocompany.home.dto.MemberDto;
import com.stuDiHocompany.home.dto.QBoardDto;
import com.stuDiHocompany.home.dto.ReservationListDto;

public interface IDao {
	
	//회원관리
	public int memberJoin(String mid, String mpw, String mname, String memail);//회원 가입 insert
	public int checkId(String mid);//아이디 존재여부 확인 select
	//public MemberDto loginOkDao(String mid); // 로그인 성공 여부 체크
	public int checkIdAndPW(String mid, String mpw);//아이디와 비밀번호의 존재 및 일치 여부 select
	public MemberDto getMemberInfo(String mid);//아이디로 조회하여 회원정보 가져오기 select
	public void memberModify(String mid, String mpw, String mname, String memail);//회원 정보 수정 update
	
	//질문게시판
	public void writeQuestion(String qid, String qname, String qcontent, String qemail);//질문하기 insert
	public List<QBoardDto> questionList(Criteria cri);//질문게시판 리스트 가져오기 select
	public QBoardDto questionView(String qnum);//선택한 글 번호의 정보 가져오기 select
	public void questionModify(String qnum, String qname, String qcontent, String qemail);//해당 글번호로 조회하여 질문 수정 update
	public void questionDelete(String qnum);//글 삭제 delete
	public int boardAllCount();//게시판 총 글의 개수 가져오기
	
	// R_LIST(예약내역) 조작 dao
	public ArrayList<ReservationListDto> listDao(String rid); // 본인의 전체 예약리스트 가져오기
	public ArrayList<ReservationListDto> list01Dao(String rid); // 접종 예약리스트 가져오기
	public ArrayList<ReservationListDto> list02Dao(String rid); // 진료 예약리스트 가져오기
	public ArrayList<ReservationListDto> list03Dao(String rid); // 미용 예약리스트 가져오기
	public void writeDao(String rid, String rname, String rclass, String rdayof, String rtime, String rcontent, String rstatus); // 예약하기
	public ReservationListDto viewDao(String rnum); // 예약 내용 보기
	public void rcancleDao(String rstatus, String rnum); // 예약 취소
	public int countList(String rid); // 예약 건수
	public int count01List(String rid); // 접종 예약 건수
	public int count02List(String rid); // 진료 예약 건수
	public int count03List(String rid); // 미용 예약 건수
	public void deleteAllDao(String rid); // 해당 아이디의 예약 전체 삭제
	
}
