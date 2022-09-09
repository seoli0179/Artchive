package com.spring_boot_final.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IReviewCommentDAO;
import com.spring_boot_final.project.model.ReviewCommentVO;

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

}
