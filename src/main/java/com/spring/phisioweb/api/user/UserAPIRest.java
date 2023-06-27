package com.spring.phisioweb.api.user;

import com.spring.phisioweb.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/v1")
public class UserAPIRest {

    @Autowired
    UserService userService;

    @PostMapping("/users/create/user")
    public ResponseEntity<User> createUser(@RequestBody User user) {
        ResponseEntity<User> response;
        try {
            userService.createUser(user);
            response = ResponseEntity.status(HttpStatus.CREATED).body(user);
        }catch(Exception e) {
            response = ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(user);
        }
        return response;
    }
    
}
