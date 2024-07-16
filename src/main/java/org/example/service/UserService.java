package org.example.service;

import org.example.entity.UserEntity;
import org.example.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;

@Service
public class UserService extends BaseService<UserEntity, UserRepo> {
    @Autowired
    private VerificationService verificationService;
    private UserRepo userRepo;
    public UserService(UserRepo repository) {
        super(repository);
    }
    public void save(UserEntity user){
        repository.save(user);
    }
    public void register(String username, String email) {
        String code = UUID.randomUUID().toString();
        verificationService.sendVerificationCode(email, code);
        UserEntity user = new UserEntity();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(code);
        userRepo.save(user);
    }

    public boolean verify(String email, String code) {
        Optional<UserEntity> optionalUser = userRepo.findByEmail(email);
        if (optionalUser.isPresent()) {
            UserEntity user = optionalUser.get();
            if (user.getPassword().equals(code)) {
                user.setPassword(null); // Clear the code
                userRepo.save(user);
                return true;
            }
        }
        return false;
    }
}
