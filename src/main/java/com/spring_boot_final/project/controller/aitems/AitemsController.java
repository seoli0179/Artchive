package com.spring_boot_final.project.controller.aitems;

import com.spring_boot_final.project.service.AitemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;


@RestController
public class AitemsController {

    @Autowired
    AitemsService service;

    @RequestMapping("aitems/relatedItem")
    public ArrayList<String> relatedItem(@RequestParam("itemId") String itemId) {

        //ArrayList<String> items = service.getRelatedItem("209436");
        ArrayList<String> items = service.getRelatedItem(itemId);

        for (String str : items) {
            System.out.println(str);
        }

        return items;

    }

    @RequestMapping("aitems/personalRecommend")
    public ArrayList<String> personalRecommend(@RequestParam("userId") String userId) {

        //ArrayList<String> items = service.getRelatedItem("209436");
        ArrayList<String> items = service.getPersonalRecommend(userId);

        for (String str : items) {
            System.out.println(str);
        }

        return items;

    }

}
