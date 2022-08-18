package com.spring_boot_final.project.controller.course;

import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.service.ExhbnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
public class CourseViewController {

    @Autowired
    ExhbnService service;

    // course page view
    @RequestMapping("/course")
    public String courseView(Model model) {

        ArrayList<ExhbnVO> vo = service.selectAllData();
        model.addAttribute("exhbnList",vo);

        return "course/courseMain";

        // course board view
    }

    @RequestMapping("/course/board")
    public String courseBoardView(Model model) {

        ArrayList<ExhbnVO> vo = service.selectAllData();
        model.addAttribute("exhbnList",vo);

        return "course/courseBoard";
    }

    // course !!!test!!!
    @RequestMapping("/course/detailCourse")
    public String courseDetailView(Model model) {

        ArrayList<ExhbnVO> vo = service.selectAllData();
        model.addAttribute("exhbnList",vo);

        return "course/detailCourse";
    }

}
