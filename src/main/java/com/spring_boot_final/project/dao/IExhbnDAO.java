package com.spring_boot_final.project.dao;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Component;

import com.spring_boot_final.project.model.ExhbnVO;

@Component
public interface IExhbnDAO {

    //Create
    void insertExhbn(ExhbnVO vo);

    //Read
    ExhbnVO selectExhbn(int exhbnId);
    ArrayList<ExhbnVO> selectAllExhbn();
    int existExhbn(int exhbnId);
    
    // Read 예전 전시
    ExhbnVO selectExhbnEx(int exhbnId);
    ArrayList<ExhbnVO> selectAllExhbnType(String dateType);
    int existExhbnEx(int exhbnId);
    
    //Update
    void updateExhbn(ExhbnVO vo);

    //Delete
    void deleteExhbn(int exhbnId);
    
    // Search
	public ArrayList<ExhbnVO> ExhbnSearch(String title); // 상품 검색
	// 디테일 상품 검색

	public ArrayList<ExhbnVO> ExhbnSearch22(HashMap<String, Object> map)/* throws ParseException */;

	 //tab Search
	public ArrayList<ExhbnVO> tab_ExhbnSearch0(String type); 
	public ArrayList<ExhbnVO> tab_ExhbnSearch(String type); 
	public ArrayList<ExhbnVO> tab_ExhbnSearch2(String type); 
	public ArrayList<ExhbnVO> tab_ExhbnSearch3(String type); 
	public ArrayList<ExhbnVO> tab_ExhbnSearch4(String type); 
	public ArrayList<ExhbnVO> tab_ExhbnSearch5(String type); 
	public ArrayList<ExhbnVO> tab_ExhbnSearch6(String type); 
	public ArrayList<ExhbnVO> tab_ExhbnSearch_total(HashMap<String, Object> map); 



	 
}
