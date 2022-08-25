package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.CommentVO;
import com.spring_boot_final.project.model.NoteVO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public interface ICommentDAO {
    void createComment(CommentVO vo);

    void updateComment(CommentVO vo);

    ArrayList<CommentVO> selectCommentList(int noteId);
    CommentVO selectComment(int commentId);

    void deleteComment(CommentVO vo);

    void updateCommentLikeUp(int commentId);
    void updateCommentLikeDown(int commentId);
    int selectCommentLike(CommentVO vo);
    void insertCommentLike(CommentVO vo);
    void deleteCommentLike(CommentVO vo);

}
