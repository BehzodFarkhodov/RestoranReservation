package org.example.service;

import org.example.entity.OrderEntity;
import org.example.entity.UserEntity;
import org.example.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class UserService extends BaseService<UserEntity, UserRepo> {
    @Autowired
    private VerificationService verificationService;
    @Autowired

    private UserRepo userRepo;

    public UserService(UserRepo repository) {
        super(repository);
    }

    public void save(UserEntity user) {
        repository.save(user);
    }

    public void register(String username, String email) {
        String code = UUID.randomUUID().toString();
        String g = code.substring(0, 4);
        verificationService.sendVerificationCode(email, g);
        UserEntity user = new UserEntity();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(g);
        userRepo.save(user);
    }


    public boolean verify(String email, String code) {
        Optional<UserEntity> users = userRepo.findByEmail(email);
        if (users.isPresent()) {
            UserEntity user = users.get();
            if (user.getPassword().equals(code)) {
                user.setPassword(code);
                userRepo.save(user);
                return true;
            }
        }
        return false;
    }


    public UserEntity login(String email, String password) {
        Optional<UserEntity> userEntity = repository.signIn(email, password);
        return userEntity.orElseThrow(() -> new RuntimeException("user not found "));
    }

    public List<OrderEntity> updateProfile(String username, String password, String email) {
        Optional<UserEntity> userEntity = repository.findByEmail(email);
        if (userEntity.isPresent()) {
            UserEntity user = userEntity.get();
            user.setUsername(username);
            user.setPassword(password);
            user.setEmail(email);
            userRepo.save(user);

            return userRepo.getOrders(email);
        }
        return null;
    }
}
