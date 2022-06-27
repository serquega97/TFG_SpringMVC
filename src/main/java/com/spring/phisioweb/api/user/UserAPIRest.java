package com.spring.phisioweb.api.user;
import com.spring.phisioweb.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/v1")
public class UserAPIRest {

    @Autowired
    UserService userService;

    @PostMapping("users/create/user")
    public void createUser(User user) {
        userService.createUser(user);
    }
    
}
