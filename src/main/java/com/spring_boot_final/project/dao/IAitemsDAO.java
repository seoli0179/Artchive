package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.ExhbnVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public interface IAitemsDAO {
    ArrayList<String> selectItems(int num);
    ArrayList<ExhbnVO> selectExhbn(ArrayList<String> items);
}
