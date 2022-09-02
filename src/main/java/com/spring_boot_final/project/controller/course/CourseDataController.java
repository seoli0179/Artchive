package com.spring_boot_final.project.controller.course;

import com.spring_boot_final.project.model.CourseVO;
import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;

@Controller
public class CourseDataController {

    @Autowired
    CourseService courseService;

    @ResponseBody
    @RequestMapping("/course/insertCourse")
    public String insertCourse(HttpSession session, @RequestBody CourseVO vo){
        if (session.getAttribute("sid") == null) {
            return "FAIL";
        }

        vo.setUserId(session.getAttribute("sid").toString());
        courseService.insertCourse(vo);
        System.out.println(vo.getExhbnId());
        System.out.println(vo.getUserId());
        System.out.println(vo.getCourseState());
        return "SUCCESS";
    }

    @ResponseBody
    @RequestMapping("/course/updateCourse")
    public String updateCourse(HttpSession session, @RequestBody CourseVO vo){
        if (session.getAttribute("sid") == null) {
            return "FAIL";
        }

        vo.setUserId(session.getAttribute("sid").toString());
        courseService.updateCourse(vo);

        return "SUCCESS";
    }

    @ResponseBody
    @RequestMapping("/course/deleteCourse")
    public String deleteCourse(HttpSession session,
                               @RequestParam("courseId") int courseId){
        String userId = session.getAttribute("sid").toString();
        if (session.getAttribute("sid") == null) {
            return "FAIL";
        }

        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("courseId", courseId);
        map.put("userId", userId);
        courseService.deleteCourse(map);

        return "SUCCESS";
    }

}
