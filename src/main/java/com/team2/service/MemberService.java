package com.team2.service;

import com.team2.domain.MemberVo;

public interface MemberService {
	//회원가입
	public void register(MemberVo vo) throws Exception;
	//아이디 중복체크
	public int idChk(MemberVo vo) throws Exception;
	//닉네임 중복체크
	public int nameChk(MemberVo vo) throws Exception;
	//로그인
	public MemberVo login(MemberVo vo) throws Exception;
}
