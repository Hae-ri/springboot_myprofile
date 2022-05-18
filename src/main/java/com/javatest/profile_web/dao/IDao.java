package com.javatest.profile_web.dao;

import java.util.ArrayList;

import com.javatest.profile_web.dto.BoardDto;
import com.javatest.profile_web.dto.MemberDto;

public interface IDao {

	// q_board 조작 dao
	public ArrayList<BoardDto> listDao(); // board list	가져오기
	public void writeDao(String qid, String qname, String qcontent, String qemail); // board 글쓰기
	public BoardDto viewDao(String qnum); // board 글보기
	public void deleteDao(String qnum); // board 글삭제
	public void modifyDao(String qname, String qcontent, String qemail, String qnum); // board 글수정
	
	// bmember 조작 dao
	public void joinDao(String mid,String mpw,String mname,String memail); // 회원 가입
	public MemberDto loginOkDao(String mid); // 로그인 성공 여부 체크
	public int checkIdDao(String mid); // 아이디 존재 여부 체크(존재하면 1, 존재하지 않으면 0) 
	public int checkPwDao(String mid, String mpw); // 아이디와 비밀번호 일치여부 체크(일치 1, 불일치 2)
	public void memberInfoModifyOkDao(String mpw, String mname, String memail, String mid); // 회원 정보 수정
	
}
