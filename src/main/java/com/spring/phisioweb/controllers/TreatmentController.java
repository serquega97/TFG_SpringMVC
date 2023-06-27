package com.spring.phisioweb.controllers;
import java.util.List;

import com.spring.phisioweb.api.treatment.TreatmentAPIRest;

import com.spring.phisioweb.model.Treatment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/treatments")
public class TreatmentController {
    
    @Autowired
    TreatmentAPIRest treatApi;

    @GetMapping("/all")
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

    @GetMapping("/webname/{service_webname}")
    @ResponseBody
    public ModelAndView getServiceByWebname(@PathVariable String service_webname) {
        ModelAndView model;
        ResponseEntity<Treatment> response = treatApi.findServiceByWebname(service_webname);
        if(response.getStatusCode() == HttpStatus.OK) {
            model = new ModelAndView("single_service");
            Treatment treatment = response.getBody();
            model.addObject("treatment", treatment);
        }else {
            model = new ModelAndView();
        }

        return model;
    }
}
