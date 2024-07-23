package org.example.repository;

import org.example.entity.RestaurantEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
public class RestaurantRepo extends BaseRepo<RestaurantEntity> {
//    @Transactional
//    public String save(RestaurantEntity entity) {
//        manager.persist(entity);
//        return "saved";
//    }
    @Transactional
    public RestaurantEntity save(RestaurantEntity restaurant) {
        manager.merge(restaurant);
        return restaurant;
    }

    public List<RestaurantEntity> findAll() {
        return manager.createQuery("from RestaurantEntity", RestaurantEntity.class).getResultList();
    }











}
