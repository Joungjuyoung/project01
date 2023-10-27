package com.team2.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team2.domain.MailHandler;
import com.team2.domain.MailUtils;
import com.team2.domain.MemberDao;
import com.team2.domain.MemberVo;
import com.team2.domain.TempKey;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject MemberDao dao;
	@Autowired
	private JavaMailSender mailSender;
	
	//회원가입

	@Override
	public void register(MemberVo vo) throws Exception {
		System.out.println("Service register");
		/* dao.register(vo); */
		String mail_key = new TempKey().getKey(30,false); //랜덤키 길이 설정
		vo.setU_e_key(mail_key);
		
		MailHandler sendMail = new MailHandler(mailSender);
	    sendMail.setSubject("[Team02Movie 인증메일 입니다.]"); //메일제목
	    sendMail.setText(
	                "<h1>Team02Movie 메일인증</h1>" +
	                "<br>Team02Movie에 오신것을 환영합니다!" +
	                "<br>아래 [이메일 인증 확인]을 눌러주세요." +
	                "<br><a href='http://localhost:8090/member/registerEmail?u_email=" + vo.getU_email() +
	                "&u_e_key=" + mail_key +
	                "' target='_blank'>이메일 인증 확인</a>");
	    sendMail.setFrom("jjy8364@gmail.com", "Team02Movie");
	    sendMail.setTo(vo.getU_email());
	    sendMail.send();
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
	
	//이메일 인증
    
	@Override
	public void updateMailKey(MemberVo vo) throws Exception {
		System.out.println("Service updateMailKey");
	    dao.updateMailKey(vo);
	}

	@Override
	public void updateMailAuth(MemberVo vo) throws Exception {
		System.out.println("Service updateMailAuth");
	    dao.updateMailAuth(vo);
	}

	@Override
	public void emailAuthFail(String id) throws Exception {
		System.out.println("Service emailAuthFail");
	    dao.emailAuthFail(id);
	}

	
}