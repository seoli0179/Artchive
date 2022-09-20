package com.spring_boot_final.project.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminViewController {
    @RequestMapping ("/admin")
    public String admin() {
        return "admin/adminLogin";
    }

    @RequestMapping ("/adminMain")
    public String adminMain() {
        return "admin/adminMain";
    }
}
