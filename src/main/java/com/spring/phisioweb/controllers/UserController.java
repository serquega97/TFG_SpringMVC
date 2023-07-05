package com.spring.phisioweb.controllers;

import java.text.SimpleDateFormat;
import java.util.Map;

import com.spring.phisioweb.api.user.UserAPIRest;
import com.spring.phisioweb.model.User;
import com.spring.phisioweb.util.Encryptor_Decryptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/users")
@ResponseBody
public class UserController {
    
    @Autowired
    UserAPIRest userAPI;

    @GetMapping("/signup/form.html")
    public static ModelAndView createNewuserForm() {
        return new ModelAndView("registrationForm");
    }

    @PostMapping("/signup/data.html")
    @ResponseBody
    public ModelAndView createNewuserRepository(@RequestParam Map<String, String> requestParams) {
        ModelAndView model = new ModelAndView("login");
        User user = new User();

        String firstName = requestParams.get("firstNameR");
        if(firstName != null && !firstName.isBlank()) {
            user.setName(firstName);
        }

        String lastName1 = requestParams.get("lastName1");
        if(lastName1 != null && !lastName1.isBlank()) {
            user.setSurname1(lastName1);
        }

        String lastName2 = requestParams.get("lastName2");
        if(lastName2 != null && !lastName2.isBlank()) {
            user.setSurname2(lastName2);
        }

        String phone = requestParams.get("phone");
        if(phone != null && !phone.isBlank()) {
            user.setPhoneNumber(Integer.parseInt(phone));
        }

        String username = requestParams.get("username");
        if(username != null && !username.isBlank()) {
            user.setUsername(Encryptor_Decryptor.encryptData(username));
        }

        String password = requestParams.get("password");
        if(password != null && !password.isBlank()) {
            user.setPassword(Encryptor_Decryptor.encryptData(password));
        }

        String email = requestParams.get("email");
        if(email != null && !email.isBlank()) {
            user.setEmail(Encryptor_Decryptor.encryptData(email));
        }

        try {
            String strBirthDate = requestParams.get("birthdayDate");
            if(strBirthDate != null && !strBirthDate.isBlank()) {
                user.setBirthdate(new SimpleDateFormat("yyyy-MM-dd").parse(strBirthDate));
            }
        }catch(Exception e) {
            e.printStackTrace();
        }

        String gender = requestParams.get("genderSelect");
        if(gender != null && !gender.isBlank()) {
            user.setGender(gender);
        }

        ResponseEntity<User> response = userAPI.createUser(user);
        if(response.getStatusCode() == HttpStatus.CREATED) {
            model.addObject("createUserSuccess", true);
        }else {
            model.addObject("createUserSuccess", false);
        }
        return model;
    }
}
