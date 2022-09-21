package com.spring_boot_final.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class BookMarkReviewVO {
	
	
	
	private int bookMarkReviewId;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date bookMarkReviewDate;
	private String userId;
	private int reviewNoteId;
	private String reviewNoteTitle;

	
	private String placeNames;
    private String addressNames;
    private String courseMemoArr;
    private String courseTitle;
    private String courseTag;
    private String exhbnImgUrl;
    private String userNickname;
    private String reviewPageViewState;
    
    public String getReviewNoteTitle() {
		return reviewNoteTitle;
	}
	public void setReviewNoteTitle(String reviewNoteTitle) {
		this.reviewNoteTitle = reviewNoteTitle;
	}
	
    public int getBookMarkReviewId() {
		return bookMarkReviewId;
	}
	public void setBookMarkReviewId(int bookMarkReviewId) {
		this.bookMarkReviewId = bookMarkReviewId;
	}
	public Date getBookMarkReviewDate() {
		return bookMarkReviewDate;
	}
	public void setBookMarkReviewDate(Date bookMarkReviewDate) {
		this.bookMarkReviewDate = bookMarkReviewDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getReviewNoteId() {
		return reviewNoteId;
	}
	public void setReviewNoteId(int reviewNoteId) {
		this.reviewNoteId = reviewNoteId;
	}
	public String getPlaceNames() {
		return placeNames;
	}
	public void setPlaceNames(String placeNames) {
		this.placeNames = placeNames;
	}
	public String getAddressNames() {
		return addressNames;
	}
	public void setAddressNames(String addressNames) {
		this.addressNames = addressNames;
	}
	public String getCourseMemoArr() {
		return courseMemoArr;
	}
	public void setCourseMemoArr(String courseMemoArr) {
		this.courseMemoArr = courseMemoArr;
	}
	public String getCourseTitle() {
		return courseTitle;
	}
	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}
	public String getCourseTag() {
		return courseTag;
	}
	public void setCourseTag(String courseTag) {
		this.courseTag = courseTag;
	}
	public String getExhbnImgUrl() {
		return exhbnImgUrl;
	}
	public void setExhbnImgUrl(String exhbnImgUrl) {
		this.exhbnImgUrl = exhbnImgUrl;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getReviewPageViewState() {
		return reviewPageViewState;
	}
	public void setReviewPageViewState(String reviewPageViewState) {
		this.reviewPageViewState = reviewPageViewState;
	}
	
	
}
