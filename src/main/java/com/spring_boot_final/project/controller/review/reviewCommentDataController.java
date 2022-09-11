package com.spring_boot_final.project.controller.review;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring_boot_final.project.model.ReviewCommentVO;
import com.spring_boot_final.project.service.ReviewCommentService;
import com.spring_boot_final.project.service.ReviewNoteService;

@RestController
public class reviewCommentDataController {
	
	@Autowired
	ReviewCommentService reviewcommentService;
	
	@Autowired
	ReviewNoteService reviewnoteService;
	
	@RequestMapping("review/createReviewComment")
	public String createReviewComment(@RequestParam("reviewNoteId")String reviewNoteId,
										@RequestParam("reviewComment")String reviewComment,
										HttpSession session
										) {
		if(session.getAttribute("sid") == null)
            return "FAIL";
		
		ReviewCommentVO vo = new ReviewCommentVO();
		vo.setReviewNoteId(Integer.parseInt(reviewNoteId));
		vo.setReviewComment(reviewComment);
		vo.setUserId(session.getAttribute("sid").toString());
		
		reviewcommentService.createReviewComment(vo);
		reviewnoteService.updateReviewNoteCommentUp(vo.getReviewNoteId());
		
		System.out.println(reviewNoteId);
		System.out.println(reviewComment);
		
		return "SUCCESS";
	}
	
	@RequestMapping("/review/deleteReviewComment")
	public String deleteReviewComment(
			@RequestParam("reviewNoteId") int reviewNoteId,
			@RequestParam("reviewCommentId") int reviewCommentId,
			HttpSession session
			) {
		if(session.getAttribute("sid") == null)
            return "FAIL";
		
		ReviewCommentVO vo = reviewcommentService.selectReviewComment(reviewCommentId);
		
		if(!vo.getUserId().equals(session.getAttribute("sid").toString())) {
            return "FAIL";
        }
		
		vo = new ReviewCommentVO();
		vo.setReviewCommentId(reviewCommentId);
		vo.setUserId(session.getAttribute("sid").toString());
		
		reviewcommentService.deleteReviewComment(vo);
		reviewnoteService.updateReviewNoteCommentDown(reviewNoteId);
		
		return "SUCCESS";
	}
}
