package com.spring_boot_final.project.controller.course;

import com.spring_boot_final.project.model.CourseVO;
import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.service.CourseService;
import com.spring_boot_final.project.service.ExhbnService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class CourseViewController {

    @Autowired
    ExhbnService service;
    @Autowired
    CourseService courseService;

    // course page view
    @RequestMapping("/course")
    public String courseView(Model model) {

        ArrayList<ExhbnVO> vo = service.selectAllData();
        model.addAttribute("exhbnList",vo);

        return "course/courseMain";

        // course board view
    }

    // course list view
    @RequestMapping("/course/list")
    public String selectCourse(Model model) {
        ArrayList<CourseVO> vo = courseService.selectCourse();
        model.addAttribute("courseList",vo);

        return "course/courseBoard";
    }

    // course !!!test!!!
    @RequestMapping("/course/detail")
    public String courseDetailView(Model model) {

        ArrayList<ExhbnVO> vo = service.selectAllData();
        model.addAttribute("exhbnList",vo);

        return "course/courseDetailView";
    }
    @RequestMapping("/course/detail/edit")
    public String courseDetailEdit(Model model) {

        ArrayList<ExhbnVO> vo = service.selectAllData();
        model.addAttribute("exhbnList",vo);

        return "course/courseDetailEdit";
    }

}
