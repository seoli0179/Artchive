package com.spring_boot_final.project.service;

import com.spring_boot_final.project.dao.ICourseDAO;
import com.spring_boot_final.project.model.CourseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;

@Service
public class CourseService {

    @Autowired
    @Qualifier("ICourseDAO")
    ICourseDAO dao;

   public ArrayList<CourseVO> selectCourse() {
        return dao.selectCourse();
    }
   public final CourseVO selectCoursePost(int courseId) {
       return dao.selectCoursePost(courseId);
   }

    public void updateCourse(CourseVO vo) {
       dao.updateCourse(vo);
    }

    public void deleteCourse(HashMap<String, Object> map) {
       dao.deleteCourse(map);
    }

    public void insertCourse(CourseVO vo) {
       dao.insertCourse(vo);
    }
}
