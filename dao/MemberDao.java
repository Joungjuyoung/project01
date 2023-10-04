package com.team2.dao;

import com.team2.vo.MemberVo;

public interface MemberDao {
	//회원가입
	public void register(MemberVo vo) throws Exception;
	
	//아이디 중복체크
	public int idChk(MemberVo vo) throws Exception;
	
	//로그인
	public MemberVo login(MemberVo vo) throws Exception;
}
