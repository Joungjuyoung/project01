package com.team2.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.team2.domain.CriteriaVO;
import com.team2.domain.ReplyPageDTO;
import com.team2.domain.ReviewReplyVO;
import com.team2.service.ReviewReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@RestController
@RequestMapping("/replies")
@Log4j
@AllArgsConstructor
public class ReviewReplyController {

	private ReviewReplyService reviewReplyService;
	
	@GetMapping(value = "/page/{r_id}/{page}.json", produces = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<ReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("r_id") Long r_id) {
		log.info("Review Reply Controller Get List ===================");
		
		CriteriaVO criVO = new CriteriaVO(page, 10);
		log.info(criVO);
		return new ResponseEntity<>(reviewReplyService.getListPage(criVO, r_id), HttpStatus.OK);
	}
	
	@GetMapping(value = "/{r_r_id}", produces = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<ReviewReplyVO> read(@PathVariable("r_r_id") Long r_r_id) {
		log.info("Review Reply Controller Get ===================");

		return new ResponseEntity<>(reviewReplyService.read(r_r_id), HttpStatus.OK);
	}
	
	@PostMapping(value = "/new", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> create(@RequestBody ReviewReplyVO reviewReplyVO) {
		log.info("Review Reply Controller Create ===================");

		int insertCount = reviewReplyService.register(reviewReplyVO);
		log.info("Reply INSERT COUNT: " + insertCount);
		
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);	
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value = "/{r_r_id}", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> modify(@RequestBody ReviewReplyVO reviewReplyVO, @PathVariable("r_r_id") Long r_r_id) {
		log.info("Review Reply Controller Modify ===================");
		reviewReplyVO.setR_r_id(r_r_id);
		
		return reviewReplyService.modify(reviewReplyVO) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@DeleteMapping(value = "/{r_r_id}", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> delete(@PathVariable("r_r_id") Long r_r_id) {
		log.info("Review Reply Controller Delete ===================");

		return reviewReplyService.delete(r_r_id) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
