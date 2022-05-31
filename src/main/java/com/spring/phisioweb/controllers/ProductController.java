package com.spring.phisioweb.controllers;

import java.util.List;

import com.spring.phisioweb.api.product.ProductAPIRest;
import com.spring.phisioweb.api.product.ProductService;
import com.spring.phisioweb.model.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/products")
public class ProductController {
    
    @Autowired
    ProductAPIRest service;

    @Autowired
    ProductService productService;

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getAllProducts() {
        ModelAndView model;
        ResponseEntity<List<Product>> response = service.findAllProducts();
        if(response.getStatusCode() == HttpStatus.OK) {
            List<Product> newList = response.getBody();
            model = new ModelAndView("product_list");
            model.addObject("productList", newList);
        }else {
            model = new ModelAndView();
        }

        return model;
    }

    @RequestMapping(value = "/id/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getProduct(@PathVariable("id") Integer id) {
        ModelAndView model;
        ResponseEntity<Product> response = service.findProductById(id);
        if(response.getStatusCode() == HttpStatus.OK) {
            Product newProduct = response.getBody();
            model = new ModelAndView("single_product");
            model.addObject("newProduct", newProduct);
        }else {
            model = new ModelAndView();
        }

        return model;
    }

    @RequestMapping(value = "/type/{product_type}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView getProductType(@PathVariable("product_type") String product_type) {
        ModelAndView model;
        ResponseEntity<List<Product>> response = service.findProductByType(product_type);
        //Request is OK
        if(response.getStatusCode() == HttpStatus.OK) {
            List<Product> newList = response.getBody();
            model = new ModelAndView("product_list");
            model.addObject("productList", newList);
            return model;
        }else {
            model = new ModelAndView();
        }

        return model;
    }

    //Method that retruns a list of products names for the autocompletion
    @RequestMapping(value = "/search/products", method = RequestMethod.GET)
    @ResponseBody
    public List<String> searchproducts(@RequestParam("term") String term) {
        return productService.searchProducts(term);
    }
}
