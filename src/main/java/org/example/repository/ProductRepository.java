package org.example.repository;

import org.example.entity.ProductEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class ProductRepository extends BaseRepo<ProductEntity> {


    @Transactional
    public ProductEntity save(ProductEntity productEntity) {
        manager.merge(productEntity);
        return productEntity;
    }

    public List<ProductEntity> findAll() {
        return manager.createQuery("select p from ProductEntity p", ProductEntity.class).getResultList();
    }

}
