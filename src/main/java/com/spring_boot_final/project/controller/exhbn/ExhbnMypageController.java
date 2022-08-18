package com.spring_boot_final.project.controller.exhbn;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.service.ExhbnService;

@Controller
public class ExhbnMypageController {
	
	@Autowired
    ExhbnService service;
	
	// 마이페이지 view
    @RequestMapping("subPage/myPage")
    public String myPageView() {
        return "subPage/myPage";
    }
	
    // 좋아요 view
    @RequestMapping("subPage/myPageLike")
    public String myPageLike() {
        return "subPage/myPageLike";
    }
    
    // 코스 view
    @RequestMapping("subPage/myPageRecommend")
    public String myPageRecommend() {
        return "subPage/myPageRecommend";
    }
    
    // 추천 콘텐츠 view
    @RequestMapping("subPage/myPageCourse")
    public String myPageCourse() {
        return "subPage/myPageCourse";
    }
    
    // 활동 내역 게시글 view
    @RequestMapping("subPage/myPageActive")
    public String myPageActive() {
        return "subPage/myPageActive";
    }
    
    // 활동 내역 댓글 view
    @RequestMapping("subPage/myPageComment")
    public String myPageComment() {
        return "subPage/myPageComment";
    }
    
    // 예매 내역 댓글 view
    @RequestMapping("subPage/myPageReserv")
    public String myPageReserv() {
        return "subPage/myPageReserv";
    }
    
    // 회원 정보 확인 view
    @RequestMapping("subPage/myPageCheck")
    public String myPageCheck() {
        return "subPage/myPageCheck";
    }
    
    // 회원 기본 정보 수정 view
    @RequestMapping("subPage/myPageModifying")
    public String myPageModifying() {
        return "subPage/myPageModifying";
    }
    
    
    // 회원 맞춤 정보 수정 view
    @RequestMapping("subPage/myPageCustomized")
    public String myPageCustomized() {
        return "subPage/myPageCustomized";
    }
    
    // 회원 맞춤 정보2 수정 view
    @RequestMapping("subPage/myPageCustomized2")
    public String myPageCustomized2() {
        return "subPage/myPageCustomized2";
    }
    
    // 회원 맞춤 정보3 수정 view
    @RequestMapping("subPage/myPageCustomized3")
    public String myPageCustomized3() {
        return "subPage/myPageCustomized3";
    }
    
    
    // 회원 탈퇴 view
    @RequestMapping("subPage/myPageWithdraw")
    public String myPageWithdraw() {
        return "subPage/myPageWithdraw";
    }
}
