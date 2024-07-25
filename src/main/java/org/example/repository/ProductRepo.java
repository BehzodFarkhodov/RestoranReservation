package org.example.repository;

import org.example.entity.BaseEntity;
import org.example.entity.ProductEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.annotation.ApplicationScope;

import java.util.List;

@ApplicationScope
public class ProductRepo extends BaseRepo<ProductEntity> {
    public ProductRepo() {
      this.type = ProductEntity.class;
    }

    @Transactional
    public List<ProductEntity> filterByName(String name) {
        List<ProductEntity> resultList = manager.createQuery("from ProductEntity p where p.foodName ilike :name", ProductEntity.class)
                .setParameter("name", "%" + name + "%")
                .getResultList();
        return resultList;
    }

}
