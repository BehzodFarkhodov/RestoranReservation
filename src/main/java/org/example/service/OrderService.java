package org.example.service;

import org.example.entity.OrderEntity;
import org.example.entity.ProductEntity;
import org.example.entity.ReservationEntity;
import org.example.entity.UserEntity;
import org.example.repository.OrderRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;


@Service
public class OrderService extends BaseService<OrderEntity,OrderRepo> {

    @Autowired
    private UserService userService;
    public OrderService(OrderRepo repository) {
        super(repository);
    }

    @Transactional
    public OrderEntity save(OrderEntity order) {
        UserEntity user = order.getUser();
        ProductEntity product = order.getProduct();

        double productPrice = product.getPrice();
        int quantity = order.getQuantity();
        double totalPrice = productPrice * quantity;

        if (user.getBalance() < totalPrice) {
            throw new IllegalStateException("Balance less than total price");
        }
        user.setBalance(user.getBalance() - totalPrice);
        userService.save(user);
        return repository.save(order);
    }


    public List<OrderEntity> findAll() {
        return repository.findAll();
    }
    public List<OrderEntity> findOrdersByUserAndRestaurant(UUID restaurantId) {
        return repository.findOrdersByUserAndRestaurant(restaurantId);
    }
    public OrderEntity findById(UUID id) {
        return repository.findById(id);
    }
    public List<OrderEntity> findAcceptedOrdersByUserId(UUID userId) {
        return repository.findAcceptedOrdersByUserId(userId);
    }

    @Transactional
    public void deleteOrder(UUID id) {
        OrderEntity order = findById(id);
        if (order != null && !"ACCEPTED".equals(order.getStatus())) {
            repository.deleteById(id);
        } else if ("ACCEPTED".equals(order.getStatus())) {
            throw new IllegalStateException("Cannot cancel an accepted order");
        }
    }



}
