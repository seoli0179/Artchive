package com.spring_boot_final.project.controller.exhbn;

import com.spring_boot_final.project.service.ExhbnService;
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
public class ExhbnDataController {

    @Autowired
    ExhbnService service;

    @RequestMapping("/insertDate")
    public void insertDate() throws IOException, ParserConfigurationException, SAXException {
        service.insertApiToDb("20220601","20221231","1","200");
    }

    @RequestMapping("/selectAllDate")
    public ArrayList<ExhbnVO> selectAllDate() {
        ArrayList<ExhbnVO> allData = service.exhbnSelectAllData();
        return allData;
    }

}
