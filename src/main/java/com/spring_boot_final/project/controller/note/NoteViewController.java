package com.spring_boot_final.project.controller.note;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoteViewController {

    @RequestMapping("/note/list")
    public String list(){
        return "note/list";
    }

    @RequestMapping("/note/detail")
    public String detail(){
        return "note/detail";
    }

}
