package com.spring_boot_final.project.controller.note;

import com.spring_boot_final.project.model.NoteVO;
import com.spring_boot_final.project.service.CommentService;
import com.spring_boot_final.project.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
public class NoteViewController {

    @Autowired
    NoteService noteService;

    @Autowired
    CommentService commentService;

    @RequestMapping("/note/list")
    public String list(Model model) {

        ArrayList<NoteVO> vo = noteService.selectNoteList();

        for (int i = 0; i < vo.size(); i++) {
            String tagRemove = vo.get(i).getNote().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
            vo.get(i).setNote(tagRemove.substring(0, (tagRemove.length() < 120 ? tagRemove.length() : 120)));
        }

        model.addAttribute("list", vo);
        return "note/list";
    }

    @RequestMapping("/note/detail/{noteId}")
    public String detail(
            @PathVariable int noteId,
            Model model
            ) {

        model.addAttribute("note", noteService.selectNote(noteId));
        model.addAttribute("commentList",commentService.selectComment(noteId));

        return "note/detail";
    }

    @RequestMapping("/note/write")
    public String write() {
        return "note/write";
    }

    @RequestMapping("/note/update/{noteId}")
    public String update(
            @PathVariable int noteId,
            Model model
    ) {

        model.addAttribute("note", noteService.selectNote(noteId));

        return "note/update";
    }

}
