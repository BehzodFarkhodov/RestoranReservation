package org.example.repository;

import org.example.entity.ProductEntity;
import org.example.entity.RestaurantEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.annotation.ApplicationScope;

import java.util.List;
import java.util.UUID;
@ApplicationScope
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



    @Transactional
    public List<RestaurantEntity> filterByName(String name) {
        List<RestaurantEntity> resultList = manager.createQuery("from RestaurantEntity r where r.name ilike :name", RestaurantEntity.class)
                .setParameter("name", "%" + name + "%")
                .getResultList();
        return resultList;
    }






}
