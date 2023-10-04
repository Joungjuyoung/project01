package com.team2.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team2.dao.MemberDao;
import com.team2.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject MemberDao dao;
	
	//회원가입
	@Override
	public void register(MemberVo vo) throws Exception {
		
		dao.register(vo);
		
	}
	
	//아이디 중복체크
	@Override
	public int idChk(MemberVo vo) throws Exception{
		System.out.println("Service IdChk");
		int result = dao.idChk(vo);
		return result;
	}
	
	//로그인
	@Override
	public MemberVo login(MemberVo vo) throws Exception{
		System.out.println("Service Login");
		return dao.login(vo);
	}
	
}