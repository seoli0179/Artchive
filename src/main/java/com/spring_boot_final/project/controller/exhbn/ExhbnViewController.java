package com.spring_boot_final.project.controller.exhbn;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.service.ExhbnService;

@Controller
public class ExhbnViewController {

	@Autowired
	ExhbnService service;
	
 


	// detail page view
	@GetMapping("/exhbn/detail/{id}")
	public String detailTestView(@PathVariable int id, Model model) {

		ExhbnVO vo = service.selectDetailData(id);
		model.addAttribute("exhbn", vo);

		return "detail";
	}

	
	  // all page view
	  
	  @RequestMapping("/exhbn/list") public String listTestView
	  (Model model) {
	  
	  ArrayList<ExhbnVO> vo = service.selectAllData();
	  model.addAttribute("exhbnList", vo);
	  
	  return "list"; }
	 
	  
	
	 
	// detail search
	@RequestMapping("/exhbn/searchResult222")
	public String ExhbitonSearch(@RequestParam("exhbnTitle") String title, Model model) {
		ArrayList<ExhbnVO> exhbnSearch = service.exhbnSearch(title);
		model.addAttribute("exhbnSearchList", exhbnSearch);

		// System.out.println(title);

		for (int i = 0; i < exhbnSearch.size(); i++) {
			System.out.println(exhbnSearch.get(i).getExhbnId());
		}

		return "searchResult";
	}

	@RequestMapping("/exhbn/tab_exhbnSearch")
	public String tab_ExhbitonSearch(@RequestParam("exhbnType") String type, Model model) {
		ArrayList<ExhbnVO> tab_exhbnSearch = service.TabSearch(type);
		model.addAttribute("exhbnSearchList", tab_exhbnSearch);

		System.out.println(type);

		for (int i = 0; i < tab_exhbnSearch.size(); i++) {
			System.out.println(tab_exhbnSearch.get(i).getExhbnId());
		}

		return "searchResult";

	}
	
	@RequestMapping("/exhbn/tab_exhbnSearch2")
	public String tab_ExhbitonSearch2(@RequestParam("exhbnType") String type, Model model) {
		ArrayList<ExhbnVO> tab_exhbnSearch = service.TabSearch2(type);
		model.addAttribute("exhbnSearchList", tab_exhbnSearch);

		System.out.println(type);

		for (int i = 0; i < tab_exhbnSearch.size(); i++) {
			System.out.println(tab_exhbnSearch.get(i).getExhbnId());
		}

		return "searchResult";

	}
	@RequestMapping("/exhbn/tab_exhbnSearch3")
	public String tab_ExhbitonSearch3(@RequestParam("exhbnType") String type, Model model) {
		ArrayList<ExhbnVO> tab_exhbnSearch = service.TabSearch3(type);
		model.addAttribute("exhbnSearchList", tab_exhbnSearch);

		System.out.println(type);

		for (int i = 0; i < tab_exhbnSearch.size(); i++) {
			System.out.println(tab_exhbnSearch.get(i).getExhbnId());
		}

		return "searchResult";

	}
	
	@RequestMapping("/exhbn/tab_exhbnSearch4")
	public String tab_ExhbitonSearch4(@RequestParam("exhbnType") String type, Model model) {
		ArrayList<ExhbnVO> tab_exhbnSearch = service.TabSearch4(type);
		model.addAttribute("exhbnSearchList", tab_exhbnSearch);

		System.out.println(type);

		for (int i = 0; i < tab_exhbnSearch.size(); i++) {
			System.out.println(tab_exhbnSearch.get(i).getExhbnId());
		}

		return "searchResult";

	}

	@RequestMapping("/exhbn/tab_exhbnSearch5")
	public String tab_ExhbitonSearch5(@RequestParam("exhbnType") String type, Model model) {
		ArrayList<ExhbnVO> tab_exhbnSearch = service.TabSearch5(type);
		model.addAttribute("exhbnSearchList", tab_exhbnSearch);

		System.out.println(type);

		for (int i = 0; i < tab_exhbnSearch.size(); i++) {
			System.out.println(tab_exhbnSearch.get(i).getExhbnId());
		}

		return "searchResult";

	}
	@RequestMapping("/exhbn/tab_exhbnSearch6")
	public String tab_ExhbitonSearch6(@RequestParam("exhbnType") String type, Model model) {
		ArrayList<ExhbnVO> tab_exhbnSearch = service.TabSearch5(type);
		model.addAttribute("exhbnSearchList", tab_exhbnSearch);

		System.out.println(type);

		for (int i = 0; i < tab_exhbnSearch.size(); i++) {
			System.out.println(tab_exhbnSearch.get(i).getExhbnId());
		}

		return "searchResult";

	}
	/*
	 * @RequestMapping("/exhbn/tab_exhbnSearch_total") public String
	 * tab_ExhbitonSearch_total(@RequestParam("exhbnTitle") String
	 * title,@RequestParam("exhbnType") String type) { HashMap<String,Object> map =
	 * new HashMap<String,Object>(); System.out.println(title);
	 * System.out.println(type);
	 * 
	 * map.put("Title", title); map.put("Type", type);
	 * 
	 * 
	 * 
	 * return "searchResult"; //스프링이 자동으로 JSON타입으로 반환해서 전달한다. }
	 */
	
}