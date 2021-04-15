package com.spring.phisioweb.controllers;

import java.util.List;

import com.spring.phisioweb.model.Product;
import com.spring.phisioweb.service.ProductAPIRest;

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
@RequestMapping("/products")
public class ProductController {
    
    @Autowired
    ProductAPIRest service;

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getAllProducts() {
        ResponseEntity<List<Product>> response = service.findAllProducts();
        if(response.getStatusCode() == HttpStatus.OK) {
            ModelAndView model = new ModelAndView("product_list");
            List<Product> newList = response.getBody();
            model.addObject("productList", newList);
            return model;
        }
        return new ModelAndView("navbar");
    }

    @RequestMapping(value = "/id/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getProduct(@PathVariable("id") Integer id) {
        ResponseEntity<Product> response = service.findProductById(id);
        if(response.getStatusCode() == HttpStatus.OK) {
            ModelAndView model = new ModelAndView("single_product");
            Product newProduct = response.getBody();
            model.addObject("newProduct", newProduct);
            return model;
        }
        return new ModelAndView("navbar");
    }

    @RequestMapping(value = "/type/{product_type}", method = RequestMethod.GET)
    public ModelAndView getProductType(@PathVariable("product_type") String product_type) {
        ResponseEntity<List<Product>> response = service.findProductByType(product_type);
        //Request is OK
        if(response.getStatusCode() == HttpStatus.OK) {
            ModelAndView model = new ModelAndView("product_list");
            List<Product> newList = response.getBody();
            model.addObject("productList", newList);
            return model;
        }
        //Request returns error
        return new ModelAndView();
    }
}
