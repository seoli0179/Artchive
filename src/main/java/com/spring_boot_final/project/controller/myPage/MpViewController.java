package com.spring_boot_final.project.controller.myPage;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.service.CommentService;
import com.spring_boot_final.project.service.NoteService;
import com.spring_boot_final.project.service.UserService;

@Controller
public class MpViewController {
	
	
	@Autowired
	UserService userService;
	
	@Autowired
	NoteService noteService;
	
	@Autowired
	CommentService cmtService;
	
	@Autowired
	PasswordEncoder encoder;
	
    
//    // 좋아요 view
//    @RequestMapping("myPage/like")
//    public String myPageLike() {
//        return "myPage/like";
//    }
    
    // 코스 view
    @RequestMapping("myPage/mpCourse")
    public String myPageCourse() {
        return "myPage/mpCourse";
    }
    
    // 추천 콘텐츠 view
    @RequestMapping("myPage/recmd")
    public String myPageRecmd() {
        return "myPage/recmd";
    }
    
    // 추천 콘텐츠 이벤트 view
    @RequestMapping("myPage/event")
    public String myPageEvent() {
        return "myPage/event";
    }
    
//    // 활동 내역 게시글 view
//    @RequestMapping("myPage/actHistory")
//    public String myPageactHistory() {
//        return "myPage/actHistory";
//    }
    
//    // 활동 내역 댓글 view
//    @RequestMapping("myPage/comment")
//    public String myPageComment() {
//        return "myPage/comment";
//    }
//    
    // 회원 정보 확인 view
    @RequestMapping("myPage/check")
    public String myPageCheck() {
        return "myPage/check";
    }
    
    // 회원 정보 확인 view
    @RequestMapping("myPage/check2")
    public String myPageCheck2() {
        return "myPage/check2";
    }
    
    
    // 회원 맞춤 정보 수정 view
    @RequestMapping("myPage/custom")
    public String myPageCustom() {
        return "myPage/custom";
    }
    
    // 회원 비밀번호 변경 view
    @RequestMapping("myPage/pwChange")
    public String myPagePw() {
        return "myPage/pwChange";
    }
    
 

}
