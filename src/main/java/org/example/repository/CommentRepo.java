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
                ("select c from CommentEntity c", CommentEntity.class).getResultList();
    }


    @Transactional
    public void deleteComment(UUID comment) {

        CommentEntity commentEntity = manager.find(CommentEntity.class, comment);
        manager.remove(commentEntity);
    }
    @Transactional
    public List<CommentEntity> findCommentsByRestaurantId(UUID restaurantId) {
        return manager.createQuery("from CommentEntity where restaurant.id = :restaurantId", CommentEntity.class)
                .setParameter("restaurantId", restaurantId)
                .getResultList();
    }

}
