package com.team2.domain;

import java.util.List;

public interface MemberDao {
	//회원가입
	public void register(MemberVo vo) throws Exception;
	
	//아이디 중복체크
	public int idChk(MemberVo vo) throws Exception;
	
	//닉네임 중복체크
	public int nameChk(MemberVo vo) throws Exception;
		
	//로그인
	public MemberVo login(MemberVo vo) throws Exception;
	
	//내정보 수정
	public void memberUpdate(MemberVo vo) throws Exception;
	
	//이메일 인증
	public void updateMailKey(MemberVo vo) throws Exception;
	public void updateMailAuth(MemberVo vo) throws Exception;
	public void emailAuthFail(String id) throws Exception;
}
