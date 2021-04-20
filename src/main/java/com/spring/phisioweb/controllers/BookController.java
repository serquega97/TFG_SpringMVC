package com.spring.phisioweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/book")
public class BookController {
    
    @RequestMapping("/new")
    public String bookingView() {

        return "booking";
    }

    @RequestMapping("/calendar")
    public ModelAndView calendarView() {
        ModelAndView model = new ModelAndView("bookingCalendar");
        return model;
    }
}
