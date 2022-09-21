package com.spring_boot_final.project.controller.admin;

import com.spring_boot_final.project.model.NoteVO;
import com.spring_boot_final.project.model.UserVO;
import com.spring_boot_final.project.service.UserService;
import com.spring_boot_final.project.service.admin.AdminExhbnService;
import com.spring_boot_final.project.service.admin.AdminNoteService;
import com.spring_boot_final.project.state.ViewState;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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

    @RequestMapping("/admin/note/select")
    public String NoteSelectFilter(
            @RequestParam("page") int page,
            @RequestParam("searchType") String searchType,
            @RequestParam("searchValue") String searchValue,
            @RequestParam("category") String category,
            HttpSession session,
            Model model) {

        System.out.println(searchType + "/" + searchValue + "/");

        if (!adminCheck(session)) {
            return null;
        }

        System.out.println(category);

        model.addAttribute("notes", adminNoteService.NoteSelectFilter(page, 10, searchType, searchValue, category));
        model.addAttribute("maxCount", adminNoteService.NoteMaxCount(searchType, searchValue, category) / 10 + 2);
        model.addAttribute("currentPage", page);
        model.addAttribute("searchType", searchType);
        model.addAttribute("searchValue", searchValue);

        if(category.equals("NOTE"))
            return "/admin/result/note/noteTable";
        if(category.equals("NOTICE"))
            return "/admin/result/note/noticeTable";
        if(category.equals("EVENT"))
            return "/admin/result/note/eventTable";

        return "/admin/result/note/noteTable";
    }

    @RequestMapping("/admin/notice/update")
    @ResponseBody
    public boolean NoteUpdate(
            @RequestParam("noteId") int noteId,
            @RequestParam("noteTitle") String noteTitle,
            @RequestParam("note") String note,
            @RequestParam("pageViewState") String pageViewState,
            HttpSession session
    ) {

        if (!adminCheck(session)) {
            return false;
        }

        NoteVO vo = new NoteVO();

        vo.setNoteId(noteId);
        vo.setNoteTitle(noteTitle);
        vo.setNote(note);
        vo.setPageViewState(ViewState.valueOf(pageViewState));

        return adminNoteService.UpdateNotice(vo);

    }

    @RequestMapping("/admin/event/update")
    @ResponseBody
    public boolean EventUpdate(
            @RequestParam("noteId") int noteId,
            @RequestParam("noteTitle") String noteTitle,
            @RequestParam("note") String note,
            @RequestParam("eventStartDate") String eventStartDate,
            @RequestParam("eventEndDate") String eventEndDate,
            @RequestParam("pageViewState") String pageViewState,
            HttpSession session
    ) throws ParseException {

        if (!adminCheck(session)) {
            return false;
        }

        NoteVO vo = new NoteVO();

        vo.setNoteId(noteId);
        vo.setNoteTitle(noteTitle);
        vo.setNote(note);
        vo.setPageViewState(ViewState.valueOf(pageViewState));
        vo.setEventStartDate(new SimpleDateFormat("yyyy-MM-dd").parse(eventStartDate));
        vo.setEventEndDate(new SimpleDateFormat("yyyy-MM-dd").parse(eventEndDate));

        return adminNoteService.UpdateEvent(vo);

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

    @RequestMapping("/admin/note/insert/event")
    @ResponseBody
    public boolean InsertEvent(
            @RequestParam("title") String title,
            @RequestParam("startDate") String startDate,
            @RequestParam("endDate") String endDate,
            @RequestParam("content") String content,
            HttpSession session
    ) throws ParseException {

        if (!adminCheck(session)) {
            return false;
        }

        NoteVO vo = new NoteVO();
        vo.setUserId(session.getAttribute("sid").toString());
        vo.setNoteTitle(title);
        vo.setNote(content);
        vo.setEventStartDate(new SimpleDateFormat("yyyy-MM-dd").parse(startDate));
        vo.setEventEndDate(new SimpleDateFormat("yyyy-MM-dd").parse(endDate));

        return adminNoteService.InsertEvent(vo);

    }

    @RequestMapping("/admin/notice/updateview")
    public String adminExhbnUpdate(
            @RequestParam("noteId") int noteId,
            Model model,
            HttpSession session
    ) {

        model.addAttribute("note", adminNoteService.selectNote(noteId));

        if (adminCheck(session))
            return "admin/result/note/adminUpdateNotice";
        else
            return "error";
    }

    @RequestMapping("/admin/event/updateview")
    public String adminEventUpdateView(
            @RequestParam("noteId") int noteId,
            Model model,
            HttpSession session
    ) {

        model.addAttribute("note", adminNoteService.selectNote(noteId));

        if (adminCheck(session))
            return "admin/result/note/adminUpdateEvent";
        else
            return "error";
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
