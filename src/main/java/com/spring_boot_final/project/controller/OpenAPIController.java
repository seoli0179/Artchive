package com.spring_boot_final.project.controller;

import com.spring_boot_final.project.service.OpenAPIService;
import com.spring_boot_final.project.model.ExhbnVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.util.ArrayList;

@RestController
@Slf4j
public class OpenAPIController {

    @Autowired
    OpenAPIService service;

    @RequestMapping("/insertDate")
    public void insertDate() throws IOException, ParserConfigurationException, SAXException {
        service.exhbnListRequest();
    }

    @RequestMapping("/selectAllDate")
    public ArrayList<ExhbnVO> selectAllDate() {
        ArrayList<ExhbnVO> allData = service.exhbnSelectAllData();
        return allData;
    }

}
