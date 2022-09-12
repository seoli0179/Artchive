package com.spring_boot_final.project.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.spring_boot_final.project.model.ReviewNoteVO;

@Component
public interface IReviewNoteDAO {
	// 리뷰게시판 리스트 보여주기
	public ArrayList<ReviewNoteVO> reviewNoteList();
	
	ReviewNoteVO selectReviewNote(int reviewNoteId);
	
	// 리뷰 게시판 작성
	void createReviewNote (ReviewNoteVO vo);
	
	// 리뷰 게시판 수정
	void updateReviewNote (ReviewNoteVO vo);
	
	// 리뷰 게시판 삭제
	void deleteReviewNote (ReviewNoteVO vo);
	
	// 리뷰 게시판 list 댓글 숫자 up
	void updateReviewNoteCommentUp (int reviewNoteId);
	
	// 리뷰 게시판 list 댓글 숫자 down
	void updateReviewNoteCommentDown (int reviewNoteId);
	
	// 리뷰게시판 좋아요 기능
	int selectReviewNoteLike (ReviewNoteVO vo);
	
	void insertReviewNoteLike(ReviewNoteVO vo);
	
	void deleteReviewNoteLike(ReviewNoteVO vo);
	
	void updateReviewNoteLikeUp (int reviewNoteId);
	
	void updateReviewNoteLikeDown (int reviewNoteId);
}
