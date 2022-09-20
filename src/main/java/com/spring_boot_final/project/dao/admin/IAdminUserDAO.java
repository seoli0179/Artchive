package com.spring_boot_final.project.dao.admin;

import com.spring_boot_final.project.model.UserVO;
import org.springframework.stereotype.Component;

@Component
public interface IAdminUserDAO {

    String SelectUserRoll(String userId);
    void UpdateUserState(UserVO vo);
}
