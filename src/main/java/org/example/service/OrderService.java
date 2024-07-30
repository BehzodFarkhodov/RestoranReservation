package org.example.service;

import org.example.entity.OrderEntity;
import org.example.repository.OrderRepo;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class OrderService extends BaseService<OrderEntity,OrderRepo> {
    public OrderService(OrderRepo repository) {
        super(repository);
    }


    public OrderEntity save(OrderEntity order) {
        return repository.save(order);
    }


    public List<OrderEntity> findAll() {
        return repository.findAll();
    }

}
