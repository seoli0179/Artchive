package com.spring_boot_final.project.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.spring_boot_final.project.model.CommentVO;

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
    
    // 마이페이지 댓글 조회
    ArrayList<CommentVO> selectCommentView(String userId);
    
    // 마이페이지 댓글 삭제
    void deleteMpComment(int commentId);
    
}
