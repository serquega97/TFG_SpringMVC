package com.spring.phisioweb.model;

/**
 * Java class to store the information about our model, products
 * @author sergiquevedogarreta
 */

import java.io.Serializable;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
@Getter
@Setter
@Table(name = "Product")
public class Product implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column(nullable = false)
    private String product_name;
    @Column(nullable = false)
    private Float product_weight;
    @Column(nullable = false)
    private Float product_price;
    @Column(nullable = false)
    private String product_type;
    @Column(nullable = false)
    private String product_desc1;
    @Column(nullable = false)
    private String product_desc2;
    @Column(nullable = false)
    private String product_desc3;
    @Column(nullable = false)
    private String product_desc4;
    @Column(nullable = false)
    private String product_desc5;
    @Column(nullable = false)
    private String url_photo;
    @Column(nullable = false)
    private Integer product_duration;
    @Column(nullable = false)
    private String product_webname;
    
    //Constructors
    public Product() {
        
    }
    
    public Product(Integer id) {
        this.id = id;
    }
    
    public Product(String name, Float weight, Float price, String product_type, String desc1, 
        String desc2, String desc3, String desc4, String desc5, String photo, Integer duration, String webname) {
        this.product_name = name;
        this.product_weight = weight;
        this.product_price = price;
        this.product_desc1 = desc1;
        this.product_desc1 = desc2;
        this.product_desc1 = desc3;
        this.product_desc1 = desc4;
        this.product_desc1 = desc5;
        this.url_photo = photo;
        this.product_type = product_type;
        this.product_duration = duration;
        this.product_webname = webname;
    }
}
