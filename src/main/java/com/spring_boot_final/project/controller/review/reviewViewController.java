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
import com.spring_boot_final.project.model.CourseListItemVO;
import com.spring_boot_final.project.model.CourseVO;
import com.spring_boot_final.project.model.NoteVO;
import com.spring_boot_final.project.model.ReviewCommentVO;
import com.spring_boot_final.project.model.ReviewNoteVO;
import com.spring_boot_final.project.model.summary.DocumentVO;
import com.spring_boot_final.project.model.summary.TotalVO;
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
 	
 	for (int i = 0; i < reviewNoteList.size(); i++) {
        String tagRemove = reviewNoteList.get(i).getReviewNote().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
        

        DocumentVO docVo = new DocumentVO();
        docVo.setTitle(reviewNoteList.get(i).getReviewNoteTitle());

        // html 태그 제거
        docVo.setContent(tagRemove);    
    
        if (session.getAttribute("sid") != null)
        	reviewNoteList.get(i).setReviewNoteLikeCheck(reviewnoteService.reviewNoteLikeCheck(reviewNoteList.get(i), session.getAttribute("sid").toString()));

		// thumbnail test 새힘
		int begin = reviewNoteList.get(i).getReviewNote().indexOf("<img");
		if (begin > 0) {
			int begin1 = reviewNoteList.get(i).getReviewNote().indexOf("src", begin) + 5;
			int end = reviewNoteList.get(i).getReviewNote().indexOf("\"", begin1);
			reviewNoteList.get(i).setPreView(reviewNoteList.get(i).getReviewNote().substring(begin1, end));
		}
		if (reviewNoteList.get(i).getPreView()==null) {
			reviewNoteList.get(i).setPreView(reviewNoteList.get(i).getExhbnImgUrl());
		}
		// thumbnail end
	 }

		model.addAttribute("reviewNoteList", reviewNoteList);

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

 		if (session.getAttribute("sid") != null)
 			vo.setReviewNoteLikeCheck(reviewnoteService.reviewNoteLikeCheck(vo, session.getAttribute("sid").toString()));
 		 
 		 
 		String[] siteName = vo.getPlaceNames().split(";;");
 		
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
		
		CourseVO vo = courseService.selectCoursePost(courseId);
        ArrayList<CourseListItemVO> result = new ArrayList<CourseListItemVO>();
        // 구분자 분리
        String[] placeName = vo.getPlaceNames().split(";;");
        String[] placeMemo = vo.getPlaceMemos().split(";;");

        for (int i=0; i<placeName.length; i++) {
            CourseListItemVO temp = new CourseListItemVO();
            temp.setPlace_name(placeName[i]);
            temp.setCategory_group_name(vo.getCategoryNames().split(";;")[i]);
			/*
			 * temp.setPhone(vo.getPhones().split(";;")[i]==null ? "" :
			 * vo.getPhones().split(";;")[i]);
			 */
			/* temp.setAddress_name(vo.getAddressNames().split(";;")[i]); */
            temp.setRoad_address_name(vo.getRoadAddressNames().split(";;")[i]);
            temp.setX(vo.getPostionX().split(";;")[i]);
            temp.setY(vo.getPositionY().split(";;")[i]);
            temp.setPlace_url(vo.getPlaceUrls().split(";;")[i]);
            result.add(temp);
        }
        if (placeMemo.length!=0) {
            for (int i = 0; i < placeMemo.length; i++) {
                result.get(i).setPlace_memo(vo.getPlaceMemos().split(";;")[i].length() ==0 ? "" : vo.getPlaceMemos().split(";;")[i]);
            }
        }

        model.addAttribute("course", vo);
        model.addAttribute("courseItem", result);
		
		return "review/reviewNoteWrite";
		}
  	
  	// 리뷰게시판 수정페이지 보기
  	@RequestMapping("/review/reviewNoteEdit/{reviewNoteId}")
  	public String reviewNoteEdit(@PathVariable("reviewNoteId") int reviewNoteId,HttpSession session, Model model) {
  	
  		ArrayList<ReviewNoteVO> reviewNoteList = reviewnoteService.reviewNoteList();
  		ReviewNoteVO vo = reviewnoteService.selectReviewNote(reviewNoteId);
  		
  		String[] siteName = vo.getPlaceNames().split(";;");
  		
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
	  	
	  	//코스에서 리뷰게시판 검색
	  	@RequestMapping("/review/courseReviewNoteSearch")
	  	public String courseReviewNoteSearch(@RequestParam("reviewNoteTitle") String reviewNoteTitle, Model model) {
	 		
	  		
	  	ArrayList<ReviewNoteVO> reviewNoteSearch = reviewnoteService.reviewNoteSearch(reviewNoteTitle);
	
	  	model.addAttribute("reviewNoteList", reviewNoteSearch);
	  	
	  	
	  	 for(int i=0; i<reviewNoteSearch.size();i++) {
	  	 System.out.println(reviewNoteSearch.get(i).getReviewNoteId()); }
	  	 
	  	for (int i = 0; i < reviewNoteSearch.size(); i++) {
	    String tagRemove = reviewNoteSearch.get(i).getReviewNote().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
	  	 
	  	 // thumbnail test 새힘
		int begin = reviewNoteSearch.get(i).getReviewNote().indexOf("<img");
		if (begin > 0) {
			int begin1 = reviewNoteSearch.get(i).getReviewNote().indexOf("src", begin) + 5;
			int end = reviewNoteSearch.get(i).getReviewNote().indexOf("\"", begin1);
			reviewNoteSearch.get(i).setPreView(reviewNoteSearch.get(i).getReviewNote().substring(begin1, end));
		}
		if (reviewNoteSearch.get(i).getPreView()==null) {
			reviewNoteSearch.get(i).setPreView(reviewNoteSearch.get(i).getExhbnImgUrl());
		}
		// thumbnail end
	  	}
	  	
	  	return "review/reviewNoteList";
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
	 	
	 	for (int i = 0; i < reviewNoteNew.size(); i++) {
	    String tagRemove = reviewNoteNew.get(i).getReviewNote().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
	  	 
	  	 // thumbnail test 새힘
		int begin = reviewNoteNew.get(i).getReviewNote().indexOf("<img");
		if (begin > 0) {
			int begin1 = reviewNoteNew.get(i).getReviewNote().indexOf("src", begin) + 5;
			int end = reviewNoteNew.get(i).getReviewNote().indexOf("\"", begin1);
			reviewNoteNew.get(i).setPreView(reviewNoteNew.get(i).getReviewNote().substring(begin1, end));
		}
		if (reviewNoteNew.get(i).getPreView()==null) {
			reviewNoteNew.get(i).setPreView(reviewNoteNew.get(i).getExhbnImgUrl());
		}
		// thumbnail end
	  	}

	  	
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
	 	
	 	for (int i = 0; i < reviewNotePopular.size(); i++) {
	    String tagRemove = reviewNotePopular.get(i).getReviewNote().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
	  	 
	  	 // thumbnail test 새힘
		int begin = reviewNotePopular.get(i).getReviewNote().indexOf("<img");
		if (begin > 0) {
			int begin1 = reviewNotePopular.get(i).getReviewNote().indexOf("src", begin) + 5;
			int end = reviewNotePopular.get(i).getReviewNote().indexOf("\"", begin1);
			reviewNotePopular.get(i).setPreView(reviewNotePopular.get(i).getReviewNote().substring(begin1, end));
		}
		if (reviewNotePopular.get(i).getPreView()==null) {
			reviewNotePopular.get(i).setPreView(reviewNotePopular.get(i).getExhbnImgUrl());
		}
		// thumbnail end
	  	}
	  	
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
	 	
	 	for (int i = 0; i < reviewNoteComment.size(); i++) {
	    String tagRemove = reviewNoteComment.get(i).getReviewNote().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
	  	 
	  	 // thumbnail test 새힘
		int begin = reviewNoteComment.get(i).getReviewNote().indexOf("<img");
		if (begin > 0) {
			int begin1 = reviewNoteComment.get(i).getReviewNote().indexOf("src", begin) + 5;
			int end = reviewNoteComment.get(i).getReviewNote().indexOf("\"", begin1);
			reviewNoteComment.get(i).setPreView(reviewNoteComment.get(i).getReviewNote().substring(begin1, end));
		}
		if (reviewNoteComment.get(i).getPreView()==null) {
			reviewNoteComment.get(i).setPreView(reviewNoteComment.get(i).getExhbnImgUrl());
		}
		// thumbnail end
	  	}
	  	
	  	return "review/reviewSearch";
	  	}
}
