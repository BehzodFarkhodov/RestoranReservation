package org.example.repository;

import org.example.entity.BaseEntity;
import org.example.entity.ProductEntity;

public class ProductRepo extends BaseRepo<ProductEntity> {
    public ProductRepo() {
      this.type = ProductEntity.class;
    }

}
