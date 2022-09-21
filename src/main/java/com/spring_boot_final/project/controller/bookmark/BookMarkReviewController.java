package com.spring_boot_final.project.controller.bookmark;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_final.project.model.BookMarkReviewVO;
import com.spring_boot_final.project.service.BookMarkReviewService;

@Controller
public class BookMarkReviewController {
	
	@Autowired
	BookMarkReviewService bookMarkReviewService;

	// 내 전시 북마크 목록 보기 요청 처리
	@RequestMapping("/myPage/reviewScrap")
	public String bookMarCoursekList(HttpSession session, Model model) {
		// bookMark 테이블에서 현재 user에 해당하는 내용만 출력
		String userId = (String) session.getAttribute("sid");
		ArrayList<BookMarkReviewVO> bookMarkReviewList = bookMarkReviewService.bookMarkReviewList(userId);
		model.addAttribute("bookMarkReviewList", bookMarkReviewList);
		for (int i = 0; i < bookMarkReviewList.size(); i++) {
			System.out.println(bookMarkReviewList.get(i).getBookMarkReviewId());
		}
		return "myPage/reviewScrap";
	}

	// 북마크에 추가 요청
	@ResponseBody
	@RequestMapping("/insertBookMarkReview")
	public String insertBookMarkCourse(BookMarkReviewVO vo, HttpSession session, Model model) {

		// 로그인 성공 후 설정한 세션 sid 값 가져오기
		String userId = (String) session.getAttribute("sid");
		// VO에 userId 값 설정
		vo.setUserId(userId);
		/* vo.setExhbnIdBookMark(userId); */
	
		// 북마크에 같은 전시 있는지 확인
		int count = bookMarkReviewService.checkBookMarkReview(vo.getReviewNoteId(), userId);
		
		
		String resultmsg = "";

		if ( count == 0 ) {// 동일한 전시가 없다면 북마크에 추가
			resultmsg = "<script>alert('북마크에 추가되었습니다!'); location.href='/myPage/reviewScrap'</script>";
			bookMarkReviewService.insertBookMarkReview(vo);
		} else { // 이미 전시가 있다면 이미 존재한다는 팝업 표시
			resultmsg = "<script>alert('이미 북마크에 저장되어 있는 전시 리뷰입니다.'); location.href='/myPage/reviewScrap'</script>";
		} 

		/* bookmarkService.insertBookMark(vo); */

		System.out.println(vo.getReviewNoteId());

		/* return "redirect:/myPage/scrap" ; */// viewpage 이름 아님
		return resultmsg;
	}

	// 북마크 삭제
	@RequestMapping("/deleteBookMarkReview")
	@ResponseBody
	public String deleteBookMarkReview(@RequestParam("bookMarkReviewId") int bookMarkReviewId, 
										HttpSession session) {

		if (session.getAttribute("sid") == null)
			return "FAIL";

		BookMarkReviewVO vo = bookMarkReviewService.selectBookMarkReview(bookMarkReviewId);

		vo = new BookMarkReviewVO();
		vo.setBookMarkReviewId(bookMarkReviewId);
		vo.setUserId(session.getAttribute("sid").toString());

		bookMarkReviewService.deleteBookMarkReview(vo);

		System.out.println(bookMarkReviewId);

		return "SUCCESS";
	}

}
