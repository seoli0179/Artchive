package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.ExhbnVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public interface IExhbnDAO {

    //Create
    void insertExhbn(ExhbnVO vo);

    //Read
    ExhbnVO selectExhbn(int exhbnId);
    ArrayList<ExhbnVO> selectAllExhbn();
    int existExhbn(int exhbnId);

    //Update
    void updateExhbn(ExhbnVO vo);

    //Delete
    void deleteExhbn(int exhbnId);
}
