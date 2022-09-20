package com.spring_boot_final.project.dao.admin;

import com.spring_boot_final.project.model.UserVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public interface IAdminUserDAO {

    ArrayList<UserVO> UserSelectAll();

    String SelectUserRoll(String userId);
    void UpdateUserState(UserVO vo);
}
