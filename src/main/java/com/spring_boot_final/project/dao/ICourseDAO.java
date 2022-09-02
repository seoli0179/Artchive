package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.CourseVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;

@Component
public interface ICourseDAO {
    public ArrayList<CourseVO> selectCourse();
    public CourseVO selectCoursePost(int courseId);

    public void updateCourse(CourseVO vo);

    public void deleteCourse(HashMap<String, Object> map);

    public void insertCourse(CourseVO vo);

    public void hitCourse(int courseId) throws Exception;
}
