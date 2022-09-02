package com.spring_boot_final.project.controller.course;

import com.spring_boot_final.project.model.CourseRouteVO;
import com.spring_boot_final.project.model.CourseVO;
import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.service.CourseService;
import com.spring_boot_final.project.service.ExhbnService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Array;
import java.util.*;

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

        ArrayList<CourseVO> courseVo = courseService.selectCourse();
        model.addAttribute("courseList",courseVo);

        return "course/courseMain";

        // course board view
    }

    // course list view
    @RequestMapping("/course/list")
    public String selectCourse(Model model) {
        ArrayList<CourseVO> vo = courseService.selectCourse();
        ArrayList<String[]> tag = new ArrayList<String[]>();
        for (CourseVO i : vo) {
            String[] temp = i.getCourseTag().split(";;");
            tag.add(temp);
        }
        model.addAttribute("courseList", vo);
        model.addAttribute("tag", tag);

        return "course/courseBoard";
    }

    // 코스 상세 보기
    @RequestMapping("/course/{courseId}")
    public String selectCoursePost(@PathVariable("courseId") int courseId,
                                   HttpSession session,
                                   Model model) throws Exception {
        CourseVO vo = courseService.selectCoursePost(courseId);
        model.addAttribute("course", vo);

        ArrayList<String[]> sites = new ArrayList<String[]>();
        String[] siteName = vo.getCourseSitesArr().split(";;");
        String[] siteAddress = vo.getCourseAddressArr().split(";;");
        String[] siteMemo = vo.getCourseMemoArr().split(";;");
        model.addAttribute("siteName", siteName);
        model.addAttribute("siteAddress", siteAddress);
        model.addAttribute("siteMemo", siteMemo);

        return "course/courseDetailView";
    }

    // 새 포스트 작성
    @RequestMapping("/course/newPost/{exhbnId}")
    public String writeCoursePost(@PathVariable("exhbnId") int exhbnId,
                                  HttpSession session,
                                  Model model) {

        ArrayList<String[]> sites = new ArrayList<String[]>();

        ExhbnVO vo = service.selectDetailData(exhbnId);
        model.addAttribute("exhbn", vo);

        return "course/courseDetailPost";
    }

    // 포스트 보기
    @ResponseBody
    @RequestMapping("/course/getCourse")
    public ArrayList<CourseRouteVO> getCourse(int courseId,
                                              HttpSession session,
                                              Model model) throws Exception {
        CourseVO vo = courseService.selectCoursePost(courseId);
        String[] siteNames = vo.getCourseSitesArr().split(";;");
        String[] siteAddresses = vo.getCourseAddressArr().split(";;");
        String[] siteMemos = vo.getCourseMemoArr().split(";;");
        ArrayList<CourseRouteVO> result = new ArrayList<>();

        for (int i = 0; i < siteNames.length; i++) {
            CourseRouteVO temp = new CourseRouteVO();
            temp.setSiteName(siteNames[i]);
            temp.setSiteAddresses(siteAddresses[i]);
            if (siteMemos.length == 0) {
                temp.setSiteMemos("");
            } else {
                temp.setSiteMemos(siteMemos[i]);
            }
            result.add(temp);
        }
        return result;
    }

    // 포스트 수정
    @RequestMapping("/course/{courseId}/edit")
    public String courseDetailEdit(@PathVariable("courseId") int courseId,
                                   HttpSession session,
                                   Model model) throws Exception {
        CourseVO vo = courseService.selectCoursePost(courseId);
        model.addAttribute("course", vo);
        return "course/courseDetailEdit";
    }

}