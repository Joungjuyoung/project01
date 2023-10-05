package com.team2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team2.domain.CriteriaVO;
import com.team2.domain.ReplyPageDTO;
import com.team2.domain.ReviewReplyVO;
import com.team2.mapper.ReviewReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class ReviewReplyServiceImpl implements ReviewReplyService {
	
	@Setter(onMethod_ = @Autowired)
	private ReviewReplyMapper reviewReplyMapper;
	
	@Override
	public List<ReviewReplyVO> getList(CriteriaVO criVO, Long r_id) {
		log.info("Review Reply Service Get List ===================");
		return reviewReplyMapper.getListWithPaging(criVO, r_id);
	}

	@Override
	public ReplyPageDTO getListPage(CriteriaVO criVO, Long r_id) {
		log.info("Review Reply Service Get List Page ===================");

		return new ReplyPageDTO(reviewReplyMapper.getCountByRId(r_id), reviewReplyMapper.getListWithPaging(criVO, r_id));
	}


	@Override
	public ReviewReplyVO read(Long r_r_id) {
		log.info("Review Reply Service Get ===================");

		return reviewReplyMapper.read(r_r_id);
	}
	
	@Override
	public int register(ReviewReplyVO reviewReplyVO) {
		log.info("Review Reply Service Register ===================");
		
		return reviewReplyMapper.insert(reviewReplyVO);
	}

	@Override
	public int modify(ReviewReplyVO reviewReplyVO) {
		log.info("Review Reply Service Modify ===================");

		return reviewReplyMapper.update(reviewReplyVO);
	}
	
	@Override
	public int delete(Long r_r_id) {
		log.info("Review Reply Service Delete ===================");

		return reviewReplyMapper.delete(r_r_id);
	}
}