package com.spring_boot_final.project.dao.admin;

import com.spring_boot_final.project.model.ExhbnVO;
import com.spring_boot_final.project.model.NoteVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public interface IAdminNoteDAO {

    ArrayList<NoteVO> NoteSelectAll();
    void UpdateNote(NoteVO vo);
}
