package com.spring_boot_final.project.controller.email;

import com.spring_boot_final.project.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmailController {

    @Autowired
    EmailService emailService;

    @RequestMapping("/find/id")
    public String id() {
        return emailService.certifyEmailSend("yeoubyeol98@gmail.com");
    }

    @RequestMapping("/find/id/certify")
    public String idCertify(
            @RequestParam("email") String email,
            @RequestParam("certifyNum") String certifyNum
    ) {
        return emailService.idFindCertify(email, certifyNum);
    }

    @RequestMapping("/find/pw")
    public String pw() {
        return emailService.certifyEmailSend("yeoubyeol98@gmail.com");
    }

    @RequestMapping("/find/pw/certify")
    public String pwCertify(
            @RequestParam("email") String email,
            @RequestParam("certifyNum") String certifyNum
    ) {
        return emailService.pwFindCertify(email, certifyNum);
    }

}
