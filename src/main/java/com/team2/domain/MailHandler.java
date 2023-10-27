package com.team2.domain;

import java.io.UnsupportedEncodingException;

import javax.activation.DataSource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class MailHandler {
	private JavaMailSender mailSender;
    private MimeMessage message;
    private MimeMessageHelper messageHelper;

    public MailHandler(JavaMailSender mailSender) throws MessagingException {
    	System.out.println("MailHandeller1");
        this.mailSender = mailSender;
        message = this.mailSender.createMimeMessage();
        messageHelper = new MimeMessageHelper(message, true, "UTF-8");
    }

    public void setSubject(String subject) throws MessagingException {
    	System.out.println("MailHandeller2");
        messageHelper.setSubject(subject);
    }

    public void setText(String htmlContent) throws MessagingException {
    	System.out.println("MailHandeller3");
        messageHelper.setText(htmlContent, true);
    }

    public void setFrom(String email, String name) throws UnsupportedEncodingException, MessagingException {
    	System.out.println("MailHandeller3");
        messageHelper.setFrom(email, name);
    }

    public void setTo(String email) throws MessagingException {
    	System.out.println("MailHandeller4");
        messageHelper.setTo(email);
    }

    public void addInline(String contentId, DataSource dataSource) throws MessagingException {
    	System.out.println("MailHandeller5");
        messageHelper.addInline(contentId, dataSource);
    }

    public void send() {
    	System.out.println("MailHandeller Send");
        mailSender.send(message);
    }
}
