package com.spring_boot_final.project.controller.bookmark;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_final.project.model.BookMarkCourseVO;
import com.spring_boot_final.project.service.BookMarkCourseService;

@Controller
public class BookMarkCourseController {
	
	@Autowired
	BookMarkCourseService bookMarkCourseService;

	// 내 전시 북마크 목록 보기 요청 처리
	@RequestMapping("/myPage/courseScrap")
	public String bookMarCoursekList(HttpSession session, Model model) {
		// bookMark 테이블에서 현재 user에 해당하는 내용만 출력
		String userId = (String) session.getAttribute("sid");
		ArrayList<BookMarkCourseVO> bookMarkCourseList = bookMarkCourseService.bookMarkCourseList(userId);
		model.addAttribute("bookMarkCourseList", bookMarkCourseList);
		for (int i = 0; i < bookMarkCourseList.size(); i++) {
			System.out.println(bookMarkCourseList.get(i).getBookMarkCourseId());
		}
		return "myPage/courseScrap";
	}

	// 북마크에 추가 요청
	@ResponseBody
	@RequestMapping("/insertBookMarkCourse")
	public String insertBookMarkCourse(BookMarkCourseVO vo, HttpSession session, Model model) {

		// 로그인 성공 후 설정한 세션 sid 값 가져오기
		String userId = (String) session.getAttribute("sid");
		// VO에 userId 값 설정
		vo.setUserId(userId);
		/* vo.setExhbnIdBookMark(userId); */
	
		// 북마크에 같은 전시 있는지 확인
		int count = bookMarkCourseService.checkBookMarkCourse(vo.getCourseId(), userId);
		
		
		String resultmsg = "";

		if ( count == 0 ) {// 동일한 전시가 없다면 북마크에 추가
			resultmsg = "<script>alert('북마크에 추가되었습니다!'); location.href='/myPage/courseScrap'</script>";
			bookMarkCourseService.insertBookMarkCourse(vo);
		} else { // 이미 전시가 있다면 이미 존재한다는 팝업 표시
			resultmsg = "<script>alert('이미 북마크에 저장되어 있는 전시입니다.'); location.href='/myPage/courseScrap'</script>";
		} 

		/* bookmarkService.insertBookMark(vo); */

		System.out.println(vo.getCourseId());

		/* return "redirect:/myPage/scrap" ; */// viewpage 이름 아님
		return resultmsg;
	}

	// 북마크 삭제
	@RequestMapping("/deleteBookMarkCourse")
	@ResponseBody
	public String deleteBookMarkCourse(@RequestParam("bookmarkCourseId") int bookMarkCourseId, 
										HttpSession session) {

		if (session.getAttribute("sid") == null)
			return "FAIL";

		BookMarkCourseVO vo = bookMarkCourseService.selectBookMarkCourse(bookMarkCourseId);

		vo = new BookMarkCourseVO();
		vo.setBookMarkCourseId(bookMarkCourseId);
		vo.setUserId(session.getAttribute("sid").toString());

		bookMarkCourseService.deleteBookMarkCourse(vo);

		System.out.println(bookMarkCourseId);

		return "SUCCESS";
	}

}
