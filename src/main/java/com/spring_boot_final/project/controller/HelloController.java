package com.spring_boot_final.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	@RequestMapping("/")
	public String index() {
		System.out.println("index 페이지 열림");
		return "index";
	}
	
	// detail test page view
	@RequestMapping("/detailTestView")
	public String detailTestView() {
		return "detail";
	}
	// detail test page view
	@RequestMapping("/listTestView")
	public String listTestView() {
		return "list";
	}

	
	// detail 페이지 열기 요청 처리
	@RequestMapping("/detail")
	public String viewDetail() {
		return "detail";
	}
}
