package com.spring_boot_final.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_final.project.model.BookMarkCourseVO;

public interface IBookMarkCourseDAO {

	// 북마크 리스트 보여주기
	public ArrayList<BookMarkCourseVO> bookMarkCourseList(String userId); 
	
	// 북마크 추가
	public void insertBookMarkCourse(BookMarkCourseVO vo); 
	
	// 북마크 목록에 동일한 코스 있는지 체크
	public int checkBookMarkCourse(HashMap<String, Object> map); 

	// 북마크 삭제
	void deleteBookMarkCourse(BookMarkCourseVO vo);
	
	BookMarkCourseVO selectBookMarkCourse(int bookMarkCourseId);

}
