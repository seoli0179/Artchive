package com.spring_boot_final.project.dao.admin;

import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.ReviewNoteVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;

@Component
public interface IAdminReviewDAO {

    ArrayList<ReviewNoteVO> ReviewSelectFilter(HashMap<String, Object> map);

    int ReviewMaxCount();
}
