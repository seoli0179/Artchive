package com.spring_boot_final.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.spring_boot_final.project.model.ReviewNoteVO;

@Component
public interface IReviewNoteDAO {
	// 리뷰게시판 리스트 보여주기
	public ArrayList<ReviewNoteVO> reviewNoteList();
	
	public ArrayList<ReviewNoteVO> reviewNoteLikeList();
	
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
	
	// 리뷰게시판 검색 기능
	ArrayList<ReviewNoteVO> reviewNoteSearch(String reviewNoteTitle);
	
	// 리뷰게시판 탭 메뉴
	public ArrayList<ReviewNoteVO> reviewNoteNew();
	public ArrayList<ReviewNoteVO> reviewNotePopular();
	public ArrayList<ReviewNoteVO> reviewNoteComment();
	
	// 마이 페이지 리뷰 게시글 조회
	public ArrayList<ReviewNoteVO> selectMpReview(String userId);
	
	// 마이 페이지 리뷰 게시글 삭제
	public void deleteMpReviewNote(int reviewNoteId);

	List<ReviewNoteVO> exhbnReviewNoteList(int exhbnId);
}
