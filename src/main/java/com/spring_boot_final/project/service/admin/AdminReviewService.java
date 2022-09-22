package com.spring_boot_final.project.service.admin;

import com.spring_boot_final.project.dao.admin.IAdminExhbnDAO;
import com.spring_boot_final.project.dao.admin.IAdminReviewDAO;
import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.ReviewNoteVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;

@Service
public class AdminReviewService {

    @Autowired
    @Qualifier("IAdminReviewDAO")
    IAdminReviewDAO dao;

    public ArrayList<ReviewNoteVO> ReviewSelectFilter(int page, int limit, String searchType, String searchValue) {

        HashMap<String, Object> map = new HashMap<>();
        System.out.println(page + "/" + limit);
        map.put("page", --page * limit);
        map.put("limit", limit);
        map.put("searchType", searchType);
        map.put("searchValue", searchValue);

        return dao.ReviewSelectFilter(map);
    }

    public int ReviewMaxCount(String searchType, String searchValue) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("searchType", searchType);
        map.put("searchValue", searchValue);
        return dao.ReviewMaxCount(map);
    }


}
