package com.spring_boot_final.project.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
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
    public ArrayList<ExhbnVO> exhbnSearch(String title) {
		return dao.ExhbnSearch(title);

}
    public ArrayList<ExhbnVO> TabSearch(String title) {
  		return dao.tab_ExhbnSearch(title);
}
}
