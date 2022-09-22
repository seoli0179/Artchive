package com.spring_boot_final.project.controller.exhbn;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.spring_boot_final.project.model.ReviewNoteVO;
import com.spring_boot_final.project.service.ReviewNoteService;
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

    @Autowired
    ReviewNoteService reviewService;



    // detail page view
	@GetMapping("/exhbn/detail/{id}")
	public String detailTestView(@PathVariable int id, Model model) {

		ExhbnVO vo = service.selectDetailData(id);
		model.addAttribute("exhbn", vo);

        List<ReviewNoteVO> reviewNoteList = reviewService.exhbnReviewNoteList(id);

        for (ReviewNoteVO reviewNoteVO : reviewNoteList) {
            // thumbnail test 새힘
            int begin = reviewNoteVO.getReviewNote().indexOf("<img");
            if (begin > 0) {
                int begin1 = reviewNoteVO.getReviewNote().indexOf("src", begin) + 5;
                int end = reviewNoteVO.getReviewNote().indexOf("\"", begin1);
                reviewNoteVO.setPreView(reviewNoteVO.getReviewNote().substring(begin1, end));
            }
            if (reviewNoteVO.getPreView() == null) {
                reviewNoteVO.setPreView(reviewNoteVO.getExhbnImgUrl());
            }
            // thumbnail end
        }
        model.addAttribute("reviewList", reviewNoteList);
		return "detail";
	}

	
	  // all page view
	  
	  @RequestMapping("/exhbn/list") 
	  public String listTestView(
			  @RequestParam("dateType") String dateType,
			  Model model
			  ) {
	  
	  ArrayList<ExhbnVO> vo = service.selectAllDateType(dateType);
	  model.addAttribute("exhbnList", vo);
	  
	  return "list"; 
	  
	  }

	
	 
	// detail search
	@RequestMapping("/exhbn/searchResult222")
	public String ExhbitonSearch(@RequestParam("exhbnTitle") String title, Model model) {
		ArrayList<ExhbnVO> ExhbitonSearch = service.exhbnSearch(title);
		model.addAttribute("exhbnSearchList", ExhbitonSearch);

		// System.out.println(title);

		for (int i = 0; i < ExhbitonSearch.size(); i++) {
			System.out.println(ExhbitonSearch.get(i).getExhbnId());
		}

		return "searchResult";
	}
	@RequestMapping("/exhbn/tab_exhbnSearch0")
	public String tab_ExhbitonSearch0(@RequestParam("exhbnType") String type, Model model) {
		ArrayList<ExhbnVO> tab_exhbnSearch = service.TabSearch0(type);
		model.addAttribute("exhbnSearchList", tab_exhbnSearch);

		System.out.println(type);

		for (int i = 0; i < tab_exhbnSearch.size(); i++) {
			System.out.println(tab_exhbnSearch.get(i).getExhbnId());
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
		ArrayList<ExhbnVO> tab_exhbnSearch = service.TabSearch6(type);
		model.addAttribute("exhbnSearchList", tab_exhbnSearch);
		
		
		System.out.println(type);

		for (int i = 0; i < tab_exhbnSearch.size(); i++) {
			System.out.println(tab_exhbnSearch.get(i).getExhbnId());
		}

		return "searchResult";

	}
	/*
	 * @RequestMapping("/exhbn/tab_exhbnSearch_total") public String
	 * tab_ExhbitonSearch_total(
	 * 
	 * @RequestParam("exhbnTitle") String title,
	 * 
	 * @RequestParam("exhbnType") String type, Model model) { HashMap<String,Object>
	 * map = new HashMap<String,Object>(); System.out.println(title);
	 * System.out.println(type);
	 * 
	 * 
	 * model.addAttribute("ExhbitonSearch_detail", service.TabSearch_total(title,
	 * type));
	 * 
	 * map.put("Title", title); map.put("Type", type);
	 * 
	 * 
	 * 
	 * return "searchResult"; //스프링이 자동으로 JSON타입으로 반환해서 전달한다. }
	 */
	
	//디테일
	/*
	 * @RequestMapping("/exhbn/searchResult333") public String ExhbitonSearch_detail
	 * (
	 * 
	 * @RequestParam("exhbnTitle") String title,
	 * 
	 * @RequestParam("exhbnArea") String exWhere,
	 * 
	 * @RequestParam("exhbnPrice") String exPrice,
	 * 
	 * // @RequestParam("exhbnPrice") String exPrice, Model model) {
	 * 
	 * System.out.println(title); System.out.println(exWhere);
	 * 
	 * ArrayList<ExhbnVO> exhbnSearch22 = service.exhbnSearch2(title, exWhere);
	 * 
	 * model.addAttribute("exhbnSearchList", exhbnSearch22);
	 * 
	 * for (int i = 0; i <exhbnSearch22.size(); i++) {
	 * System.out.println(exhbnSearch22.get(i).getExhbnId()); }
	 * 
	 * 
	 * 
	 * return "searchResult"; }
	 */
	@RequestMapping("/exhbn/searchResult333")
	public String ExhbitonSearch_detail	(
			@RequestParam("exhbnTitle") String title, 
			@RequestParam("exhbnArea") String exWhere,
			@RequestParam("exhbnPrice") String exPrice,
			@RequestParam("exhbnDate") String exDate,
			@RequestParam("expage") String page,
			
			/*
			 * @RequestParam("exhbnWhen") String exWhen,
			 */			 
			 
			Model model
			 ) throws ParseException {
		
		//ArrayList<ExhbnVO> voList = service.exhbnSearch2(title, exWhere.trim(), exPrice, exDate, page/* , exWhen */);
		//System.out.println(voList.size());
		//System.out.println(voList.get(0).getExhbnTitle());
		
		System.out.println("Controller");
		 System.out.println(title); 
		 System.out.println(exWhere+"/");
		 System.out.println(exPrice);
		 System.out.println(exDate);
		 System.out.println(page);


			/*
			 * System.out.println(exWhen);
			 */
		 
		//model.addAttribute("exhbnSearch2", voList);
		  
		/*
		 * for (int i = 0; i < voList.size(); i++) {
		 * System.out.println(voList.get(i).getExhbnId()); }
		 */
		return "detail-searchlist2"; //스프링이 자동으로 JSON타입으로 반환해서 전달한다.
		}
}


