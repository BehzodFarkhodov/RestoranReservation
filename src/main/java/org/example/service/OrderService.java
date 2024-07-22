package org.example.service;

import org.example.entity.OrderEntity;
import org.example.repository.OrderRepo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class OrderService extends BaseService<OrderEntity,OrderRepo> {
    public OrderService(OrderRepo repository) {
        super(repository);
    }
    @Transactional
    public OrderEntity createOrder(OrderEntity order) {
    return repository.save(order);
    }
}
