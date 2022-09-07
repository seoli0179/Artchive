package com.spring_boot_final.project.controller.exhbn;

import java.io.IOException;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.xml.sax.SAXException;

import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.service.ExhbnService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@RestController
public class ExhbnDataController {

    @Autowired
    ExhbnService service;

    @RequestMapping("/exhbn/insertDate")
    public void insertDate() throws IOException, ParserConfigurationException, SAXException {
        service.insertApiToDB("20220601","20221231","1","200");
    }

    @RequestMapping("/exhbn/selectAllDate")
    public ArrayList<ExhbnVO> selectAllDate() {
        ArrayList<ExhbnVO> allData = service.selectAllData();
        return allData;
    }
    // tab search
    @RequestMapping("/exhbn/tab_exhbnSearch")
    
	public String ExhbitonSearch(
			@RequestParam("exhbnType") String type, Model model){
    	ArrayList<ExhbnVO> tab_exhbnSearch = service.TabSearch(type);
		model.addAttribute("exhbnType", tab_exhbnSearch);
		
		 System.out.println(type);
			
			  for(int i=0; i < tab_exhbnSearch.size(); i++) {
			  System.out.println(tab_exhbnSearch.get(i).getExhbnId()); }
			 
		return "list";
	}	
}
