package com.spring_boot_final.project.service.admin;

import com.spring_boot_final.project.dao.admin.IAdminExhbnDAO;
import com.spring_boot_final.project.dao.admin.IAdminUserDAO;
import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class AdminExhbnService {

    @Autowired
    @Qualifier("IAdminExhbnDAO")
    IAdminExhbnDAO dao;

    public ArrayList<ExhbnVO> ExhbnSelectAll(){
        return dao.ExhbnSelectAll();
    }


}
