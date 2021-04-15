package com.spring.phisioweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
    
    @RequestMapping("/book")
    public String bookingView() {

        return "booking";
    }
}
