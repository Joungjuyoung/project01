package com.team2.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class CriteriaVO {
	
	private int page, size;
	private String type, keyword;
	
	public CriteriaVO() {
		this(1, 10);
	}

	public CriteriaVO(int page, int size) {
		this.page = page;
		this.size = size;
	}
	
	public String[] getTypeArr() {
		return type == null? new String[] {} : type.split("");
	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("page", this.getPage())
				.queryParam("size", this.getSize())
				.queryParam("type", this.getType())
				.queryParam("keyword", this.getKeyword());
		
		return builder.toUriString();//?pageNum=1&amount=10&type=T&keyword=abc
	}
}
