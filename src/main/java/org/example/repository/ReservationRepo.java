package org.example.repository;

import jakarta.persistence.TypedQuery;
import org.example.entity.BaseEntity;
import org.example.entity.OrderEntity;
import org.example.entity.ReservationEntity;
import org.example.entity.RestaurantEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.UUID;

@Repository
public class ReservationRepo extends BaseRepo<ReservationEntity> {
    public ReservationRepo() {
        this.type = ReservationEntity.class;
    }

    public List<ReservationEntity> findByUserId(UUID userId) {
        String jpql = "SELECT r FROM ReservationEntity r WHERE r.user.id = :userId";
        TypedQuery<ReservationEntity> query = manager.createQuery(jpql, ReservationEntity.class);
        query.setParameter("userId", userId);
        return query.getResultList();
    }
     @Transactional
    public List<ReservationEntity> findByRestaurantId(UUID restaurantId) {
        String jpql = "SELECT r FROM ReservationEntity r WHERE r.restaurant.id = :restaurantId";
        TypedQuery<ReservationEntity> query = manager.createQuery(jpql, ReservationEntity.class);
        query.setParameter("restaurantId", restaurantId);
        return query.getResultList();
    }


}
