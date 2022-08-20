package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.NoteVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public interface INoteDAO {
    void createNote(NoteVO vo);

    void updateNote(NoteVO vo);

    ArrayList<NoteVO> selectNoteList();

    NoteVO selectNote(int noteId);

}
