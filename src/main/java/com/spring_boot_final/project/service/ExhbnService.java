package com.spring_boot_final.project.service;

import com.spring_boot_final.project.dao.IExhbnDAO;
import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.NoteVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

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
    
    public ArrayList<ExhbnVO> searchList(String keyword) {

        HashMap<String, Object> map = new HashMap<>();
		/*
		 * map.put("category", category); map.put("page", --page * 10); map.put("sort",
		 * sort);
		 */
        map.put("keyword", keyword);

        ArrayList<ExhbnVO> vo = dao.searchList(map);
		/*
		 * for(int i=0; i<0;i++)
		 */      /*  for (ExhbnVO exhbnVO : vo) {
            if (dao.selectNoteLike(exhbnVO) > 0) {
            	exhbnVO.setNoteLikeCheck(true);
            } else {
            	exhbnVO.setNoteLikeCheck(false);
            }*/
        

        return vo;
    }
}
