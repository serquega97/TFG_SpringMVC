package com.spring.phisioweb.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.spring.phisioweb.api.product.ProductAPIRest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @Autowired
    ProductAPIRest prodAPI;

    @RequestMapping("/")
    public String index() {
        
        return "redirect:/home?lang=es";
    }

    @RequestMapping("/home")
    public ModelAndView mainPage(HttpServletRequest request, @RequestParam("lang") String lang) {
        ModelAndView model = new ModelAndView("index");;
        HttpSession newSession = request.getSession();
        newSession.setAttribute("lang", lang);
        return model;
    }
}