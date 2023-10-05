package com.team2.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.team2.domain.CriteriaVO;
import com.team2.domain.ReviewReplyVO;

public interface ReviewReplyMapper {
	
	public List<ReviewReplyVO> getListWithPaging(@Param("criVO") CriteriaVO criVO, @Param("r_id") Long r_id);
	
	public int getCountByRId(Long r_id);
	
	public ReviewReplyVO read(Long bno);

	public int insert(ReviewReplyVO reviewReplyVO);
	
	public int update(ReviewReplyVO reply);
	
	public int delete(Long bno);

}
