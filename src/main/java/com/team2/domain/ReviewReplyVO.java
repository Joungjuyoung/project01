package com.team2.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewReplyVO {
	private Long r_id;
	private Long r_r_id;
	private String r_r_title;
	private String r_r_content;
	private String r_r_writer;
	private Date r_regDate;
	private Date r_modDate;
	
}
