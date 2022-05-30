package com.spring.phisioweb.api.product;

import java.util.List;

import com.spring.phisioweb.model.Product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductsRepository extends JpaRepository <Product, Integer> {
    
    //Returns a list of products filtered by product_type
    @Query(value = "SELECT p FROM Product p WHERE p.product_type = ?1")
    public List<Product> findProductByType(String product_type);

    /******** Methods and querys to make the filtering *********/
    //Returns a list of product ordered by price desc
    @Query(value = "SELECT p FROM Product p ORDER BY p.product_price DESC")
    public List<Product> filterByPriceDesc();

    //Returns a list of product ordered by price asc
    @Query(value = "SELECT p FROM Product p ORDER BY p.product_price ASC")
    public List<Product> filterByPriceAsc();

    //Returns a list of products ordered by name desc
    @Query(value = "SELECT p FROM Product p ORDER BY p.product_name DESC")
    public List<Product> filterByNameDesc();

    //Returns a list of product ordered by name asc
    @Query(value = "SELECT p FROM Product p ORDER BY p.product_name ASC")
    public List<Product> filterByNameAsc();
}
