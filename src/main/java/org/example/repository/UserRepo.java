package org.example.repository;

import jakarta.persistence.EntityManager;
import org.example.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.Objects;
import java.util.Optional;

public class UserRepo extends BaseRepo<UserEntity> {
    @Transactional
    public String save(UserEntity user) {
        manager.persist(user);
        return "Saved";
    }


    @Transactional
    public Optional<UserEntity> login(String username, String password) {
        UserEntity user = manager.createQuery("select u from UserEntity u " +
                        "where u.username = :username and" +
                        " u.password = :password", UserEntity.class).
                setParameter("username", username)
                .setParameter("password", password)
                .getSingleResult();

        if (Objects.isNull(user)){
            return Optional.empty();
        }
        return Optional.of(user);
    }

}
