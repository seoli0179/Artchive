package com.spring_boot_final.project.service;

import com.spring_boot_final.project.dao.INoteDAO;
import com.spring_boot_final.project.model.NoteVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class NoteService {

    @Autowired
    @Qualifier("INoteDAO")
    INoteDAO dao;

    public void createNote(NoteVO vo) {
        dao.createNote(vo);
    }

    public void updateNote(NoteVO vo) {
        dao.updateNote(vo);
    }

    public ArrayList<NoteVO> selectNoteList() {
        return dao.selectNoteList();
    }

    public NoteVO selectNote(int noteId) {
        return dao.selectNote(noteId);
    }

    public void deleteNote(NoteVO vo) {
        dao.deleteNote(vo);
    }

}
