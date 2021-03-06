package com.spring.phisioweb.api.product;

import java.util.List;

import com.spring.phisioweb.model.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ProductService {
    
    @Autowired
    private ProductsRepository productRepository;

    //Returns a list of all products and services
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    //Return a single product by his ID
    public Product findProductById(Integer id) {
        return productRepository.findById(id).get();
    }

    //Return a list of products filtered by type
    public List<Product> findProductByType(String product_type) {
        return productRepository.findProductByType(product_type);
    }

    //Method that retruns a list of products names for the autocompletion
    public List<String> searchProducts(String term) {
        return productRepository.searchProducts(term);
    }

    //Method that retruns a product by its name
    public Product getProductByName(String product_name) {
        return productRepository.getProductByName(product_name);
    }

    //Method that retruns a list of products when users click enter
    public List<Product> searchProductsIntro(String searchBox) {
        return productRepository.searchProductsIntro(searchBox);
    }
}
