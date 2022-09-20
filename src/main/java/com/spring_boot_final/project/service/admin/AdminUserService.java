package com.spring_boot_final.project.service.admin;

import com.spring_boot_final.project.dao.admin.IAdminUserDAO;
import com.spring_boot_final.project.model.UserVO;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Service
public class AdminUserService {

    @Autowired
    @Qualifier("IAdminUserDAO")
    IAdminUserDAO dao;

    public ArrayList<UserVO> UserSelectAll(){
        return dao.UserSelectAll();
    }

    public boolean SelectUserRoll(String userId){
        if(dao.SelectUserRoll(userId).equals("ADMIN")){
            return true;
        }
        return false;
    }

    public boolean UpdateUserState(UserVO vo){
        // 1 : 정상 / 2 : 삭제 / 3 : 임시비밀번호 / 4: 차단
        try {
            dao.UpdateUserState(vo);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }

        return true;
    }

}
