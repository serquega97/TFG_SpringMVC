package com.spring.phisioweb.controllers;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping("/")
    public ModelAndView index() {

        return new ModelAndView("redirect:/home?curr=eur&lang=es");
    }

    @RequestMapping("/home")
    public ModelAndView mainPage(@RequestParam Map<String, String> requestParams, HttpServletRequest request) {
        ModelAndView model = new ModelAndView("index");
        String curr = requestParams.get("curr");
        String lang = requestParams.get("lang");
        HttpSession newSession = request.getSession();

        if(curr != null && !curr.isEmpty()) {
            newSession.setAttribute("curr", curr);
        }

        if(lang != null && !lang.isEmpty()) {
            newSession.setAttribute("lang", lang);
        }

        return model;
    }
}