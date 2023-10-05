package com.team2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team2.domain.CriteriaVO;
import com.team2.domain.ReviewVO;
import com.team2.mapper.ReviewMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReviewServiceImpl implements ReviewService {

	@Setter(onMethod_ = @Autowired)
	private ReviewMapper reviewMapper;
	
	@Override
	public List<ReviewVO> getList(CriteriaVO criVO) {
		log.info("Review Service Get List ===================");
		return reviewMapper.getList(criVO);
	}
	
	@Override
	public int getTotal(CriteriaVO criVO) {
		log.info("Review Service Get Total ===================");
		return reviewMapper.getTotal(criVO);
	}
	
	@Override
	@Transactional
	public ReviewVO read(Long r_id) {
		log.info("Review Service Read ===================");
		reviewMapper.readCountPlus(r_id);
		return reviewMapper.read(r_id);
	}
	
	@Override
	public void register(ReviewVO reviewVO) {
		log.info("Review Service Register ===================");
		reviewMapper.insert(reviewVO);
	}

	@Override
	public boolean modify(ReviewVO reviewVO) {
		log.info("Review Service modify ===================");
		return reviewMapper.modify(reviewVO);
	}
	
	@Override
	@Transactional
	public boolean delete(Long r_id) {
		log.info("Review Service modify ===================");
		reviewMapper.deleteReplies(r_id);
		return reviewMapper.delete(r_id);
	}
	
	
}
