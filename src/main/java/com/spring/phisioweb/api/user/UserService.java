package com.spring.phisioweb.api.user;
import com.spring.phisioweb.model.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService {
    
    @Autowired
    private UserRepository userRepo;

    public void createUser(User user) {
        userRepo.save(user);
    }

    //Method that checks if an email already exists in de database
    public List<String> getUsersEmails() {
        return userRepo.getUsersEmails();
    }
}
