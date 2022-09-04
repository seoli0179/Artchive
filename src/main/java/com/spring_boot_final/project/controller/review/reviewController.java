package com.spring_boot_final.project.controller.review;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.spring_boot_final.project.model.NoteCommentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.model.NoteVO;
import com.spring_boot_final.project.service.CommentService;
import com.spring_boot_final.project.service.NoteService;
import com.spring_boot_final.project.state.ViewState;

@Controller
public class reviewController {
	@Autowired
    NoteService noteService;

    @Autowired
    CommentService commentService;
	
    // reviewNoteEdit 페이지 열기 요청 처리
 	@RequestMapping("/review/reviewNoteEdit")
 	public String reviewNoteEdit() {
 		return "review/reviewNoteEdit";
 	}
 	
 	 // reviewNoteEdit 페이지 열기 요청 처리
 	@RequestMapping("/review/reviewNoteWrite")
 	public String reviewNoteWrite() {
 		return "review/reviewNoteWrite";
 	}
	
	
}
