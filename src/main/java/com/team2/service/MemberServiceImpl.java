package com.team2.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team2.domain.MemberDao;
import com.team2.domain.MemberVo;

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
	//닉네임 중복체크
	@Override
	public int nameChk(MemberVo vo) throws Exception{
		System.out.println("Service NameChk");
		int result = dao.nameChk(vo);
		return result;
		}
	
	//로그인
	@Override
	public MemberVo login(MemberVo vo) throws Exception{
		System.out.println("Service Login");
		return dao.login(vo);
	}
	
	//내정보 수정
	@Override
	public void memberUpdate(MemberVo vo) throws Exception{
		System.out.println("Service update");
		dao.memberUpdate(vo);
	}
	
}