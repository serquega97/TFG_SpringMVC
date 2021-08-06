package com.spring.phisioweb.api;

import java.util.List;

import com.spring.phisioweb.model.Product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository <Product, Integer> {
    
    //Returns a list of products filtered by product_type
    @Query(value = "SELECT p FROM Product p WHERE p.product_type = ?1")
    public List<Product> findProductByType(String product_type);

    //Returns all services stored in database
    @Query(value = "SELECT p FROM Product p WHERE p.product_type = 'Servicio'")
    public List<Product> findAllServices();

    //Returns all products stored in database
    @Query(value = "SELECT p FROM Product p WHERE p.product_type != 'Servicio'")
    public List<Product> findAllProducts();

    //Returns the service filtered by their webname
    @Query(value = "SELECT p FROM Product p WHERE p.product_webname = ?1")
    public Product findServiceByWebname(String product_webname);

    /******** Methods and querys to make the filtering *********/
    //Returns a list of product ordered by price desc
    @Query(value = "SELECT p FROM Product p WHERE p.product_type != 'Servicios' ORDER BY p.product_price DESC")
    public List<Product> filterByPriceDesc();

    //Returns a list of product ordered by price asc
    @Query(value = "SELECT p FROM Product p WHERE p.product_type != 'Servicios' ORDER BY p.product_price ASC")
    public List<Product> filterByPriceAsc();

    //Returns a list of products ordered by name desc
    @Query(value = "SELECT p FROM Product p ORDER BY p.product_name DESC")
    public List<Product> filterByNameDesc();

    //Returns a list of product ordered by name asc
    @Query(value = "SELECT p FROM Product p ORDER BY p.product_name ASC")
    public List<Product> filterByNameAsc();

    //Returns the duration of a service
    @Query(value = "SELECT p FROM Product p WHERE p.product_webname = ?1")
    public Product getServiceDuration(String product_webname);
}
