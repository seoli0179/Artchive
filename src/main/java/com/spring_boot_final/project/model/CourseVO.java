package com.spring_boot_final.project.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class CourseVO {
    private String courseId;
    private String userId;
    private String userNickname;
    private String exhbnId;
    private String exhbnTitle;
    private String courseTitle;
    private String courseTag;
    private int courseView;
    private int courseLike;
    private int courseComment;
    private int courseState;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date createdAt;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date updatedAt;
    private String courseSitesArr;
    private String courseAddressArr;

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getExhbnId() {
        return exhbnId;
    }

    public void setExhbnId(String exhbnId) {
        this.exhbnId = exhbnId;
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

    public int getCourseView() {
        return courseView;
    }

    public void setCourseView(int courseView) {
        this.courseView = courseView;
    }

    public int getCourseLike() {
        return courseLike;
    }

    public void setCourseLike(int courseLike) {
        this.courseLike = courseLike;
    }

    public int getCourseComment() {
        return courseComment;
    }

    public void setCourseComment(int courseComment) {
        this.courseComment = courseComment;
    }

    public int getCourseState() {
        return courseState;
    }

    public void setCourseState(int courseState) {
        this.courseState = courseState;
    }

    public String getCourseSitesArr() {
        return courseSitesArr;
    }

    public void setCourseSitesArr(String courseSitesArr) {
        this.courseSitesArr = courseSitesArr;
    }

    public String getCourseAddressArr() {
        return courseAddressArr;
    }

    public void setCourseAddressArr(String courseAddressArr) {
        this.courseAddressArr = courseAddressArr;
    }

    public String getExhbnTitle() {
        return exhbnTitle;
    }

    public void setExhbnTitle(String exhbnTitle) {
        this.exhbnTitle = exhbnTitle;
    }

    public String getUserNickname() {
        return userNickname;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname;
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
}
