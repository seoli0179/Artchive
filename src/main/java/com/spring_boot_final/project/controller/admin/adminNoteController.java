package com.spring_boot_final.project.controller.admin;

import com.spring_boot_final.project.model.NoteVO;
import com.spring_boot_final.project.model.UserVO;
import com.spring_boot_final.project.service.UserService;
import com.spring_boot_final.project.service.admin.AdminExhbnService;
import com.spring_boot_final.project.service.admin.AdminNoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class adminNoteController {
    @Autowired
    UserService userService;

    @Autowired
    AdminNoteService adminNoteService;

    @RequestMapping("/admin/note/select/all")
    public String NoteSelectAll(HttpSession session, Model model){

        if (!adminCheck(session)) {
            return null;
        }

        model.addAttribute("notes", adminNoteService.NoteSelectAll());

        return "/admin/result/note/noteTable";
    }

    @RequestMapping("/admin/note/update")
    public boolean NoteUpdate(
            @RequestParam("noteId") String noteId,
            HttpSession session
    ) {

        if (!adminCheck(session)) {
            return false;
        }

        NoteVO vo = new NoteVO();

        return adminNoteService.UpdateNote(vo);

    }

    @RequestMapping("/admin/note/insert/notice")
    @ResponseBody
    public boolean InsertNotice(
            @RequestParam("title") String title,
            @RequestParam("content") String content,
            HttpSession session
    ) {

        if (!adminCheck(session)) {
            return false;
        }

        NoteVO vo = new NoteVO();
        vo.setUserId(session.getAttribute("sid").toString());
        vo.setNoteTitle(title);
        vo.setNote(content);

        return adminNoteService.InsertNotice(vo);

    }

    public boolean adminCheck(HttpSession session) {

        if (session.getAttribute("sid") == null)
            return false;
        UserVO vo = userService.selectUserView(session.getAttribute("sid").toString());

        if (vo.getUserRoll().toString().equals("ADMIN"))
            return true;

        return false;

    }

}
