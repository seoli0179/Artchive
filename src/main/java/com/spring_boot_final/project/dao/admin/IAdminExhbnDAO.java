package com.spring_boot_final.project.dao.admin;

import com.spring_boot_final.project.model.ExhbnVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;

@Component
public interface IAdminExhbnDAO {

    ArrayList<ExhbnVO> ExhbnSelectAll();

    ArrayList<ExhbnVO> ExhbnSelectFilter(HashMap<String, Object> map);
}
