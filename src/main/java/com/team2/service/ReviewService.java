package com.team2.service;

import java.util.List;

import com.team2.domain.CriteriaVO;
import com.team2.domain.ReviewVO;

public interface ReviewService {
	
	List<ReviewVO> getList(CriteriaVO criVO);
	
	int getTotal(CriteriaVO criVO);
	
	ReviewVO read(Long r_id);
	
	void register(ReviewVO reviewVO);

	boolean modify(ReviewVO reviewVO);
	
	boolean delete(Long r_id);
}
