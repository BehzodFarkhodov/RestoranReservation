package org.example.repository;


import org.example.entity.UserEntity;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Objects;
import java.util.Optional;

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








}
