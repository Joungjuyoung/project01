package com.team2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team2.domain.CriteriaVO;
import com.team2.domain.PageDTO;
import com.team2.domain.ReviewVO;
import com.team2.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/review")
@Log4j
@AllArgsConstructor
public class ReviewController {

	private ReviewService reviewService;
	
	@GetMapping("/list")
	public void list(CriteriaVO criVO, Model model) {
		log.info("Review Controller List ===================");
		log.info(criVO);
		model.addAttribute("list", reviewService.getList(criVO));

		int total = reviewService.getTotal(criVO);
		log.info("total : " + total);
		model.addAttribute("pageMaker", new PageDTO(criVO, total));
		
	}
	
	@GetMapping("/read")
	public void read(@RequestParam Long r_id, @ModelAttribute CriteriaVO criVO , Model model) {
		log.info("/read");
		model.addAttribute("reviewVO", reviewService.read(r_id));
		
	}

	@GetMapping("/register")
	public void register() {
	}
	
	@PostMapping("/register")
	public String register(ReviewVO reviewVO, RedirectAttributes rttr) {
		log.info("register : " + reviewVO);
		reviewService.register(reviewVO);
		rttr.addFlashAttribute("result", reviewVO.getR_id());
		
		return "redirect:/review/list";
	}
	
	@GetMapping("/modify")
	public void modify(@RequestParam Long r_id, @ModelAttribute CriteriaVO criVO , Model model) {
		log.info("modify");
		model.addAttribute("reviewVO", reviewService.read(r_id));
		
	}
	
	@PostMapping("/modify")
	public String modify(ReviewVO reviewVO, CriteriaVO criVO, RedirectAttributes rttr) {
		log.info("modify : " + reviewVO);
		if (reviewService.modify(reviewVO)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/review/list" + criVO.getListLink();
	}

	@PostMapping("/delete")
	public String delete(@RequestParam Long r_id, @ModelAttribute CriteriaVO criVO, RedirectAttributes rttr) {
		log.info("delete..." + r_id);
		if (reviewService.delete(r_id)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/review/list" + criVO.getListLink();
	}
	
}
