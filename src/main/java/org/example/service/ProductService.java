package org.example.service;

import org.example.entity.ProductEntity;
import org.example.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


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


}
