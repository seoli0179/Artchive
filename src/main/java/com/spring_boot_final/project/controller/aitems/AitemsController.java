package com.spring_boot_final.project.controller.aitems;

import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.service.AitemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;


@Controller
public class AitemsController {

    @Autowired
    AitemsService service;

    @RequestMapping("aitems/relatedItem")
    @ResponseBody
    public ArrayList<String> relatedItem(@RequestParam("itemId") String itemId) {

        //ArrayList<String> items = service.getRelatedItem("209436");
        ArrayList<String> items = service.getRelatedItem(itemId, 5);

        for (String str : items) {
            System.out.println(str);
        }

        return items;

    }

    @RequestMapping("aitems/personalRecommend")
    public String personalRecommend(HttpSession session, Model model) {

        String userId;
        if (session.getAttribute("sid") == null) {
            userId = "null";
        } else {
            userId = session.getAttribute("sid").toString();
        }
//        userId = "user1001";

        ArrayList<String> items = service.getPersonalRecommend(userId, 4);
        ArrayList<String> temps = new ArrayList<>();
        for (int i = 0; i < 4; i++) {
            temps.add(items.get(i));
        }

        for (String str : items) {
            System.out.println(str);
        }

        ArrayList<ExhbnVO> vo = service.getExhbnItems(temps);


        System.out.println(vo.size());

        model.addAttribute("exhbnList", vo);

        return "aitems/aitemsExhbnBox";

    }

}
