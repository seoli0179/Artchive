package com.spring_boot_final.project.dao;


import org.springframework.stereotype.Component;

import com.spring_boot_final.project.model.UserVO;

@Component
public interface IUserDAO {
    
	
	void insertUser(UserVO vo);
    
    UserVO selectUser(UserVO vo);

    UserVO selectUserFormEmail(String email);

    // 마이페이지 유저 조회
    UserVO selectUserView(String userId);
    
	// 마이페이지 개인정보 확인 view 
  	String userPwCheck(String userId);
  	
    // 마이페이지 수정
  	void updateUser(UserVO vo);
  	
	// 비밀번호 수정
 	void updatePw(UserVO vo);

  	// 마이페이지 탈퇴
 	void quitUser(String id);



}
