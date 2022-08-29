package com.spring_boot_final.project.controller.course;

import com.spring_boot_final.project.model.CourseVO;
import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

@Controller
public class CourseDataController {

    @Autowired
    CourseService courseService;

//    @RequestMapping("/course/list")
//    public ArrayList<CourseVO> selectCourse(Model model) {
//        ArrayList<CourseVO> vo = courseService.selectCourse();
//        model.addAttribute("courseList",vo);
//
//        return "course/list";
//    }
}
