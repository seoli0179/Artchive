package com.spring_boot_final.project.controller.admin;

import com.spring_boot_final.project.model.UserVO;
import com.spring_boot_final.project.service.UserService;
import com.spring_boot_final.project.service.admin.AdminExhbnService;
import com.spring_boot_final.project.service.admin.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class adminExhbnController {

    @Autowired
    UserService userService;

    @Autowired
    AdminExhbnService adminExhbnService;

    @RequestMapping("/admin/exhbn/select/all")
    public String UserSelectAll(HttpSession session, Model model) {

        if (!adminCheck(session)) {
            return null;
        }

        model.addAttribute("exhbns", adminExhbnService.ExhbnSelectAll());

        return "/admin/result/exhbn/exhbnTable";
    }

    @RequestMapping("/admin/exhbn/select")
    public String UserSelectFilter(
            @RequestParam("page") int page,
            HttpSession session,
            Model model) {

        if (!adminCheck(session)) {
            return null;
        }

        model.addAttribute("exhbns", adminExhbnService.ExhbnSelectFilter(page, 10));

        return "/admin/result/exhbn/exhbnTable";
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
