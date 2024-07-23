package org.example.repository;

import jakarta.persistence.TypedQuery;
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

    @Transactional
    public List<RestaurantEntity> findByFilters(String location, String name, String address) {
        StringBuilder queryStr = new StringBuilder("SELECT r FROM RestaurantEntity r WHERE 1=1");
        if (location != null && !location.isEmpty()) {
            queryStr.append(" AND LOWER(r.location) LIKE :location");
        }
        if (name != null && !name.isEmpty()) {
            queryStr.append(" AND LOWER(r.name) LIKE :name");
        }
        if (address != null && !address.isEmpty()) {
            queryStr.append(" AND LOWER(r.address) LIKE :address");
        }

        TypedQuery<RestaurantEntity> query = manager.createQuery(queryStr.toString(), RestaurantEntity.class);

        if (location != null && !location.isEmpty()) {
            query.setParameter("location", "%" + location.toLowerCase() + "%");
        }
        if (name != null && !name.isEmpty()) {
            query.setParameter("name", "%" + name.toLowerCase() + "%");
        }
        if (address != null && !address.isEmpty()) {
            query.setParameter("address", "%" + address.toLowerCase() + "%");
        }

        return query.getResultList();
    }










}
