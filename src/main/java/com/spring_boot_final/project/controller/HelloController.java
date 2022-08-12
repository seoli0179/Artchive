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

	@RequestMapping("/detail")
	public String list() {
		return "detail";
	}

}
