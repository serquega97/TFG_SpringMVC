package com.spring.phisioweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/users")
public class UserController {
    
    @RequestMapping(value = "/login/signup/registration.html", method = RequestMethod.GET)
    public static ModelAndView createNewuserForm() {
        return new ModelAndView("registrationForm");
    }

    public static ModelAndView checkUserLogin() {
        return null;
    }

    public static ModelAndView createNewuserRepository() {
        return null;
    }
}
