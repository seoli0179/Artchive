package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.CourseVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public interface ICourseDAO {
    public ArrayList<CourseVO> selectCourse();
    public CourseVO selectCoursePost(int courseId);
}
