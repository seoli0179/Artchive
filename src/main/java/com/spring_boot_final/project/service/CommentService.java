package com.spring_boot_final.project.service;

import com.spring_boot_final.project.dao.ICommentDAO;
import com.spring_boot_final.project.model.CommentVO;
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

    public ArrayList<CommentVO> selectCommentList(int noteId) {
        return dao.selectCommentList(noteId);
    }

    public CommentVO selectComment(int commentId) {
        return dao.selectComment(commentId);
    }

    public void deleteComment(CommentVO vo) {
        dao.deleteComment(vo);
    }

}
