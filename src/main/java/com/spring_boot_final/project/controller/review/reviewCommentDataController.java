package com.spring_boot_final.project.controller.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.spring_boot_final.project.service.ReviewCommentService;
import com.spring_boot_final.project.service.ReviewNoteService;

@RestController
public class reviewCommentDataController {
	
	@Autowired
	ReviewCommentService reviewcommentService;
	
	@Autowired
	ReviewNoteService reviewnoteService;
}
