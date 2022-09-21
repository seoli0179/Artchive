package com.spring_boot_final.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IBookMarkReviewDAO;
import com.spring_boot_final.project.model.BookMarkReviewVO;

@Service
public class BookMarkReviewService {

	@Autowired
	@Qualifier("IBookMarkReviewDAO")
	IBookMarkReviewDAO dao;

	// 북마크 리뷰 리스트 보여주기
	public ArrayList<BookMarkReviewVO> bookMarkReviewList(String userId) {
		return dao.bookMarkReviewList(userId);
	}

	// 리뷰 북마크 추가
	public void insertBookMarkReview(BookMarkReviewVO vo) {
		dao.insertBookMarkReview(vo);
	}

	// 북마크 목록에 동일한 리뷰 있는지 체크
	public int checkBookMarkReview(int reviewNoteId, String userId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("reviewNoteId", reviewNoteId);
		map.put("userId", userId);

		return dao.checkBookMarkReview(map);
	}

	// 리뷰 북마크 삭제
	public void deleteBookMarkReview(BookMarkReviewVO vo) {
		dao.deleteBookMarkReview(vo);
	}

	public BookMarkReviewVO selectBookMarkReview(int bookMarkReviewId) {
		return dao.selectBookMarkReview(bookMarkReviewId);
	}

}
