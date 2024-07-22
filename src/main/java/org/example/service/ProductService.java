package org.example.service;

import org.example.entity.ProductEntity;
import org.example.repository.BaseRepo;
import org.example.repository.ProductRepo;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

public class ProductService extends BaseService<ProductEntity, ProductRepo> {
    public ProductService(ProductRepo repository) {
        super(repository);
    }
    @Transactional
    public ProductEntity createProduct(ProductEntity product) {
        return repository.save(product);
    }
    @Transactional
    public List<ProductEntity> getProductsByRestaurantId(UUID restaurantId) {
        return repository.findAll()
                .stream()
                .filter(product -> product.getRestaurant().getId().equals(restaurantId))
                .collect(Collectors.toList());
    }





}
