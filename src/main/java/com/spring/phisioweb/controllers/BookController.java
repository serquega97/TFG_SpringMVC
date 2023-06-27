package com.spring.phisioweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/book")
public class BookController {

    @GetMapping("/calendar")
    public ModelAndView calendarView() {
        ModelAndView model = new ModelAndView("bookingCalendar");
        return model;
    }
}
