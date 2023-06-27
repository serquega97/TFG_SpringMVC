package com.spring.phisioweb.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SessionAttributesController {
    
    @GetMapping("get/session/attribute")
    @ResponseBody
    public String getSessionAttributeValue(@RequestParam String session_attr, HttpServletRequest request) {
        String returnedParam = "";
        HttpSession session = request.getSession();
        String param = (String) session.getAttribute(session_attr);
        if(param != null && !param.isEmpty()) {
            returnedParam = param;
        }

        return returnedParam;
    }
}
