package com.spring_boot_final.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IUserDAO;
import com.spring_boot_final.project.model.UserVO;

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

    // 마이페이지 유저 조회
    public UserVO selectUserView(String userId) {
    	return dao.selectUserView(userId);
    }
    
    // 마이페이지 수정
 	public void updateUser(UserVO vo) {
 		dao.updateUser(vo);
 	}
 	
 	// 비밀번호 수정
  	public void updatePw(UserVO vo) {
  		dao.updatePw(vo);
  	}
 	
 	// 마이페이지 탈퇴
 	public void quitUser(String id) {
 		dao.quitUser(id);
 	}
}
