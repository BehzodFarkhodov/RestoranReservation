package org.example.repository;

import org.example.entity.CommentEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

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
    @Transactional
    public List<CommentEntity> findCommentsByRestaurantId(UUID restaurantId) {
        return manager.createQuery("from CommentEntity where restaurant.id = :restaurantId", CommentEntity.class)
                .setParameter("restaurantId", restaurantId)
                .getResultList();
    }

}
