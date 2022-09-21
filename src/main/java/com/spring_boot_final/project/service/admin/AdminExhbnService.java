package com.spring_boot_final.project.service.admin;

import com.spring_boot_final.project.dao.admin.IAdminExhbnDAO;
import com.spring_boot_final.project.dao.admin.IAdminUserDAO;
import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;

@Service
public class AdminExhbnService {

    @Autowired
    @Qualifier("IAdminExhbnDAO")
    IAdminExhbnDAO dao;

    public ArrayList<ExhbnVO> ExhbnSelectAll() {
        return dao.ExhbnSelectAll();
    }

    public ArrayList<ExhbnVO> ExhbnSelectFilter(int page, int limit, String searchType, String searchValue) {

        HashMap<String, Object> map = new HashMap<>();
        System.out.println(page + "/" + limit);
        map.put("page", --page * limit);
        map.put("limit", limit);
        map.put("searchType", searchType);
        map.put("searchValue", searchValue);

        return dao.ExhbnSelectFilter(map);
    }

    public boolean ExhbnUpdate(ExhbnVO vo) {
        try {
            dao.ExhbnUpdate(vo);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    public boolean ExhbnInsert(ExhbnVO vo) {
        try {
            dao.ExhbnInsert(vo);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    public int ExhbnMaxCount(String searchType, String searchValue) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("searchType", searchType);
        map.put("searchValue", searchValue);
        return dao.ExhbnMaxCount(map);
    }

    public ExhbnVO selectExhbn(int exhbnId){
        return dao.selectExhbn(exhbnId);
    }


}
