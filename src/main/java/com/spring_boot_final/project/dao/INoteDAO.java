package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.NoteVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Component
public interface INoteDAO {
    void createNote(NoteVO vo);

    void updateNote(NoteVO vo);

    void updateNoteLikeUp(int noteId);

    void updateNoteLikeDown(int noteId);

    int selectNoteCount(HashMap<String, Object> map);

    ArrayList<NoteVO> selectNoteListFilter(HashMap<String, Object> map);

    NoteVO selectNote(int noteId);

    int selectNoteLike(NoteVO vo);

    void insertNoteLike(NoteVO vo);

    void deleteNoteLike(NoteVO vo);

    void deleteNote(NoteVO vo);

}
