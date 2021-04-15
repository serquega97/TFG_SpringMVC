package com.spring.phisioweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/services")
public class ServicesController {
    
    @RequestMapping(value = "/puncion", method = RequestMethod.GET)
    public ModelAndView getPuncionSeca() {

        return new ModelAndView("index");
    }
}
