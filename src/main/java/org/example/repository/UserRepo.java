package org.example.repository;


import org.example.entity.OrderEntity;
import org.example.entity.UserEntity;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

@Repository
public class UserRepo extends BaseRepo<UserEntity> {


    @Transactional
    public UserEntity save(UserEntity user) {
        manager.merge(user);
        return user;
    }


    @Transactional
    public Optional<UserEntity> signIn(String email, String password) {
        UserEntity user = (UserEntity) manager.createQuery("select u from  UserEntity  u  where u.email = :email and u.password = :password", UserEntity.class).
                setParameter("email", email)
                .setParameter("password", password)
                .getSingleResult();

        if (Objects.isNull(user)) {
            return Optional.empty();
        }
        return Optional.of(user);

    }


    @Transactional
    public Optional<UserEntity> findByEmail(String email) {
        UserEntity user = manager.createQuery("select u from UserEntity u where u.email = :email", UserEntity.class)
                .setParameter("email", email)
                .getSingleResult();

        if (Objects.isNull(user)) {
            return Optional.empty();
        }
        return Optional.of(user);
    }


    @Transactional
    public UserEntity findById(UUID id) {
        return manager.createQuery("select  u from UserEntity  u where u.id = :id", UserEntity.class)
                .setParameter("id", id)
                .getSingleResult();
    }


    @Transactional
    public double balance(UUID id, double amount) {
        UserEntity user = findById(id);
        if (user.getBalance() >= amount) {
            user.setBalance(user.getBalance() - amount);
            manager.merge(user);
            return user.getBalance();
        }
        return 0;
    }

    public List<OrderEntity> getOrders(String email) {
        Optional<UserEntity> user = findByEmail(email);
        if (user.isPresent()) {
            return manager.createQuery("SELECT o FROM OrderEntity o WHERE o.user = :user", OrderEntity.class)
                    .setParameter("user", user.get())
                    .getResultList();
        }
        return null;
    }



}
