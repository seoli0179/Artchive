package com.spring_boot_final.project.dao;

import java.util.ArrayList;

import com.spring_boot_final.project.model.ReviewNoteVO;

public interface IReviewNoteDAO {
	// 리뷰게시판 리스트 보여주기
	public ArrayList<ReviewNoteVO> reviewNoteList();
	
	ReviewNoteVO selectReviewNote(int reviewNoteId);
	
}
