package com.spring_boot_final.project.controller.admin;

import com.spring_boot_final.project.model.UserVO;
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
    AdminExhbnService adminExhbnService;

    @RequestMapping("/admin/exhbn/select/all")
    public String UserSelectAll(HttpSession session, Model model){

        if (session.getAttribute("sid") == null) {
            return null;
        }

        model.addAttribute("exhbns", adminExhbnService.ExhbnSelectAll());

        return "/admin/result/exhbn/exhbnTable";
    }

}
