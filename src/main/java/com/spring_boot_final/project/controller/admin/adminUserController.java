package com.spring_boot_final.project.controller.admin;

import com.spring_boot_final.project.model.UserVO;
import com.spring_boot_final.project.service.UserService;
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
    UserService userService;
    @Autowired
    AdminUserService adminUserService;

    @RequestMapping("/admin/user/select/all")
    public String UserSelectAll(HttpSession session, Model model){

        if (!adminCheck(session)) {
            return "error";
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

        if (!adminCheck(session)) {
            return false;
        }

        UserVO vo = new UserVO();
        vo.setUserId(userId);
        vo.setUserState(userState);

        return adminUserService.UpdateUserState(vo);

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
