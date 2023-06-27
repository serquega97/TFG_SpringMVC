package com.spring.phisioweb.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.spring.phisioweb.api.product.ProductAPIRest;
import com.spring.phisioweb.api.product.ProductService;
import com.spring.phisioweb.model.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/products")
public class ProductController {
    
    @Autowired
    ProductAPIRest service;

    @Autowired
    ProductService productService;

    @GetMapping("/all")
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

    @GetMapping("/id/{id}")
    @ResponseBody
    public ModelAndView getProduct(@PathVariable Integer id, HttpServletRequest request) {
        ModelAndView model;
        ResponseEntity<Product> response = service.findProductById(id);
        if(response.getStatusCode() == HttpStatus.OK) {
            Product newProduct = response.getBody();
            Float convertedPrice = getPriceByCurrency(request, newProduct.getProduct_price());
            newProduct.setProduct_price(convertedPrice);
            model = new ModelAndView("single_product");
            model.addObject("newProduct", newProduct);
        }else {
            model = new ModelAndView();
        }

        return model;
    }

    @GetMapping("/type/{product_type}")
    @ResponseBody
    public ModelAndView getProductType(@PathVariable String product_type) {
        ModelAndView model;
        ResponseEntity<List<Product>> response = service.findProductByType(product_type);
        //Request is OK
        if(response.getStatusCode() == HttpStatus.OK) {
            List<Product> newList = response.getBody();
            model = new ModelAndView("product_list");
            model.addObject("productList", newList);
        }else {
            model = new ModelAndView();
        }

        return model;
    }

    //Method that retruns a list of products names for the autocompletion
    @GetMapping("/search/products")
    @ResponseBody
    public List<String> searchproducts(@RequestParam String term) {
        return productService.searchProducts(term);
    }

    //Method that retruns a product by its name
    @GetMapping("/name/{product_name}")
    @ResponseBody
    public ModelAndView getProductByName(@PathVariable String product_name, HttpServletRequest request) {
        ModelAndView model;
        ResponseEntity<Product> response = service.getProductByName(product_name);
        //Request is OK
        if(response.getStatusCode() == HttpStatus.OK) {
            Product newProduct = response.getBody();
            Float convertedPrice = getPriceByCurrency(request, newProduct.getProduct_price());
            newProduct.setProduct_price(convertedPrice);
            model = new ModelAndView("single_product");
            model.addObject("newProduct", newProduct);
        }else {
            model = new ModelAndView();
        }

        return model;
    }

    //Method that returns a product by its name
    @GetMapping("/name")
    @ResponseBody
    public ModelAndView getProductIntro(@RequestParam String searchBox) {
        ModelAndView model;
        ResponseEntity<List<Product>> response = service.getProductByNameIntro(searchBox);
        //Request is OK
        if(response.getStatusCode() == HttpStatus.OK) {
            List<Product> listProducts = response.getBody();
            model = new ModelAndView("product_list");
            model.addObject("productList", listProducts);
        }else {
            model = new ModelAndView();
        }

        return model;
    }

    public Float getPriceByCurrency(HttpServletRequest request, Float product_price) {
        HttpSession session = request.getSession();
        Float convertedPrice = null;
        Double doublePrice;
        String curr = (String) session.getAttribute("curr");

        if(curr != null && !curr.isEmpty() && curr.equals("dol")) {
            doublePrice = product_price * 1.05;
            convertedPrice = doublePrice.floatValue();
        }else if(curr != null && !curr.isEmpty() && curr.equals("gbp")) {
            doublePrice = product_price * 0.86;
            convertedPrice = doublePrice.floatValue();
        }

        return convertedPrice;
    }
}
