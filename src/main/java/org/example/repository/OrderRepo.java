package org.example.repository;

import org.example.entity.BaseEntity;
import org.example.entity.OrderEntity;
import org.springframework.stereotype.Repository;

@Repository
public class OrderRepo extends BaseRepo<OrderEntity> {
    public OrderRepo() {
        this.type = OrderEntity.class;
    }
}
