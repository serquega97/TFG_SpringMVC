package com.spring.phisioweb.api.product;

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
        ResponseEntity<List<Product>> response;
        List<Product> newListProduct = productService.findAll();
        if(newListProduct.isEmpty()) {
            response = ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }else {
            response = ResponseEntity.status(HttpStatus.OK).body(newListProduct);
        }

        return response;
    }

    @GetMapping("/products/id/{id}")
    public ResponseEntity<Product> findProductById(@PathVariable("id") Integer id) {
        ResponseEntity<Product> response;
        Product newProduct = productService.findProductById(id);
        if(newProduct == null) {
            response = ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }else {
            response = ResponseEntity.status(HttpStatus.OK).body(newProduct);
        }

        return response;
    }

    @GetMapping("/products/type/{product_type}")
    public ResponseEntity<List<Product>> findProductByType(@PathVariable("product_type") String product_type) {
        ResponseEntity<List<Product>> response;
        List<Product> newListProductType = productService.findProductByType(product_type);
        if(newListProductType.isEmpty()) {
            response = ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }else {
            response = ResponseEntity.status(HttpStatus.OK).body(newListProductType);
        }

        return response;
    }

    @GetMapping("/products/name({product_name}")
    public ResponseEntity<Product> getProductByName(@PathVariable("product_name") String product_name) {
        ResponseEntity<Product> response;
        Product newProduct = productService.getProductByName(product_name);
        if(newProduct == null) {
            response = ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }else {
            response = ResponseEntity.status(HttpStatus.OK).body(newProduct);
        }

        return response;
    }
}