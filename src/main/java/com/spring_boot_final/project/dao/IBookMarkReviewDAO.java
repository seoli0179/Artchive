package com.spring_boot_final.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_final.project.model.BookMarkReviewVO;

public interface IBookMarkReviewDAO {

	// 북마크 리뷰 리스트 보여주기
	public ArrayList<BookMarkReviewVO> bookMarkReviewList(String userId); 
	
	// 리뷰 북마크 추가
	public void insertBookMarkReview(BookMarkReviewVO vo); 
	
	// 북마크 목록에 동일한 리뷰 있는지 체크
	public int checkBookMarkReview(HashMap<String, Object> map); 

	// 리뷰 북마크 삭제
	public void deleteBookMarkReview(BookMarkReviewVO vo);
	
	public BookMarkReviewVO selectBookMarkReview(int bookMarkReviewId);

}
