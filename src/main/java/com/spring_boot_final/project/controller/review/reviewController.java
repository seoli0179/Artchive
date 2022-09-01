package com.spring_boot_final.project.controller.review;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.model.CommentVO;
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
	
	
	// reviewNote 페이지 열기 요청 처리
	@RequestMapping("/reviewNote")
	public String reviewNote() {
		return "review/reviewNote";
	}
	
 
@RequestMapping("/reviewNote/{noteId}")
public String reviewNote(
        @PathVariable int noteId,
        HttpSession session,
        Model model
) {

    NoteVO note = noteService.selectNote(noteId);

    if (note.getPageViewState() != ViewState.POST) {
        return "error";
    }

    if (session.getAttribute("sid") != null)
        note.setNoteLikeCheck(noteService.noteLikeCheck(note, session.getAttribute("sid").toString()));

    ArrayList<CommentVO> comment = commentService.selectCommentList(noteId);

    if (session.getAttribute("sid") != null) {
        for (int i = 0; i < comment.size(); i++) {
            comment.get(i).setCommentLikeCheck(commentService.noteLikeCheck(comment.get(i), session.getAttribute("sid").toString()));
        }
    }

    model.addAttribute("note", note);
    model.addAttribute("commentList", comment);

    return "review/reviewNote";
}

	
	
}
