package com.team2.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team2.vo.MemberVo;

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
	
	//로그인
	@Override
	public MemberVo login(MemberVo vo) throws Exception{
		System.out.println("Dao Login");
		return sql.selectOne("memberMapper.login",vo);
	}
}