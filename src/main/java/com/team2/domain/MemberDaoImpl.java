package com.team2.domain;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Inject SqlSession sql;
	// 회원가입

	@Override
	public void register(MemberVo vo) throws Exception {
		
		sql.insert("memberMapper.register", vo);
	}
	
	//아이디 중복체크
	@Override
	public int idChk(MemberVo vo) throws Exception{
		System.out.println("Dao IdChk");
		int result = sql.selectOne("memberMapper.idChk", vo);
		return result;
	}
	//닉네임 중복체크
	@Override
	public int nameChk(MemberVo vo) throws Exception{
		System.out.println("Dao NameChk");
		int result = sql.selectOne("memberMapper.nameChk", vo);
		return result;
	}
	//로그인
	@Override
	public MemberVo login(MemberVo vo) throws Exception{
		System.out.println("Dao Login");
		return sql.selectOne("memberMapper.login",vo);
	}
	//내정보 수정
	@Override
	public void memberUpdate(MemberVo vo) throws Exception{
		System.out.println("Dao Update");
		sql.update("memberMapper.memberUpdate",vo);
	}
	//이메일 인증
	@Override
	public void updateMailKey(MemberVo vo) throws Exception {
		System.out.println("Dao Mail Key");
	    sql.selectOne( "memberMapper.updateMailKey", vo);
	}

	@Override
	public void updateMailAuth(MemberVo vo) throws Exception {
		System.out.println("Dao Mail Auth");
	    sql.selectOne("memberMapper.updateMailAuth", vo);
	}

	@Override
	public void emailAuthFail(String id) throws Exception {
		System.out.println("Dao Mail Fail");
	    sql.selectOne("memberMapper.emailAuthFail", id);
	}
}