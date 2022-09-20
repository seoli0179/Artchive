package com.spring_boot_final.project.controller.admin;

import com.spring_boot_final.project.model.UserVO;
import com.spring_boot_final.project.service.admin.AdminUserService;
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
public class adminUserController {

    @Autowired
    AdminUserService adminUserService;

    @RequestMapping("/admin/user/select/all")
    public String UserSelectAll(HttpSession session, Model model){

        if (session.getAttribute("sid") == null) {
            return null;
        }

        if (!adminUserService.SelectUserRoll(session.getAttribute("sid").toString())) {
            return null;
        }

        model.addAttribute("users", adminUserService.UserSelectAll());

        return "/admin/result/user/userTable";
    }

    @RequestMapping("/admin/user/update/state")
    public boolean UserUpdateState(
            @RequestParam("userId") String userId,
            @RequestParam String userState,
            HttpSession session
    ) {

        if (session.getAttribute("sid") == null) {
            return false;
        }

        if (!adminUserService.SelectUserRoll(session.getAttribute("sid").toString())) {
            return false;
        }

        UserVO vo = new UserVO();
        vo.setUserId(userId);
        vo.setUserState(userState);

        return adminUserService.UpdateUserState(vo);

    }

}
