package com.spring_boot_final.project.controller.note;

import com.spring_boot_final.project.model.CommentVO;
import com.spring_boot_final.project.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RestController
public class commentDataController {

    @Autowired
    CommentService service;

    @RequestMapping("/comment/createComment")
    public String createComment(
            @RequestParam("noteId") String noteId,
            @RequestParam("comment") String comment,
            HttpSession session
    ){

        if(session.getAttribute("sid") == null)
            return "FAIL";

        CommentVO vo = new CommentVO();
        vo.setNoteId(Integer.parseInt(noteId));
        vo.setComment(comment);
        vo.setUserId(session.getAttribute("sid").toString());

        service.createComment(vo);

        return "SUCCESS";
    }
}
