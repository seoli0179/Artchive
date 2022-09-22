package com.spring_boot_final.project.controller.admin;

import com.spring_boot_final.project.model.UserVO;
import com.spring_boot_final.project.service.UserService;
import com.spring_boot_final.project.service.admin.AdminUserService;
import com.spring_boot_final.project.state.RollState;
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
    public String UserSelectAll(HttpSession session, Model model) {

        if (!adminCheck(session)) {
            return "error";
        }

        model.addAttribute("users", adminUserService.UserSelectAll());

        return "/admin/result/user/userTable";
    }

    @RequestMapping("/admin/user/select")
    public String UserSelect(
            @RequestParam("page") int page,
            @RequestParam("searchType") String searchType,
            @RequestParam("searchValue") String searchValue,
            HttpSession session,
            Model model
    ) {

        if (!adminCheck(session)) {
            return "error";
        }

        model.addAttribute("users", adminUserService.UserSelect(page, 10, searchType, searchValue));
        model.addAttribute("maxCount", (adminUserService.UserMaxCount(searchType, searchValue) - 1) / 10 + 2);
        model.addAttribute("currentPage", page);
        model.addAttribute("searchType", searchType);
        model.addAttribute("searchValue", searchValue);

        return "/admin/result/user/userTable";
    }

    @RequestMapping("/admin/user/updateview")
    public String adminUserUpdate(
            @RequestParam("userId") String userId,
            Model model,
            HttpSession session
    ) {

        model.addAttribute("user", adminUserService.selectUser(userId));

        if (adminCheck(session))
            return "admin/result/user/adminUpdateUser";
        else
            return "error";
    }

    @RequestMapping("/admin/user/update")
    @ResponseBody
    public boolean UserUpdate(
            @RequestParam("userId") String userId,
            @RequestParam("userEmail") String userEmail,
            @RequestParam("userRoll") String userRoll,
            @RequestParam("userState") String userState,
            @RequestParam("userNickname") String userNickname,
            @RequestParam("userName") String userName,
            HttpSession session
    ) {

        if (!adminCheck(session)) {
            return false;
        }

        UserVO vo = new UserVO();

        vo.setUserId(userId);
        vo.setUserEmail(userEmail);
        vo.setUserRoll(RollState.valueOf(userRoll));
        vo.setUserState(userState);
        vo.setUserNickname(userNickname);
        vo.setUserName(userName);

        return adminUserService.UpdateUser(vo);

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
