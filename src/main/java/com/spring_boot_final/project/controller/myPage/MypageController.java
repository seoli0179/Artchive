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
    @RequestMapping("myPage/myPageRecommend")
    public String myPageRecommend() {
        return "myPage/myPageRecommend";
    }
    
    // 추천 콘텐츠 view
    @RequestMapping("myPage/myPageCourse")
    public String myPageCourse() {
        return "myPage/myPageCourse";
    }
    
    // 추천 콘텐츠 이벤트 view
    @RequestMapping("myPage/myPageEvent")
    public String myPageEvent() {
        return "myPage/myPageEvent";
    }
    
    // 활동 내역 게시글 view
    @RequestMapping("myPage/myPageActive")
    public String myPageActive() {
        return "myPage/myPageActive";
    }
    
    // 활동 내역 댓글 view
    @RequestMapping("myPage/myPageComment")
    public String myPageComment() {
        return "myPage/myPageComment";
    }
    
    // 예매 내역 댓글 view
    @RequestMapping("myPage/myPageReserv")
    public String myPageReserv() {
        return "myPage/myPageReserv";
    }
    
    // 회원 정보 확인 view
    @RequestMapping("myPage/myPageCheck")
    public String myPageCheck() {
        return "myPage/myPageCheck";
    }
    
    // 회원 기본 정보 수정 view
    @RequestMapping("myPage/myPageModifying")
    public String myPageModifying() {
        return "myPage/myPageModifying";
    }
    
    
    // 회원 맞춤 정보 수정 view
    @RequestMapping("myPage/myPageCustomized")
    public String myPageCustomized() {
        return "myPage/myPageCustomized";
    }
    
    // 회원 맞춤 정보2 수정 view
    @RequestMapping("myPage/myPageCustomized2")
    public String myPageCustomized2() {
        return "myPage/myPageCustomized2";
    }
    
    // 회원 맞춤 정보3 수정 view
    @RequestMapping("myPage/myPageCustomized3")
    public String myPageCustomized3() {
        return "myPage/myPageCustomized3";
    }
    
    
    // 회원 탈퇴 view
    @RequestMapping("myPage/myPageWithdraw")
    public String myPageWithdraw() {
        return "myPage/myPageWithdraw";
    }
}
