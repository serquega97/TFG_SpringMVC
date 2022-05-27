package com.spring.phisioweb.controllers;
import java.util.List;

import com.spring.phisioweb.api.treatment.TreatmentAPIRest;

import com.spring.phisioweb.model.Treatment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/services")
public class TreatmentController {
    
    @Autowired
    TreatmentAPIRest treatApi;

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getAllServices() {
        ModelAndView model;
        ResponseEntity<List<Treatment>> response = treatApi.findAllServices();
        if(response.getStatusCode() == HttpStatus.OK) {
            model = new ModelAndView("product_list");
            List<Treatment> lstServices = response.getBody();
            model.addObject("productList", lstServices);
        }else {
            model = new ModelAndView();
        }

        return model;
    }

    @RequestMapping(value = "/{service_webname}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getAllServices(@PathVariable("service_webname") String service_webname) {
        ModelAndView model;
        ResponseEntity<List<Treatment>> response = treatApi.findAllServices();
        if(response.getStatusCode() == HttpStatus.OK) {
            model = new ModelAndView("product_list");
            List<Treatment> lstServices = response.getBody();
            model.addObject("productList", lstServices);
        }else {
            model = new ModelAndView();
        }

        return model;
    }
}
