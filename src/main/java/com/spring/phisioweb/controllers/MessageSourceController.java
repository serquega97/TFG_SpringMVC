package com.spring.phisioweb.controllers;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MessageSourceController {
    
    @Autowired
    MessageSource messageSource;

    @RequestMapping("/get/message")
    @ResponseBody
    public String getMessageByAjaxCall(@RequestParam String message, Locale locale) {

        return messageSource.getMessage(message, null, locale);
    }
}
