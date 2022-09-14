package com.spring_boot_final.project.controller.ocr;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.spring_boot_final.project.service.OCRService;


@RestController
public class OCRStateController {
	
	@Autowired
	OCRService ocrService;
	
	@RequestMapping("/myPage/OCRGeneral")
	public String ocr(@RequestParam("uploadFile") MultipartFile file) throws IOException {
		String uploadPath = "/Library/upload/";
		
		String originalFileName = file.getOriginalFilename();
		String filePathName = uploadPath + originalFileName;
		
		File newFile = new File(filePathName);
		
		file.transferTo(newFile);
		
		String result = ocrService.ocrGeneral(filePathName);
		
		return result;
	}
	
	
	
	
}
