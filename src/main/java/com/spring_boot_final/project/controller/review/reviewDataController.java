package com.spring_boot_final.project.controller.review;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.spring_boot_final.project.model.ReviewNoteVO;
import com.spring_boot_final.project.service.ReviewNoteService;

@Controller
public class reviewDataController {
	@Autowired
	ReviewNoteService reviewnoteService;
	
	// 리뷰게시판 리스트 보기
	@RequestMapping("/review/reviewNoteList")
	public String reviewNoteList(HttpSession session, Model model) {
		
	
	ArrayList<ReviewNoteVO> reviewNoteList = reviewnoteService.reviewNoteList();

	model.addAttribute("reviewNoteList", reviewNoteList);
	System.out.println(reviewNoteList.size());
	
	/*
	 * for(int i=0; i<reviewNoteList.size();i++) {
	 * System.out.println(reviewNoteList.get(i).getReviewNoteId()); }
	 */
	
	return "review/reviewNoteList";
	}
	
	
	// 리뷰게시판 상세페이지 보기
	@RequestMapping("/review/reviewNote/{reviewNoteId}")
	public String reviewNote(@PathVariable("reviewNoteId") int reviewNoteId,HttpSession session, Model model) {
	
		ArrayList<ReviewNoteVO> reviewNoteList = reviewnoteService.reviewNoteList();
		ReviewNoteVO vo = reviewnoteService.selectReviewNote(reviewNoteId);
		
		String[] siteName = vo.getCourseSitesArr().split(";;");
		
		System.out.println(siteName);
		
		model.addAttribute("reviewNoteList", reviewNoteList);
		model.addAttribute("reviewNote", vo);
		model.addAttribute("siteName", siteName);
		
		
		System.out.println(reviewNoteId);
		/* System.out.println(reviewNoteList.size()); */
		
		/*
		 * for(int i=0; i<reviewNoteList.size();i++) {
		 * System.out.println(reviewNoteList.get(i).getReviewNoteId()); }
		 */
		
		return "review/reviewNote";
		}
	
}
