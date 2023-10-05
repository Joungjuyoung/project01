package com.team2.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	private Long r_id;
	private String r_title;
	private String r_content;
	private String r_writer;
	private Long r_readCount;
	private Date r_regDate;
	private Date r_modDate;

}
