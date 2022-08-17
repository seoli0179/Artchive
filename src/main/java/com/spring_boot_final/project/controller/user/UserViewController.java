package com.spring_boot_final.project.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserViewController {

    @RequestMapping("login")
    public String login2(){
        return "user/login";
    }

}
