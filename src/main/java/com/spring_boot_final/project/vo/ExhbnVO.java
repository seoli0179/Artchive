package com.spring_boot_final.project.vo;

import com.spring_boot_final.project.state.ViewState;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class ExhbnVO {
    private int exhbnId;
    private String exhbnTitle;
    private String exhbnImgUrl;
    private String exhbnUrl;
    private String exhbnPlaceUrl;
    private String exhbnArea;
    private String exhbnPlace;
    private String exhbnPlaceAddr;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date exhbnStartDate;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date exhbnEndDate;
    private String exhbnPrice;
    private int exhbnPrice1;
    private String exhbnContent;
    private String exhbnPhone;
    private String exhbnWriter;
    private String exhbnHostOrganizer;
    private String exhbnNum;
    private double gpsX;
    private double gpsY;
    private int exhbnView;
    private int exhbnLike;
    private ViewState viewState; /* POST:정상 / WAIT:대기 / DELETE:삭제 */
    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date updatedAt;
}
