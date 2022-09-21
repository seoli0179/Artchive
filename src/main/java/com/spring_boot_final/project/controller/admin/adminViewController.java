package com.spring_boot_final.project.controller.admin;

import com.spring_boot_final.project.model.UserVO;
import com.spring_boot_final.project.service.UserService;
import com.spring_boot_final.project.state.RollState;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class adminViewController {

    @Autowired
    UserService userService;

    @Autowired
    PasswordEncoder encoder;

    @RequestMapping("/admin")
    public String admin(HttpSession session) {
        if (session.getAttribute("sid") != null)
            session.invalidate();
        return "admin/adminLogin";
    }

    @RequestMapping("/admin/login")
    @ResponseBody
    public boolean login2(
            @RequestParam("id") String id,
            @RequestParam("pw") String pw,
            HttpSession session
    ) {

        if (session.getAttribute("sid") != null)
            session.invalidate();

        UserVO vo = new UserVO();

        vo.setUserId(id);

        vo = userService.selectUser(vo);

        if (vo == null || !encoder.matches(pw, vo.getUserPw()) || !vo.getUserRoll().toString().equals("ADMIN"))
            return false;

        session.setAttribute("sid", vo.getUserId());
        session.setAttribute("username", vo.getUserNickname());

        return true;
    }

    @RequestMapping("/admin/index")
    public String adminMain(HttpSession session) {
        if (adminCheck(session))
            return "admin/adminMain";
        else
            return "error";
    }

    @RequestMapping("/admin/user/view")
    public String adminUser(HttpSession session) {
        if (adminCheck(session))
            return "admin/adminUser";
        else
            return "error";
    }

    @RequestMapping("/admin/exhbn/view")
    public String adminExhbn(HttpSession session) {
        if (adminCheck(session))
            return "admin/adminExhbn";
        else
            return "error";
    }

    @RequestMapping("/admin/note/view")
    public String adminNote(HttpSession session) {
        if (adminCheck(session))
            return "admin/adminNote";
        else
            return "error";
    }

    @RequestMapping("/admin/notice/view")
    public String adminNotice(HttpSession session) {
        if (adminCheck(session))
            return "admin/adminNotice";
        else
            return "error";
    }

    @RequestMapping("/admin/review/view")
    public String adminReview(HttpSession session) {
        if (adminCheck(session))
            return "admin/adminReview";
        else
            return "error";
    }

    public boolean adminCheck(HttpSession session) {

        if (session.getAttribute("sid") == null)
            return false;
        UserVO vo = userService.selectUserView(session.getAttribute("sid").toString());

        if (vo.getUserRoll().toString().equals("ADMIN"))
            return true;

        return false;

    }

    @RequestMapping("/admin/exhbn/write")
    public String exhbnWrite(HttpSession session) {
        if (adminCheck(session))
            return "admin/adminWriteExhbn";
        else
            return "error";
    }

    @RequestMapping("/admin/notice/write")
    public String noticeWrite(HttpSession session) {
        if (adminCheck(session))
            return "admin/adminWriteNotice";
        else
            return "error";
    }

    @RequestMapping("/admin/event/write")
    public String eventWrite(HttpSession session) {
        if (adminCheck(session))
            return "admin/adminWriteEvent";
        else
            return "error";
    }

}
