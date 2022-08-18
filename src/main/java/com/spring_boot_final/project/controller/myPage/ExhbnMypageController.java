package com.spring_boot_final.project.controller.myPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.service.ExhbnService;

@Controller
public class ExhbnMypageController {
	
	@Autowired
    ExhbnService service;
	
	// 마이페이지 view
    @RequestMapping("subPage/myPage/myPageHome")
    public String myPageView() {
        return "subPage/myPage/myPageHome";
    }
	
    // 좋아요 view
    @RequestMapping("subPage/myPage/myPageLike")
    public String myPageLike() {
        return "subPage/myPage/myPageLike";
    }
    
    // 추천 콘텐츠 view
    @RequestMapping("subPage/myPage/myPageRecommend")
    public String myPageRecommend() {
        return "subPage/myPage/myPageRecommend";
    }
    
    
    // 코스 view
    @RequestMapping("subPage/myPage/myPageCourse")
    public String myPageCourse() {
        return "subPage/myPage/myPageCourse";
    }
    
    // 활동 내역 게시글 view
    @RequestMapping("subPage/myPage/myPageActive")
    public String myPageActive() {
        return "subPage/myPage/myPageActive";
    }
    
    // 활동 내역 댓글 view
    @RequestMapping("subPage/myPage/myPageComment")
    public String myPageComment() {
        return "subPage/myPage/myPageComment";
    }
    
    // 예매 내역 댓글 view
    @RequestMapping("subPage/myPage/myPageReserv")
    public String myPageReserv() {
        return "subPage/myPage/myPageReserv";
    }
    
    // 회원 정보 확인 view
    @RequestMapping("subPage/myPage/myPageCheck")
    public String myPageCheck() {
        return "subPage/myPage/myPageCheck";
    }
    
    // 회원 기본 정보 수정 view
    @RequestMapping("subPage/myPage/myPageModifying")
    public String myPageModifying() {
        return "subPage/myPage/myPageModifying";
    }
    
    
    // 회원 맞춤 정보 수정 view
    @RequestMapping("subPage/myPage/myPageCustomized")
    public String myPageCustomized() {
        return "subPage/myPage/myPageCustomized";
    }
    
    // 회원 맞춤 정보2 수정 view
    @RequestMapping("subPage/myPage/myPageCustomized2")
    public String myPageCustomized2() {
        return "subPage/myPage/myPageCustomized2";
    }
    
    // 회원 맞춤 정보3 수정 view
    @RequestMapping("subPage/myPage/myPageCustomized3")
    public String myPageCustomized3() {
        return "subPage/myPage/myPageCustomized3";
    }
    
    
    // 회원 탈퇴 view
    @RequestMapping("subPage/myPage/myPageWithdraw")
    public String myPageWithdraw() {
        return "subPage/myPage/myPageWithdraw";
    }
}
