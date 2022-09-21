package com.spring_boot_final.project.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.xml.parsers.ParserConfigurationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.xml.sax.SAXException;

import com.spring_boot_final.project.dao.IExhbnDAO;
import com.spring_boot_final.project.model.ExhbnVO;

@Service
public class ExhbnService {

    OpenAPIService openAPIService;

    @Autowired
    @Qualifier("IExhbnDAO")
    IExhbnDAO dao;

    public ArrayList<ExhbnVO> selectAllData(){
        return dao.selectAllExhbn();
    }

    public ExhbnVO selectDetailData(int id){
        return dao.selectExhbn(id);
    }

    public void insertApiToDB(String from, String to, String cPage, String rows) throws IOException, ParserConfigurationException, SAXException {
        openAPIService.exhbnListRequest(from, to, cPage, rows);
    }

    // tag 구현 
    public ArrayList<ExhbnVO> exhbnSearch(String title) {
		return dao.ExhbnSearch(title);
}


  public ArrayList<ExhbnVO> exhbnSearch2(String title, String exWhere, String exPrice) {
		HashMap<String, Object> map= new HashMap<String, Object>();
//  		map.put("Title", title);
//  		map.put("ExWhere", exWhere);
//  		map.put("ExPrice", exPrice);
		map.put("Title", title);
  		map.put("ExWhere", exWhere);
  		map.put("ExPrice", exPrice);
  		
		/*
		 * map.put("ExPrice", exWhen);
		 */
  		System.out.println(map.toString());
  		
  		
	  return dao.ExhbnSearch22(map); 
  
  }
 
    public ArrayList<ExhbnVO> TabSearch(String type) {
  		return dao.tab_ExhbnSearch(type);
}
    public ArrayList<ExhbnVO> TabSearch2(String type) {
  		return dao.tab_ExhbnSearch2(type);
}
    public ArrayList<ExhbnVO> TabSearch3(String type) {
  		return dao.tab_ExhbnSearch3(type);
}
    public ArrayList<ExhbnVO> TabSearch4(String type) {
  		return dao.tab_ExhbnSearch4(type);
}
    public ArrayList<ExhbnVO> TabSearch5(String type) {
  		return dao.tab_ExhbnSearch5(type);
}
    public ArrayList<ExhbnVO> TabSearch6(String type) {
  		return dao.tab_ExhbnSearch6(type);
}
    public ArrayList<ExhbnVO> TabSearch_total(String title,String type) {
  		HashMap<String, Object> map= new HashMap<String, Object>();
  		map.put("Title", title);
  		map.put("Type", type);
    	return dao.tab_ExhbnSearch_total(map);
  		
}

  public ArrayList<ExhbnVO> ExhbitonSearch_detail(String title2,String exWhere)
  { HashMap<String, Object> map= new HashMap<String, Object>();
  map.put("Title", title2); map.put("Area", exWhere); return
  dao.ExhbnSearch22(map);
  
  }
 
}