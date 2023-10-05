package com.team2.mapper;

import java.util.List;

import com.team2.domain.CriteriaVO;
import com.team2.domain.ReviewVO;

public interface ReviewMapper {

	public List<ReviewVO> getList(CriteriaVO criVO);
	
	public int getTotal(CriteriaVO criVO);
	
	public void insert(ReviewVO reviewVO);

	public ReviewVO read(Long r_id);
	
	public void readCountPlus(Long r_id);
	
	public boolean modify(ReviewVO reviewVO);
	
	public boolean delete(Long r_id);
	
	public boolean deleteReplies(Long r_id);

}
