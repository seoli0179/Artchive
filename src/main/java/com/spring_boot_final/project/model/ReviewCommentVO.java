package com.spring_boot_final.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.spring_boot_final.project.state.ViewState;

public class ReviewCommentVO {
	
	private int reviewCommentId;
	private int reviewNoteId;
	private String userId;
	private ViewState reivewPageViewState;
	private String reviewComment;
	private int reviewCommentLike;
	@DateTimeFormat(pattern="yyyy-MM-dd")
    private Date reviewCommentCreatedDate;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date reviewCommentUpdatedDate;
    
    private String userNickname;
    private boolean reviewCommentLikeCheck;
    
	public int getReviewCommentId() {
		return reviewCommentId;
	}
	public void setReviewCommentId(int reviewCommentId) {
		this.reviewCommentId = reviewCommentId;
	}
	public int getReviewNoteId() {
		return reviewNoteId;
	}
	public void setReviewNoteId(int reviewNoteId) {
		this.reviewNoteId = reviewNoteId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public ViewState getReivewPageViewState() {
		return reivewPageViewState;
	}
	public void setReivewPageViewState(ViewState reivewPageViewState) {
		this.reivewPageViewState = reivewPageViewState;
	}
	public String getReviewComment() {
		return reviewComment;
	}
	public void setReviewComment(String reviewComment) {
		this.reviewComment = reviewComment;
	}
	public int getReviewCommentLike() {
		return reviewCommentLike;
	}
	public void setReviewCommentLike(int reviewCommentLike) {
		this.reviewCommentLike = reviewCommentLike;
	}
	public Date getReviewCommentCreatedDate() {
		return reviewCommentCreatedDate;
	}
	public void setReviewCommentCreatedDate(Date reviewCommentCreatedDate) {
		this.reviewCommentCreatedDate = reviewCommentCreatedDate;
	}
	public Date getReviewCommentUpdatedDate() {
		return reviewCommentUpdatedDate;
	}
	public void setReviewCommentUpdatedDate(Date reviewCommentUpdatedDate) {
		this.reviewCommentUpdatedDate = reviewCommentUpdatedDate;
	}
	public boolean isReviewCommentLikeCheck() {
		return reviewCommentLikeCheck;
	}
	public void setReviewCommentLikeCheck(boolean reviewCommentLikeCheck) {
		this.reviewCommentLikeCheck = reviewCommentLikeCheck;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
    
    
}
