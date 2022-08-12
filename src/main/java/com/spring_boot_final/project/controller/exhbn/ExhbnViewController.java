package com.spring_boot_final.project.controller.exhbn;

import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.service.ExhbnService;
import com.spring_boot_final.project.service.OpenAPIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class ExhbnViewController {

    @Autowired
    ExhbnService service;

    // detail page view
    @GetMapping("/detail/{id}")
    public String detailTestView(@PathVariable int id, Model model) {

        ExhbnVO vo = service.exhbnSelectDetailData(id);
        model.addAttribute("exhbn",vo);

        return "detail";
    }

    // detail page view
    @RequestMapping("/list")
    public String listTestView(Model model) {
        ArrayList<ExhbnVO> vo = service.exhbnSelectAllData();
        model.addAttribute("exhbnList",vo);
        return "list";
    }
}
