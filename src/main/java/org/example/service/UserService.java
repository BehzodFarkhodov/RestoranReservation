package org.example.service;

import org.example.entity.UserEntity;
import org.example.repository.UserRepo;

public class UserService extends BaseService<UserEntity, UserRepo> {
    public UserService(UserRepo repository) {
        super(repository);
    }
    public void save(UserEntity user){
        repository.save(user);
    }
}
