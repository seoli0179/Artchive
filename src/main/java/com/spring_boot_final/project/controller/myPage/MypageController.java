package com.spring_boot_final.project.controller.myPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.service.ExhbnService;

@Controller
public class MypageController {
	
	@Autowired
    ExhbnService service;
	
	// 마이페이지 view
    @RequestMapping("myPage/myPageHome")
    public String myPageView() {
        return "myPage/myPageHome";
    }
	
    // 스크랩 view
    @RequestMapping("myPage/myPageScrap")
    public String myPageScrap() {
        return "myPage/myPageScrap";
    }
    
    // 좋아요 view
    @RequestMapping("myPage/myPageLike")
    public String myPageLike() {
        return "myPage/myPageLike";
    }
    
    // 코스 view
    @RequestMapping("myPage/myPageCourse")
    public String myPageCourse() {
        return "myPage/myPageCourse";
    }
    
    // 추천 콘텐츠 view
    @RequestMapping("myPage/myPageRecmd")
    public String myPageRecmd() {
        return "myPage/myPageRecmd";
    }
    
    // 추천 콘텐츠 이벤트 view
    @RequestMapping("myPage/myPageEvent")
    public String myPageEvent() {
        return "myPage/myPageEvent";
    }
    
    // 활동 내역 게시글 view
    @RequestMapping("myPage/myPageAct")
    public String myPageAct() {
        return "myPage/myPageAct";
    }
    
    // 활동 내역 댓글 view
    @RequestMapping("myPage/myPageComment")
    public String myPageComment() {
        return "myPage/myPageComment";
    }
    
//    // 예매 내역 댓글 view
//    @RequestMapping("myPage/myPageReserv")
//    public String myPageReserv() {
//        return "myPage/myPageReserv";
//    }
//    
    // 회원 정보 확인 view
    @RequestMapping("myPage/myPageCheck")
    public String myPageCheck() {
        return "myPage/myPageCheck";
    }
    
    // 회원 기본 정보 수정 view
    @RequestMapping("myPage/myPageEdit")
    public String myPageEdit() {
        return "myPage/myPageEdit";
    }
    
    // 회원 맞춤 정보 수정 view
    @RequestMapping("myPage/myPageCustom")
    public String myPageCustom() {
        return "myPage/myPageCustom";
    }
    
    // 회원 비밀번호 변경 view
    @RequestMapping("myPage/myPagePw")
    public String myPagePw() {
        return "myPage/myPagePw";
    }
    
    // 회원 탈퇴 view
    @RequestMapping("myPage/myPageWithdraw")
    public String myPageWithdraw() {
        return "myPage/myPageWithdraw";
    }
}
