package com.spring_boot_final.project.dao.admin;

import com.spring_boot_final.project.model.UserVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;

@Component
public interface IAdminUserDAO {

    ArrayList<UserVO> UserSelectAll();
    ArrayList<UserVO> UserSelect(HashMap<String,Object> map);

    int UserMaxCount(HashMap<String,Object> map);

    UserVO selectUser(String userId);
    String SelectUserRoll(String userId);
    void UpdateUser(UserVO vo);
}
