package org.example.repository;
import org.example.entity.OrderEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
public class OrderRepo extends BaseRepo<OrderEntity> {

    public OrderRepo() {
        this.type = OrderEntity.class;
    }


    @Transactional
    public OrderEntity save(OrderEntity order) {
        manager.merge(order);
        return order;
    }



    @Transactional
    public List<OrderEntity> findAll() {
        return manager.createQuery
                ("from OrderEntity", OrderEntity.class)
                .getResultList();
    }









}
