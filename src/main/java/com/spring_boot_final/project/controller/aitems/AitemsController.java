package com.spring_boot_final.project.controller.aitems;

import com.spring_boot_final.project.service.AitemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;


@Controller
public class AitemsController {

    @Autowired
    AitemsService service;

    @RequestMapping("ai/test")
    public void aiTest() {

        ArrayList<String> items = service.getRelatedItem("209436");

        for(String str : items){
            System.out.println(str);
        }


    }


}
