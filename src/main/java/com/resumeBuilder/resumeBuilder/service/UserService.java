package com.resumeBuilder.resumeBuilder.service;

import com.resumeBuilder.resumeBuilder.model.User;
import com.resumeBuilder.resumeBuilder.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository repo;

    public User register(User user) {
        return repo.save(user);
    }

    public User login(String email, String password) {
        User u = repo.findByEmail(email);
        if (u != null && u.getPassword().equals(password)) return u;
        return null;
    }
}
