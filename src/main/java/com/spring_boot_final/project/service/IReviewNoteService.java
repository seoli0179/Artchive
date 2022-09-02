package com.spring_boot_final.project.service;

import java.util.ArrayList;

import com.spring_boot_final.project.model.ReviewNoteVO;

public interface IReviewNoteService {
	// 리뷰게시판 리스트 보여주기
	ArrayList<ReviewNoteVO> reviewNoteList();
	
	ReviewNoteVO selectReviewNote(int reviewNoteId);

}
