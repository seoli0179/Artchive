package com.spring_boot_final.project.controller.note;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot_final.project.model.NoteCommentVO;
import com.spring_boot_final.project.model.NoteVO;
import com.spring_boot_final.project.model.summary.DocumentVO;
import com.spring_boot_final.project.model.summary.OptionVO;
import com.spring_boot_final.project.model.summary.TotalVO;
import com.spring_boot_final.project.service.CommentService;
import com.spring_boot_final.project.service.NoteService;
import com.spring_boot_final.project.service.SummaryService;
import com.spring_boot_final.project.state.ViewState;

@Controller
public class NoteViewController {

    @Autowired
    NoteService noteService;

    @Autowired
    CommentService commentService;

    @Autowired
    SummaryService summaryService;


    @RequestMapping("/note/list")
    public String list(
            @RequestParam int page,
            @RequestParam String category,
            @RequestParam String sort,
            @RequestParam String keyword,
            HttpSession session,
            Model model
    ) {

        category = category.toUpperCase();


        System.out.println(category + " " + page);
        System.out.println(sort + " " + keyword);

        ArrayList<NoteVO> vo = noteService.selectNoteList(category, page, sort, keyword);
        // 공지, 이벤트
        ArrayList<NoteVO> noticeVo = noteService.selectNoteList("notice", 1, "new", "");
        ArrayList<NoteVO> eventVo = noteService.selectNoteList("event", 1, "new", "");

        for (int i = 0; i < vo.size(); i++) {
            String tagRemove = vo.get(i).getNote().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");

            TotalVO totalVo = new TotalVO();

            DocumentVO docVo = new DocumentVO();
            docVo.setTitle(vo.get(i).getNoteTitle());

            // html 태그 제거
            docVo.setContent(tagRemove);

            OptionVO optVo = new OptionVO();
            optVo.setLanguage("ko");
            optVo.setModel("general");
            optVo.setTone(1);
            optVo.setSummaryCount(3);

            totalVo.setDocument(docVo);
            totalVo.setOption(optVo);
            String textSum = summaryService.textSummary(totalVo);
            if (textSum != null) {
                vo.get(i).setNote(textSum);
            } else {
                vo.get(i).setNote(tagRemove.substring(0, (tagRemove.length() < 120 ? tagRemove.length() : 120)));
            }
            //vo.get(i).setNote(tagRemove.substring(0, (tagRemove.length() < 120 ? tagRemove.length() : 120)));

            if (session.getAttribute("sid") != null)
                vo.get(i).setNoteLikeCheck(noteService.noteLikeCheck(vo.get(i), session.getAttribute("sid").toString()));
        }

        model.addAttribute("list", vo);
        model.addAttribute("maxDataNum", noteService.selectNoteCount(category, keyword) - 1);
        if (category.equals("EVENT")) {
            System.out.println("event");
            return "note/event";
        }

        if (category.equals("FREE")) {
            model.addAttribute("eventList", noteService.selectLimitNoteList("EVENT",3));
            model.addAttribute("noticeList", noteService.selectLimitNoteList("NOTICE",3));
            System.out.println("list free");
            return "note/listFree";
        }
        System.out.println("note list");
        return "note/list";
    }

    @RequestMapping("/note/detail/{noteId}")
    public String detail(
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

        ArrayList<NoteCommentVO> comment = commentService.selectCommentList(noteId);

        if (session.getAttribute("sid") != null) {
            for (int i = 0; i < comment.size(); i++) {
                comment.get(i).setCommentLikeCheck(commentService.noteLikeCheck(comment.get(i), session.getAttribute("sid").toString()));
            }
        }

        model.addAttribute("note", note);
        model.addAttribute("commentList", comment);

        System.out.println(note.getCategory());

        if (note.getCategory().equals("EVENT"))
            return "note/eventDetail";

        return "note/detail";
    }

    @RequestMapping("/note/write")
    public String write() {
        return "note/write";
    }

    @RequestMapping("/note/update/{noteId}")
    public String update(
            @PathVariable int noteId,
            HttpSession session,
            Model model
    ) {

        if (session.getAttribute("sid") == null)
            return "error";

        NoteVO vo = noteService.selectNote(noteId);

        if (!vo.getUserId().equals(session.getAttribute("sid").toString()))
            return "error";

        model.addAttribute("note", vo);

        return "note/update";
    }

}
