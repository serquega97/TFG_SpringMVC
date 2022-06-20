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
        String curCurr = requestParams.get("curr");
        String curLang = requestParams.get("lang");
        HttpSession session = request.getSession();
        String prevCurr = (String) session.getAttribute("curr");
        String prevLang = (String) session.getAttribute("lang");

        //Set currency attribute only when the value changes
        if(curCurr != null && !curCurr.isEmpty() && curCurr != prevCurr) {
            session.setAttribute("curr", curCurr);
        }

        //Set language attribute only when the value changes
        if(curLang != null && !curLang.isEmpty() && curLang != prevLang) {
            session.setAttribute("lang", curLang);
        }

        return model;
    }
}