package com.spring_boot_final.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IBookMarkCourseDAO;
import com.spring_boot_final.project.model.BookMarkCourseVO;

@Service
public class BookMarkCourseService  {
	
	@Autowired
	@Qualifier("IBookMarkCourseDAO")
	IBookMarkCourseDAO dao;
	
	
	// 북마크 리스트 보여주기
	public ArrayList<BookMarkCourseVO> bookMarkCourseList(String userId){
		return dao.bookMarkCourseList(userId);
	}
	
	// 북마크 추가
	public void insertBookMarkCourse(BookMarkCourseVO vo) {
		dao.insertBookMarkCourse(vo);
	}
	
	// 북마크 목록에 동일한 코스 있는지 체크
	public int checkBookMarkCourse(int courseId, String userId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("courseId", courseId);
		map.put("userId", userId);
		
		return dao.checkBookMarkCourse(map);
	}

	// 북마크 삭제
	public void deleteBookMarkCourse(BookMarkCourseVO vo) {
		dao.deleteBookMarkCourse(vo);
	}
	
	public BookMarkCourseVO selectBookMarkCourse(int bookMarkCourseId) {
		return dao.selectBookMarkCourse(bookMarkCourseId);
	}

}
