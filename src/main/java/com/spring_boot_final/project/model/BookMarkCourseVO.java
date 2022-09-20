package com.spring_boot_final.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class BookMarkCourseVO {

	public String getCourseState() {
		return courseState;
	}

	public void setCourseState(String courseState) {
		this.courseState = courseState;
	}

	private int bookMarkCourseId;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date bookMarkCourseDate;

	private String userId;
	private int courseId;
	private int bookMarkCourseState;
	private String courseState;
	
	private String courseTitle;
	// DB에는 없지만 view에 출력할 때 사용할 필드

	private String exhbnImgUrl;

	public int getBookMarkCourseId() {
		return bookMarkCourseId;
	}

	public void setBookMarkCourseId(int bookMarkCourseId) {
		this.bookMarkCourseId = bookMarkCourseId;
	}

	public Date getBookMarkCourseDate() {
		return bookMarkCourseDate;
	}

	public void setBookMarkCourseDate(Date bookMarkCourseDate) {
		this.bookMarkCourseDate = bookMarkCourseDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public String getExhbnImgUrl() {
		return exhbnImgUrl;
	}

	public void setExhbnImgUrl(String exhbnImgUrl) {
		this.exhbnImgUrl = exhbnImgUrl;
	}
	
	public int getBookMarkCourseState() {
		return bookMarkCourseState;
	}

	public void setBookMarkCourseState(int bookMarkCourseState) {
		this.bookMarkCourseState = bookMarkCourseState;
	}

	
}
