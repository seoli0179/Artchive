package com.spring_boot_final.project.controller.review;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_final.project.model.CourseCommentVO;
import com.spring_boot_final.project.model.CourseVO;
import com.spring_boot_final.project.model.ReviewCommentVO;
import com.spring_boot_final.project.model.ReviewNoteVO;
import com.spring_boot_final.project.service.CourseService;
import com.spring_boot_final.project.service.ExhbnService;
import com.spring_boot_final.project.service.ReviewCommentService;
import com.spring_boot_final.project.service.ReviewNoteService;
import com.spring_boot_final.project.state.ViewState;

@Controller
public class reviewViewController {
	@Autowired
	ReviewNoteService reviewnoteService;
	
	@Autowired
    ExhbnService service;
	
    @Autowired
    CourseService courseService;
    
    @Autowired
    ReviewCommentService reviewcommentService;
    
	
	/*
	 * // reviewNoteEdit 페이지 열기 요청 처리
	 * 
	 * @RequestMapping("/review/reviewNoteEdit") public String reviewNoteEdit() {
	 * return "review/reviewNoteEdit"; }
	 */
 	
	/*
	 * // reviewNoteEdit 페이지 열기 요청 처리
	 * 
	 * @RequestMapping("/review/reviewNoteWrite") public String reviewNoteWrite() {
	 * return "review/reviewNoteWrite"; }
	 */
 	
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
 		
 		 if (vo.getReviewPageViewState() != ViewState.POST) { return "error"; }
 		
 		String[] siteName = vo.getCourseSitesArr().split(";;");
 		
 		System.out.println(siteName);
 		
 		ArrayList<ReviewCommentVO> reviewComment = reviewcommentService.selectReviewCommentList(reviewNoteId);
 		
 		model.addAttribute("reviewNoteList", reviewNoteList);
 		model.addAttribute("reviewNote", vo);
 		model.addAttribute("siteName", siteName);
 		model.addAttribute("reviewCommentList",reviewComment);
 		
 		
		/* System.out.println(reviewNoteId); */
 		/* System.out.println(reviewNoteList.size()); */
 		
 		/*
 		 * for(int i=0; i<reviewNoteList.size();i++) {
 		 * System.out.println(reviewNoteList.get(i).getReviewNoteId()); }
 		 */
 		
 		return "review/reviewNote";
 		}
 	
 	// 코스 코스게시판에서 가져오기
  	@RequestMapping("/review/reviewNoteWrite/{courseId}")
  	public String selectCoursePost(@PathVariable("courseId") int courseId,
            HttpSession session,
            Model model) throws Exception {
  		
		CourseVO vo = courseService.selectCoursePost(courseId);
		ArrayList<CourseCommentVO> commentVo = courseService.selectCourseComment(courseId);
		model.addAttribute("course", vo);
		model.addAttribute("cComment",commentVo);
		
		/*
		 * ArrayList<String[]> sites = new ArrayList<String[]>();
		 * 
		 * String[] siteName = vo.getCourseSitesArr().split(";;"); String[] siteAddress
		 * = vo.getCourseAddressArr().split(";;"); String[] siteMemo =
		 * vo.getCourseMemoArr().split(";;");
		 * 
		 * model.addAttribute("siteName", siteName); model.addAttribute("siteAddress",
		 * siteAddress); model.addAttribute("siteMemo", siteMemo);
		 */
		
		return "review/reviewNoteWrite";
		}
  	
  	// 리뷰게시판 수정페이지 보기
  	@RequestMapping("/review/reviewNoteEdit/{reviewNoteId}")
  	public String reviewNoteEdit(@PathVariable("reviewNoteId") int reviewNoteId,HttpSession session, Model model) {
  	
  		ArrayList<ReviewNoteVO> reviewNoteList = reviewnoteService.reviewNoteList();
  		ReviewNoteVO vo = reviewnoteService.selectReviewNote(reviewNoteId);
  		
  		String[] siteName = vo.getCourseSitesArr().split(";;");
  		
  		System.out.println(siteName);
  		
  		model.addAttribute("reviewNoteList", reviewNoteList);
  		model.addAttribute("reviewNote", vo);
  		model.addAttribute("siteName", siteName);
  		
  		
 		/* System.out.println(reviewNoteId); */
  		/* System.out.println(reviewNoteList.size()); */
  		
  		/*
  		 * for(int i=0; i<reviewNoteList.size();i++) {
  		 * System.out.println(reviewNoteList.get(i).getReviewNoteId()); }
  		 */
  		
  		return "review/reviewNoteEdit";
  		}
 	
  		// 리뷰게시판 검색
	  	@RequestMapping("/review/reviewNoteSearch")
	  	public String reviewNoteSearch(@RequestParam("reviewNoteTitle") String reviewNoteTitle, Model model) {
	 		
	  		
	  	ArrayList<ReviewNoteVO> reviewNoteSearch = reviewnoteService.reviewNoteSearch(reviewNoteTitle);
	
	  	model.addAttribute("reviewNoteList", reviewNoteSearch);
	  	
	  	
	  	 for(int i=0; i<reviewNoteSearch.size();i++) {
	  	 System.out.println(reviewNoteSearch.get(i).getReviewNoteId()); }
	  	 
	  	 
	  	
	  	return "review/reviewSearch";
	  	}
	  	
	  	// 리뷰게시판 탭 메뉴 정렬
	  	
	  	@RequestMapping("/review/reviewNoteNew")
	 	public String reviewNoteNew(HttpSession session, Model model) {
			
	 		
	 	ArrayList<ReviewNoteVO> reviewNoteNew = reviewnoteService.reviewNoteNew();

	 	model.addAttribute("reviewNoteList", reviewNoteNew);
	 	// System.out.println(reviewNoteNew.size());
	  	 
		/*
		 * for(int i=0; i<reviewNoteNew.size();i++) {
		 * System.out.println(reviewNoteNew.get(i).getReviewNoteId()); }
		 */

	  	
	  	return "review/reviewSearch";
	  	}
	  	
	  	@RequestMapping("/review/reviewNotePopular")
	 	public String reviewNotePopular(HttpSession session, Model model) {
			
	 		
	 	ArrayList<ReviewNoteVO> reviewNotePopular = reviewnoteService.reviewNotePopular();

	 	model.addAttribute("reviewNoteList", reviewNotePopular);
	 	// System.out.println(reviewNotePopular.size());
	  	 
		/*
		 * for(int i=0; i<reviewNotePopular.size();i++) {
		 * System.out.println(reviewNotePopular.get(i).getReviewNoteId()); }
		 */
	  	
	  	return "review/reviewSearch";
	  	}
	  	
	  	@RequestMapping("/review/reviewNoteComment")
	 	public String reviewNoteComment(HttpSession session, Model model) {
			
	 		
	 	ArrayList<ReviewNoteVO> reviewNoteComment = reviewnoteService.reviewNoteComment();

	 	model.addAttribute("reviewNoteList", reviewNoteComment);
	  	 
		/*
		 * for(int i=0; i<reviewNoteComment.size();i++) {
		 * System.out.println(reviewNoteComment.get(i).getReviewNoteId()); }
		 */
	  	
	  	return "review/reviewSearch";
	  	}
}
