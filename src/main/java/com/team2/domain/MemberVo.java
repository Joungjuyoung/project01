package com.team2.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Data
@ToString
public class MemberVo {
	String u_id;
	String u_pw;
	String u_nickname;
	String u_email;
	String u_phone;
	String u_auth;
}
