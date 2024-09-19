package org.example.repository;
import jakarta.persistence.TypedQuery;
import org.example.entity.OrderEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;
import java.util.UUID;


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
    @Transactional
    public List<OrderEntity> findOrdersByUserAndRestaurant(UUID restaurantId) {
        String jpql = "SELECT o FROM OrderEntity o WHERE  o.product.restaurant.id = :restaurantId";
        return manager.createQuery(jpql, OrderEntity.class)
                .setParameter("restaurantId", restaurantId)
                .getResultList();
    }




    @Transactional
    public List<OrderEntity> findAcceptedOrdersByUserId(UUID userId) {
        String jpql = "SELECT r FROM OrderEntity r WHERE r.user.id = :userId AND r.status = 'ACCEPTED'";
        TypedQuery<OrderEntity> query = manager.createQuery(jpql, OrderEntity.class);
        query.setParameter("userId", userId);
        return query.getResultList();
    }

    @Transactional
    public void deleteById(UUID id) {
        OrderEntity order = manager.find(OrderEntity.class, id);
        if (order != null) {
            manager.remove(order);
        }
    }
    @Transactional
    public List<OrderEntity> findOrdersByProductAndRestaurant(UUID productId, UUID restaurantId) {
        String jpql = "SELECT o FROM OrderEntity o WHERE o.product.id = :productId AND o.product.restaurant.id = :restaurantId";
        return manager.createQuery(jpql, OrderEntity.class)
                .setParameter("productId", productId)
                .setParameter("restaurantId", restaurantId)
                .getResultList();
    }

    @Transactional
    public List<OrderEntity> findOrderByUserId(UUID userId) {
        String jpql = "SELECT o FROM OrderEntity o WHERE o.user.id = :userId";
        return manager.createQuery(jpql,OrderEntity.class)
                .setParameter("userId",userId)
                .getResultList();
    }















}
