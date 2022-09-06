package com.spring_boot_final.project.controller.exhbn;

import com.spring_boot_final.project.service.ExhbnService;
import com.spring_boot_final.project.model.ExhbnVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.util.ArrayList;


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
    @RequestMapping("/exhbn/tab_searchResult222")
	public String ExhbitonSearch(
			@RequestParam("exhbnTitle") String title, Model model){
    	ArrayList<ExhbnVO> tab_exhbnSearch = service.TabSearch(title);
		model.addAttribute("exhbnList", tab_exhbnSearch);
		
		 System.out.println(title);
			
			  for(int i=0; i < tab_exhbnSearch.size(); i++) {
			  System.out.println(tab_exhbnSearch.get(i).getExhbnId()); }
			 
		return "exhbnList";
	}	
}
