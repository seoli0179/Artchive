package com.spring_boot_final.project.controller.admin;

import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.UserVO;
import com.spring_boot_final.project.service.UserService;
import com.spring_boot_final.project.service.admin.AdminExhbnService;
import com.spring_boot_final.project.service.admin.AdminReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@Controller
public class adminReviewController {

    @Autowired
    UserService userService;

    @Autowired
    AdminReviewService adminReviewService;

    @RequestMapping("/admin/review/select")
    public String ReviewSelectFilter(
            @RequestParam("page") int page,
            @RequestParam("searchType") String searchType,
            @RequestParam("searchValue") String searchValue,
            HttpSession session,
            Model model) {

        System.out.println(searchType + "/" + searchValue + "/");

        if (!adminCheck(session)) {
            return null;
        }

        model.addAttribute("reviews", adminReviewService.ReviewSelectFilter(page, 10, searchType, searchValue));
        System.out.println((adminReviewService.ReviewMaxCount(searchType, searchValue) - 1) / 10);
        model.addAttribute("maxCount", adminReviewService.ReviewMaxCount(searchType, searchValue) / 10 + 2);
        model.addAttribute("currentPage", page);
        model.addAttribute("searchType", searchType);
        model.addAttribute("searchValue", searchValue);

        return "/admin/result/review/reviewTable";
    }


    public boolean adminCheck(HttpSession session) {

        if (session.getAttribute("sid") == null)
            return false;
        UserVO vo = userService.selectUserView(session.getAttribute("sid").toString());

        if (vo.getUserRoll().toString().equals("ADMIN"))
            return true;

        return false;

    }

}
