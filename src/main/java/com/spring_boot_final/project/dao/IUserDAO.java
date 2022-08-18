package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.UserVO;
import org.apache.catalina.User;
import org.springframework.stereotype.Component;

@Component
public interface IUserDAO {
    void insertUser(UserVO vo);
    UserVO selectUser(UserVO vo);
}
