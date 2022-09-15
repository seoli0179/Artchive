package com.spring_boot_final.project.dao;

import java.util.ArrayList;

import com.spring_boot_final.project.model.ReviewCommentVO;

public interface IReviewCommentDAO {
	// 리뷰게시판 댓글 보여주기
	ArrayList<ReviewCommentVO> selectReviewCommentList (int reviewNoteId);
	ReviewCommentVO selectReviewComment(int reviewCommentId);
	
	// 리뷰게시판 댓글 쓰기
	void  createReviewComment(ReviewCommentVO vo);
	
	// 리뷰게시판 댓글 삭제
	void deleteReviewComment (ReviewCommentVO vo);
}
