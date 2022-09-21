package com.spring_boot_final.project.controller.admin;

import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.UserVO;
import com.spring_boot_final.project.service.ExhbnService;
import com.spring_boot_final.project.service.UserService;
import com.spring_boot_final.project.service.admin.AdminExhbnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
    public String ExhbnSelectFilter(
            @RequestParam("page") int page,
            @RequestParam("searchType") String searchType,
            @RequestParam("searchValue") String searchValue,
            HttpSession session,
            Model model) {

        System.out.println(searchType + "/" + searchValue + "/");

        if (!adminCheck(session)) {
            return null;
        }

        model.addAttribute("exhbns", adminExhbnService.ExhbnSelectFilter(page, 10, searchType, searchValue));
        model.addAttribute("maxCount", adminExhbnService.ExhbnMaxCount(searchType, searchValue) / 10 + 2);
        model.addAttribute("currentPage", page);
        model.addAttribute("searchType", searchType);
        model.addAttribute("searchValue", searchValue);

        return "/admin/result/exhbn/exhbnTable";
    }

    @RequestMapping("/admin/exhbn/update")
    @ResponseBody
    public boolean ExhbnUpdate(
            @RequestParam("exhbnId") int exhbnId,
            @RequestParam("exhbnTitle") String exhbnTitle,
            @RequestParam("exhbnImgUrl") String exhbnImgUrl,
            @RequestParam("exhbnUrl") String exhbnUrl,
            @RequestParam("exhbnPlaceUrl") String exhbnPlaceUrl,
            @RequestParam("exhbnArea") String exhbnArea,
            @RequestParam("exhbnPlace") String exhbnPlace,
            @RequestParam("exhbnPlaceAddr") String exhbnPlaceAddr,
            @RequestParam("exhbnStartDate") String exhbnStartDate,
            @RequestParam("exhbnEndDate") String exhbnEndDate,
            @RequestParam("exhbnPrice") String exhbnPrice,
            @RequestParam("exhbnPrice1") int exhbnPrice1,
            @RequestParam("exhbnPhone") String exhbnPhone,
            @RequestParam("gpsX") double gpsX,
            @RequestParam("gpsY") double gpsY,
            @RequestParam("exhbnDetail") String exhbnDetail,
            @RequestParam("exhbnType") String exhbnType,
            HttpSession session) throws ParseException {

        if (!adminCheck(session)) {
            return false;
        }

        ExhbnVO vo = new ExhbnVO();

        vo.setExhbnId(exhbnId);
        vo.setExhbnTitle(exhbnTitle);
        vo.setExhbnImgUrl(exhbnImgUrl);
        vo.setExhbnUrl(exhbnUrl);
        vo.setExhbnPlaceUrl(exhbnPlaceUrl);
        vo.setExhbnArea(exhbnArea);
        vo.setExhbnPlace(exhbnPlace);
        vo.setExhbnPlaceAddr(exhbnPlaceAddr);
        vo.setExhbnStartDate(new SimpleDateFormat("yyyy-MM-dd").parse(exhbnStartDate));
        vo.setExhbnEndDate(new SimpleDateFormat("yyyy-MM-dd").parse(exhbnEndDate));
        vo.setExhbnPrice(exhbnPrice);
        vo.setExhbnPrice1(exhbnPrice1);
        vo.setExhbnPhone(exhbnPhone);
        vo.setGpsX(gpsX);
        vo.setGpsY(gpsY);
        vo.setExhbnDetail(exhbnDetail);
        vo.setExhbnType(exhbnType);

        return adminExhbnService.ExhbnUpdate(vo);
    }

    @RequestMapping("/admin/exhbn/insert")
    @ResponseBody
    public boolean ExhbnInsert(
            @RequestParam("exhbnId") int exhbnId,
            @RequestParam("exhbnTitle") String exhbnTitle,
            @RequestParam("exhbnImgUrl") String exhbnImgUrl,
            @RequestParam("exhbnUrl") String exhbnUrl,
            @RequestParam("exhbnPlaceUrl") String exhbnPlaceUrl,
            @RequestParam("exhbnArea") String exhbnArea,
            @RequestParam("exhbnPlace") String exhbnPlace,
            @RequestParam("exhbnPlaceAddr") String exhbnPlaceAddr,
            @RequestParam("exhbnStartDate") String exhbnStartDate,
            @RequestParam("exhbnEndDate") String exhbnEndDate,
            @RequestParam("exhbnPrice") String exhbnPrice,
            @RequestParam("exhbnPrice1") int exhbnPrice1,
            @RequestParam("exhbnPhone") String exhbnPhone,
            @RequestParam("gpsX") double gpsX,
            @RequestParam("gpsY") double gpsY,
            @RequestParam("exhbnDetail") String exhbnDetail,
            @RequestParam("exhbnType") String exhbnType,
            HttpSession session
    ) throws ParseException {

        ExhbnVO vo = new ExhbnVO();
        vo.setExhbnId(exhbnId);
        vo.setExhbnTitle(exhbnTitle);
        vo.setExhbnImgUrl(exhbnImgUrl);
        vo.setExhbnUrl(exhbnUrl);
        vo.setExhbnPlaceUrl(exhbnPlaceUrl);
        vo.setExhbnArea(exhbnArea);
        vo.setExhbnPlace(exhbnPlace);
        vo.setExhbnPlaceAddr(exhbnPlaceAddr);
        vo.setExhbnStartDate(new SimpleDateFormat("yyyy-MM-dd").parse(exhbnStartDate));
        vo.setExhbnEndDate(new SimpleDateFormat("yyyy-MM-dd").parse(exhbnEndDate));
        vo.setExhbnPrice(exhbnPrice);
        vo.setExhbnPrice1(exhbnPrice1);
        vo.setExhbnPhone(exhbnPhone);
        vo.setGpsX(gpsX);
        vo.setGpsY(gpsY);
        vo.setExhbnDetail(exhbnDetail);
        vo.setExhbnType(exhbnType);

        return adminExhbnService.ExhbnInsert(vo);
    }

    @RequestMapping("/admin/exhbn/updateview")
    public String adminExhbnUpdate(
            @RequestParam("exhbnId") int exhbnId,
            Model model,
            HttpSession session
    ) {

        model.addAttribute("exhbn", adminExhbnService.selectExhbn(exhbnId));

        if (adminCheck(session))
            return "admin/result/exhbn/adminUpdateExhbn";
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

}
