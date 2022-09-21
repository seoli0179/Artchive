package com.spring_boot_final.project.dao.admin;

import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.NoteVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;

@Component
public interface IAdminNoteDAO {

    ArrayList<NoteVO> NoteSelectAll();
    ArrayList<ExhbnVO> NoteSelectFilter(HashMap<String, Object> map);

    int NoteMaxCount(HashMap<String, Object> map);
    void UpdateNotice(NoteVO vo);
    void InsertNotice(NoteVO vo);
    void InsertEvent(NoteVO vo);
    NoteVO selectNote(int noteId);
}
