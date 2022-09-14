package com.spring_boot_final.project.controller.ocr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_final.project.model.TicketVO;
import com.spring_boot_final.project.service.OCRService;

@Controller 
public class OCRViewController {
	
	@Autowired
	OCRService ocrService;
	

	// OCR 광학 문자 인식 예제
	// (1) 결과를 콘솔에 출력
	@RequestMapping("/myPage/OCRForm")
	public String OCRGeneral() {
		return "/myPage/ticket";
	}
	
	@ResponseBody
	@RequestMapping("/myPage/ticket")
	public TicketVO OCRTemplate() {
		return ocrService.ocrTemplate();
	}
	
}










