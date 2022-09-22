package com.spring_boot_final.project.service.admin;

import com.spring_boot_final.project.dao.admin.IAdminUserDAO;
import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.UserVO;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;

@Service
public class AdminUserService {

    @Autowired
    @Qualifier("IAdminUserDAO")
    IAdminUserDAO dao;

    public ArrayList<UserVO> UserSelectAll(){
        return dao.UserSelectAll();
    }

    public ArrayList<UserVO> UserSelect(int page, int limit, String searchType, String searchValue) {

        HashMap<String, Object> map = new HashMap<>();
        System.out.println(page + "/" + limit);
        map.put("page", --page * limit);
        map.put("limit", limit);
        map.put("searchType", searchType);
        map.put("searchValue", searchValue);

        return dao.UserSelect(map);
    }

    public int UserMaxCount(String searchType, String searchValue) {

        HashMap<String,Object> map = new HashMap<>();

        map.put("searchType", searchType);
        map.put("searchValue", searchValue);

        return dao.UserMaxCount(map);
    }

    public UserVO selectUser(String userId){
        return dao.selectUser(userId);
    }

    public boolean SelectUserRoll(String userId){
        if(dao.SelectUserRoll(userId).equals("ADMIN")){
            return true;
        }
        return false;
    }

    public boolean UpdateUser(UserVO vo){
        // 1 : 정상 / 2 : 삭제 / 3 : 임시비밀번호 / 4: 차단
        try {
            dao.UpdateUser(vo);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }

        return true;
    }

}
