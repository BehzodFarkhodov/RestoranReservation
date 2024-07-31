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
        Optional<ProductEntity> byId = Optional.of(productRepository.findById(id));
        return byId.get();
    }
    @Transactional

    public void delete(UUID id) {

        productRepository.delete(id);
    }

//    @Transactional
//    public void updateProduct(ProductEntity productEntity) {
//        if (productRepository.hasOrders(productEntity.getId())) {
//            throw new IllegalStateException("Cannot update product with existing orders.");
//        }
//        productRepository.save(productEntity);
//    }



    @Transactional
    public void updateProduct(ProductEntity productEntity) {
        ProductEntity existingProduct = productRepository.findById(productEntity.getId());
        if (productRepository.hasOrders(productEntity.getId())) {
            throw new IllegalStateException("Buyurtmalar mavjud bo‘lgan mahsulotni yangilash mumkin emas.");
        }
        existingProduct.setFoodName(productEntity.getFoodName());
        existingProduct.setFoodDescription(productEntity.getFoodDescription());
        existingProduct.setPrice(productEntity.getPrice());
        existingProduct.setQuantity(productEntity.getQuantity());
        existingProduct.setImagePath(productEntity.getImagePath());
        existingProduct.setOwner(productEntity.getOwner());
        productRepository.save(existingProduct);
    }
}
