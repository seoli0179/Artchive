package com.spring_boot_final.project.service;

import java.util.ArrayList;

import com.spring_boot_final.project.model.ReviewCommentVO;

public interface IReviewCommentService {
	// 리뷰게시판 댓글 보여주기
	ArrayList<ReviewCommentVO> selectReviewCommentList (int reviewNoteId);
	ReviewCommentVO selectReviewComment(int reviewCommentId);
}
