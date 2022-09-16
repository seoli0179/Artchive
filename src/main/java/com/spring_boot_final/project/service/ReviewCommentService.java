package com.spring_boot_final.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IReviewCommentDAO;
import com.spring_boot_final.project.model.ReviewCommentVO;
import com.spring_boot_final.project.model.ReviewNoteVO;

@Service
public class ReviewCommentService implements IReviewCommentService {
	@Autowired
	@Qualifier("IReviewCommentDAO")
	IReviewCommentDAO dao;

	@Override
	public ArrayList<ReviewCommentVO> selectReviewCommentList(int reviewNoteId) {
		return dao.selectReviewCommentList(reviewNoteId);
	}

	@Override
	public ReviewCommentVO selectReviewComment(int reviewCommentId) {
		return dao.selectReviewComment(reviewCommentId);
	}

	@Override
	public void createReviewComment(ReviewCommentVO vo) {
		dao.createReviewComment(vo);
		
	}

	@Override
	public void deleteReviewComment(ReviewCommentVO vo) {
		dao.deleteReviewComment(vo);
		
	}
	
	// 마이 페이지 리뷰 게시글 조회
	public ArrayList<ReviewCommentVO> selectMpReviewComment(String userId) {
		return dao.selectMpReviewComment(userId);
	}
	
	// 마이 페이지 리뷰 게시글 삭제
	public void deleteMpReviewComment(int reviewCommentId) {
		dao.deleteMpReviewComment(reviewCommentId);
	}


}
