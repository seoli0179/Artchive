package com.spring_boot_final.project.controller.user;

import com.spring_boot_final.project.model.UserVO;
import com.spring_boot_final.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@RestController
public class UserDataController {

    @Autowired
    UserService service;

    @Autowired
    PasswordEncoder encoder;

    @RequestMapping("/user/insertUser")
    public String insertUser(
            @RequestParam("id") String id,
            @RequestParam("pw") String pw,
            @RequestParam("email") String email,
            @RequestParam("nickname") String nickname,
            @RequestParam("gender") String gender,
            @RequestParam("birth") String birth
    ) throws ParseException {
        UserVO vo = new UserVO(id, encoder.encode(pw), email, nickname, gender, new SimpleDateFormat("yyyy-mm-dd").parse(birth));
        service.insertUser(vo);
        System.out.println(vo.toString());
        return "FAIL";
    }

    @RequestMapping("/user/selectUser")
    public String insertUser(
            @RequestParam("id") String id,
            @RequestParam("pw") String pw,
            HttpSession session
    ) {
        UserVO vo = new UserVO();

        vo.setUserId(id);
        vo.setUserPw(pw);
        System.out.println(vo.toString());

        vo = service.selectUser(vo);

        if (vo == null || !encoder.matches(pw, vo.getUserPw()))
            return "FAIL";

        session.setAttribute("sid", vo.getUserId());
        session.setAttribute("username", vo.getUserNickname());


        return "SUCCESS";
    }

    @RequestMapping("user/idCheck")
    public boolean idCheck(@RequestParam("id") String id) {
        System.out.println(id);
        if (id.equals("abc")) {
            return false;
        } else {
            return true;
        }

    }

    @RequestMapping("user/emailCheck")
    public boolean emailCheck(@RequestParam("email") String email) {
        System.out.println(email);
        if (email.equals("abc@email.com")) {
            return false;
        } else {
            return true;
        }

    }

    @RequestMapping("user/nicknameCheck")
    public boolean nicknameCheck(@RequestParam("nickname") String nickname) {
        System.out.println(nickname);
        if (nickname.equals("닉")) {
            return false;
        } else {
            return true;
        }

    }

    @RequestMapping("user/emailNumCheck")
    public boolean emailNumCheck(@RequestParam("email_check") String email_check) {
        System.out.println(email_check);
        if (email_check.equals("123456")) {
            return true;
        } else {
            return false;
        }

    }

    @RequestMapping("user/emailNicknameCheck")
    public boolean emailNicknameCheck(
            @RequestParam("nickname") String nickname,
            @RequestParam("email") String email,
            @RequestParam("email_check") String email_check
    ) {
        System.out.println(nickname);
        System.out.println(email);
        System.out.println(email_check);

        return true;

    }



}
