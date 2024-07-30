package org.example.service;

import org.example.entity.ProductEntity;
import org.example.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.UUID;


@Service
public class ProductService extends BaseService<ProductEntity, ProductRepository> {






    public ProductService(ProductRepository repository) {
        super(repository);
    }


    @Autowired
    private ProductRepository productRepository;


    public ProductEntity save(ProductEntity productEntity) {
        return productRepository.save(productEntity);
    }


    public List<ProductEntity> findAll() {
        return productRepository.findAll();
    }

    public List<ProductEntity> getProductsByRestaurant(UUID restaurantId) {
        return productRepository.findByRestaurantId(restaurantId);
    }
    @Transactional
    public void createProduct(ProductEntity product) {
        repository.save(product);
    }


    public ProductEntity getProductById(UUID id) {
        Optional<ProductEntity> byId = Optional.ofNullable(productRepository.findById(id));
        return byId.orElse(null);

    }

    @Transactional
    public void delete(UUID id) {
        productRepository.delete(id);
    }





}
