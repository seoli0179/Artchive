package com.spring_boot_final.project.service;

import com.spring_boot_final.project.dao.ICommentDAO;
import com.spring_boot_final.project.dao.INoteDAO;
import com.spring_boot_final.project.model.CommentVO;
import com.spring_boot_final.project.model.NoteVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class CommentService {

    @Autowired
    @Qualifier("ICommentDAO")
    ICommentDAO dao;

    public void createComment(CommentVO vo) {
        dao.createComment(vo);
    }

    public void updateComment(CommentVO vo) {
        dao.updateComment(vo);
    }

    public ArrayList<CommentVO> selectComment(int noteId) {
        return dao.selectComment(noteId);
    }

}
