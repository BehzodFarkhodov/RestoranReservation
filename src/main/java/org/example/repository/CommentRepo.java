package org.example.repository;

import org.example.entity.CommentEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class CommentRepo extends BaseRepo<CommentEntity> {


    @Transactional
    public CommentEntity saveComment(CommentEntity comment) {
        return super.save(comment);
    }


    @Transactional
    public List<CommentEntity> getAllComments() {
        return manager.createQuery
                ("from  CommentEntity", CommentEntity.class)
                .getResultList();
    }

}
