package com.spring_boot_final.project.controller.note;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoteViewController {

    @RequestMapping("subPage/note/list")
    public String list(){
        return "subPage/note/list";
    }

    @RequestMapping("subPage/note/detail")
    public String detail(){
        return "subPage/note/detail";
    }

}
