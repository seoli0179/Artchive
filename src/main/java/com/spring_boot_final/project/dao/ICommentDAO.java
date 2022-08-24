package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.CommentVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public interface ICommentDAO {
    void createComment(CommentVO vo);

    void updateComment(CommentVO vo);

    ArrayList<CommentVO> selectCommentList(int noteId);
    CommentVO selectComment(int commentId);

    void deleteComment(CommentVO vo);

}
