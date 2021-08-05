package com.spring.phisioweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String index() {
        
        return "redirect:/home?lang=es";
    }

    @RequestMapping("/home")
    public String mainPage(@RequestParam String lang) {

        return "index";
    }
}