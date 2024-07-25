package org.example.repository;

import jakarta.annotation.PostConstruct;
import org.example.entity.ProductEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Repository
public class ProductRepository extends BaseRepo<ProductEntity> {

    @PostConstruct
    private void init() {
        this.type = ProductEntity.class;
    }
    @Transactional
    public ProductEntity save(ProductEntity productEntity) {
        manager.merge(productEntity);
        return productEntity;
    }

    public List<ProductEntity> findAll() {
        return manager.createQuery("select p from ProductEntity p", ProductEntity.class).getResultList();
    }

    public List<ProductEntity> findByRestaurantId(UUID restaurantId) {
        String query = "SELECT p FROM ProductEntity p WHERE p.restaurant.id = :restaurantId";
        return manager.createQuery(query, ProductEntity.class)
                .setParameter("restaurantId", restaurantId)
                .getResultList();
    }

}
