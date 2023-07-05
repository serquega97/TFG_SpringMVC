package com.spring.phisioweb.api.user;

import com.spring.phisioweb.model.User;
import com.spring.phisioweb.util.Encryptor_Decryptor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
    
    @GetMapping("/users/get/email/{paramEmail}")
    public Boolean checkUserEmailExists(@PathVariable String paramEmail) {
        List<String> listUsersEmail= userService.getUsersEmails();
        Boolean emailFound = false;
        String listEmail;
        Integer i = 0;
        while(i < listUsersEmail.size() && !emailFound) {
            listEmail = Encryptor_Decryptor.decryptData(listUsersEmail.get(i));
            if(listEmail.equals(paramEmail)) {
                emailFound = true;
            }
            i++;
        }
        return emailFound;
    }
}
