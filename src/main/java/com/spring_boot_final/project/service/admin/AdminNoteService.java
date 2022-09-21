package com.spring_boot_final.project.service.admin;

import com.spring_boot_final.project.dao.admin.IAdminExhbnDAO;
import com.spring_boot_final.project.dao.admin.IAdminNoteDAO;
import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.NoteVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;

@Service
public class AdminNoteService {

    @Autowired
    @Qualifier("IAdminNoteDAO")
    IAdminNoteDAO dao;

    public ArrayList<NoteVO> NoteSelectAll(){
        return dao.NoteSelectAll();
    }

    public ArrayList<ExhbnVO> NoteSelectFilter(int page, int limit, String searchType, String searchValue, String category) {

        HashMap<String, Object> map = new HashMap<>();
        System.out.println(page + "/" + limit);
        map.put("page", --page * limit);
        map.put("limit", limit);
        map.put("searchType", searchType);
        map.put("searchValue", searchValue);
        map.put("category", category);

        return dao.NoteSelectFilter(map);
    }
    public boolean InsertNotice(NoteVO vo){

        try {
            dao.InsertNotice(vo);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }
        return true;

    }

    public boolean InsertEvent(NoteVO vo){

        try {
            dao.InsertEvent(vo);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }
        return true;

    }

    public boolean UpdateNote(NoteVO vo){

        try {
            dao.UpdateNote(vo);
        }catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }
        return true;

    }

    public int NoteMaxCount(String searchType, String searchValue, String category) {

        HashMap<String,Object> map = new HashMap<>();

        map.put("searchType", searchType);
        map.put("searchValue", searchValue);
        map.put("category", category);

        return dao.NoteMaxCount(map);
    }


}
