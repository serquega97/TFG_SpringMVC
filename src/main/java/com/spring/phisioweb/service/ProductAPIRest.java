package com.spring.phisioweb.service;

import java.util.List;

import com.spring.phisioweb.model.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class ProductAPIRest {

    @Autowired
    private ProductService productService;

    @GetMapping("/products/all")
    public ResponseEntity<List<Product>> findAllProducts() {
        List<Product> newListProduct = productService.findAllProducts();
        if(newListProduct.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }

        return ResponseEntity.status(HttpStatus.OK).body(newListProduct);
    }

    @GetMapping("/products/id/{id}")
    public ResponseEntity<Product> findProductById(@PathVariable("id") Integer id) {
        Product newProduct = productService.findProductById(id);
        if(newProduct == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }

        return ResponseEntity.status(HttpStatus.OK).body(newProduct);
    }

    @GetMapping("/products/type/{product_type}")
    public ResponseEntity<List<Product>> findProductByType(@PathVariable("product_type") String product_type) {
        List<Product> newListProductType = productService.findProductByType(product_type);
        if(newListProductType.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }

        return ResponseEntity.status(HttpStatus.OK).body(newListProductType);
    }
}
