package com.spring_boot_final.project.service;

import com.spring_boot_final.project.dao.IExhbnDAO;
import com.spring_boot_final.project.model.ExhbnVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.util.ArrayList;

@Service
public class ExhbnService {

    OpenAPIService openAPIService;

    @Autowired
    @Qualifier("IExhbnDAO")
    IExhbnDAO dao;

    public ArrayList<ExhbnVO> exhbnSelectAllData(){
        return dao.selectAllExhbn();
    }

    public ExhbnVO exhbnSelectDetailData(int id){
        return dao.selectExhbn(id);
    }

    public void insertApiToDb(String from, String to, String cPage, String rows) throws IOException, ParserConfigurationException, SAXException {
        openAPIService.exhbnListRequest(from, to, cPage, rows);
    }

}
