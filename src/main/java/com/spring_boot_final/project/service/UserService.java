package com.spring_boot_final.project.service;

import com.spring_boot_final.project.dao.IUserDAO;
import com.spring_boot_final.project.model.UserVO;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    @Qualifier("IUserDAO")
    IUserDAO dao;

    public void insertUser(UserVO vo){
        dao.insertUser(vo);
    }

    public UserVO selectUser(UserVO vo){
        return dao.selectUser(vo);
    }

}
