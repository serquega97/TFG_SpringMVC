package com.spring.phisioweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/politics")
public class PoliticsController {
    
    @GetMapping("/privacy-policy")
    public ModelAndView getPrivacyPolicy() {
        ModelAndView model = new ModelAndView("privacyPolicy");
        return model;
    }

    @GetMapping("/terms-service")
    public ModelAndView getTermsOfService() {
        ModelAndView model = new ModelAndView("termsOfService");
        return model;
    }

    @GetMapping("/shipment")
    public ModelAndView getShipment() {
        ModelAndView model = new ModelAndView("shipment");
        return model;
    }
}
