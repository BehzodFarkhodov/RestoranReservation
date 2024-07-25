package org.example.repository;


import org.example.entity.OrderEntity;
import org.example.entity.UserEntity;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Repository
public class UserRepo extends BaseRepo<UserEntity> {
//    @Transactional
//    public String save(UserEntity user) {
//        manager.merge(user);
//        return "Saved";
//    }

    @Transactional
    public UserEntity save(UserEntity user) {
        manager.merge(user);
        return user;
    }


    @Transactional
    public Optional<UserEntity> signIn(String email, String password) {
        List<UserEntity> users = manager.createQuery("SELECT u FROM UserEntity u WHERE u.email = :email AND u.password = :password", UserEntity.class)
                .setParameter("email", email)
                .setParameter("password", password)
                .getResultList();

        return users.isEmpty() ? Optional.empty() : Optional.of(users.get(0));
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
