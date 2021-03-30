package com.james.stgeorges.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class UserServiceImpl {
    @Autowired
    UserRepository userRepository;

    public User save(User model){
        model= userRepository.save(model);
        return model;
    }

    public User get(UUID id){
        User user = userRepository.getOne(id);
        return user;
    }

    public User getByEmail(String email) {
        return userRepository.findByEmail(email);
    }
}
