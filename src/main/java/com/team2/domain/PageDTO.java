package com.team2.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	private int startPage, endPage;
	private boolean prev, next;

	private int total;
	private CriteriaVO criVO;
	
	public PageDTO(CriteriaVO criVO, int total) {
		this.criVO = criVO;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(criVO.getPage() / 10.0)) * 10;
		this.startPage = this.endPage - 9;
		
		int realEnd = (int)(Math.ceil((total * 1.0) / criVO.getSize()));
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
}
