package com.spring_boot_final.project.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IReviewNoteDAO;
import com.spring_boot_final.project.model.NoteVO;
import com.spring_boot_final.project.model.ReviewNoteVO;

@Service
public class ReviewNoteService{
	
	@Autowired
	@Qualifier("IReviewNoteDAO")
	IReviewNoteDAO dao;

	public ArrayList<ReviewNoteVO> reviewNoteList() {
		return dao.reviewNoteList();
	}
	
	public ArrayList<ReviewNoteVO> reviewNoteLikeList() {
		return dao.reviewNoteLikeList();
	}

	public ReviewNoteVO selectReviewNote(int reviewNoteId) {
		return dao.selectReviewNote(reviewNoteId);
	}

	public void createReviewNote(ReviewNoteVO vo) {
		dao.createReviewNote(vo);
		
	}

	public void updateReviewNote(ReviewNoteVO vo) {
		dao.updateReviewNote(vo);
		
	}

	public void deleteReviewNote(ReviewNoteVO vo) {
		dao.deleteReviewNote(vo);
		
	}

	public void updateReviewNoteCommentUp(int reviewNoteId) {
		dao.updateReviewNoteCommentUp(reviewNoteId);
		
	}

	public void updateReviewNoteCommentDown(int reviewNoteId) {
		dao.updateReviewNoteCommentDown(reviewNoteId);
		
	}

	public boolean reviewNoteLike(ReviewNoteVO vo) {
		if (dao.selectReviewNoteLike(vo) > 0) {
            dao.updateReviewNoteLikeDown(vo.getReviewNoteId());
            dao.deleteReviewNoteLike(vo);
            return false;
        } else {
            dao.updateReviewNoteLikeUp(vo.getReviewNoteId());
            dao.insertReviewNoteLike(vo);
            return true;
        }
	}
		
	public boolean reviewNoteLikeCheck (ReviewNoteVO vo, String userId) {
		ReviewNoteVO temp = new ReviewNoteVO();
		temp.setUserId(userId);
		temp.setReviewNoteId(vo.getReviewNoteId());
		if (dao.selectReviewNoteLike(temp) > 0) {
            return true;
        } else {
            return false;
        }
	}
	
	// 리뷰 게시판 검색
	public ArrayList<ReviewNoteVO> reviewNoteSearch(String reviewNoteTitle){
		return dao.reviewNoteSearch(reviewNoteTitle);
	}
	
	// 리뷰 게시판 탭 메뉴 정렬
	public ArrayList<ReviewNoteVO> reviewNoteNew(){
		return dao.reviewNoteNew();
	}
	
	public ArrayList<ReviewNoteVO> reviewNotePopular(){
		return dao.reviewNotePopular();
	}
	
	public ArrayList<ReviewNoteVO> reviewNoteComment(){
		return dao.reviewNoteComment();
	}
	
	
	// 마이 페이지 리뷰 게시글 조회
	public ArrayList<ReviewNoteVO> selectMpReview(String userId) {
		return dao.selectMpReview(userId);
	}
	
	// 마이 페이지 리뷰 게시글 삭제
	public void deleteMpReviewNote(int reviewNoteId) {
		dao.deleteMpReviewNote(reviewNoteId);
	}


	public List<ReviewNoteVO> exhbnReviewNoteList(int exhbnId) {
		return dao.exhbnReviewNoteList(exhbnId);
	}
}
