package com.spring.phisioweb.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
    public String mainPage(HttpServletRequest request, @RequestParam String lang) {
        HttpSession newSession = request.getSession();
        newSession.setAttribute("lang", lang);
        return "index";
    }
}