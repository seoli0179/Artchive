package com.spring_boot_final.project.model;

import com.spring_boot_final.project.state.RollState;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@ToString
public class UserVO {
    private String userId;
    private String userPw;
    private String userEmail;
    private String userNickname;
    private String userGender;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date userBirth;
    private RollState userRoll;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
  
    // 유저 이름, 전화번호 추가
    private String userName;
    private String userNum;
    
    public UserVO() {
    }
    
    public UserVO(String userId, String userPw, String userEmail, String userNickname, String userGender,
			Date userBirth, String userName, String userNum) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userEmail = userEmail;
		this.userNickname = userNickname;
		this.userGender = userGender;
		this.userBirth = userBirth;
		this.userName = userName;
		this.userNum = userNum;
	}
    
    // 모름 UserDateController 에러나서 추가함
	public UserVO(String id, String encode, String email, String nickname, String gender, Date parse) {
		// TODO Auto-generated constructor stub
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public Date getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}

	public RollState getUserRoll() {
		return userRoll;
	}

	public void setUserRoll(RollState userRoll) {
		this.userRoll = userRoll;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNum() {
		return userNum;
	}

	public void setUserNum(String userNum) {
		this.userNum = userNum;
	}
    
	

    
}
