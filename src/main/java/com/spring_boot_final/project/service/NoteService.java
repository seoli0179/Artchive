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

        ArrayList<NoteVO> vo = dao.selectNoteList();

        for (int i = 0; i < vo.size(); i++) {
            if (dao.selectNoteLike(vo.get(i)) > 0) {
                vo.get(i).setNoteLikeCheck(true);
            }else {
                vo.get(i).setNoteLikeCheck(false);
            }
        }

        return vo;
    }

    public NoteVO selectNote(int noteId) {
        return dao.selectNote(noteId);
    }

    public void deleteNote(NoteVO vo) {
        dao.deleteNote(vo);
    }

    public boolean noteLike(NoteVO vo) {
        System.out.println(dao.selectNoteLike(vo));
        if (dao.selectNoteLike(vo) > 0) {
            dao.updateNoteLikeDown(vo.getNoteId());
            dao.deleteNoteLike(vo);
            return false;
        } else {
            dao.updateNoteLikeUp(vo.getNoteId());
            dao.insertNoteLike(vo);
            return true;
        }
    }

    public boolean noteLikeCheck(NoteVO vo) {
        if (dao.selectNoteLike(vo) > 0) {
            return true;
        } else {
            return false;
        }
    }

}
