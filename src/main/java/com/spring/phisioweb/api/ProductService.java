package com.spring.phisioweb.api;

import java.util.List;

import com.spring.phisioweb.model.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ProductService {
    
    @Autowired
    private ProductRepository productRepository;

    //Returns a list of all products and services
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    //Returns a list of all products
    public List<Product> findAllProducts() {
        return productRepository.findAllProducts();
    }

    //Returns a list of all services
    public List<Product> findAllServices() {
        return productRepository.findAllServices();
    }

    //Returns the service by its webname
    public Product findServiceByWebname(String product_webname) {
        return productRepository.findServiceByWebname(product_webname);
    }

    //Return a single product by his ID
    public Product findProductById(Integer id) {
        return productRepository.findById(id).get();
    }

    //Return a list of products filtered by type
    public List<Product> findProductByType(String product_type) {
        return productRepository.findProductByType(product_type);
    }

    //Return the duration of a service
    public Product getServiceDuration(String product_webname) {
        return productRepository.getServiceDuration(product_webname);
    }
}
