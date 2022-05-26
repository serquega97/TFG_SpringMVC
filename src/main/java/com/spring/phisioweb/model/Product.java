package com.spring.phisioweb.model;

/**
 * Java class to store the information about our model, products
 * @author sergiquevedogarreta
 */

import java.io.Serializable;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
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
    private String product_webname;

    /*****************Class constructors*************/
    public Product() {
        
    }
    
    public Product(Integer id) {
        this.id = id;
    }
    
    public Product(String name, Float weight, Float price, String product_type, String desc1, 
        String desc2, String desc3, String desc4, String desc5, String photo, String webname) {
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
        this.product_webname = webname;
    }

    /*****************Getter's & setter's*************/
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProduct_name() {
        return this.product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public Float getProduct_weight() {
        return this.product_weight;
    }

    public void setProduct_weight(Float product_weight) {
        this.product_weight = product_weight;
    }

    public Float getProduct_price() {
        return this.product_price;
    }

    public void setProduct_price(Float product_price) {
        this.product_price = product_price;
    }

    public String getProduct_type() {
        return this.product_type;
    }

    public void setProduct_type(String product_type) {
        this.product_type = product_type;
    }

    public String getProduct_desc1() {
        return this.product_desc1;
    }

    public void setProduct_desc1(String product_desc1) {
        this.product_desc1 = product_desc1;
    }

    public String getProduct_desc2() {
        return this.product_desc2;
    }

    public void setProduct_desc2(String product_desc2) {
        this.product_desc2 = product_desc2;
    }

    public String getProduct_desc3() {
        return this.product_desc3;
    }

    public void setProduct_desc3(String product_desc3) {
        this.product_desc3 = product_desc3;
    }

    public String getProduct_desc4() {
        return this.product_desc4;
    }

    public void setProduct_desc4(String product_desc4) {
        this.product_desc4 = product_desc4;
    }

    public String getProduct_desc5() {
        return this.product_desc5;
    }

    public void setProduct_desc5(String product_desc5) {
        this.product_desc5 = product_desc5;
    }

    public String getUrl_photo() {
        return this.url_photo;
    }

    public void setUrl_photo(String url_photo) {
        this.url_photo = url_photo;
    }

    public Integer getProduct_duration() {
        return this.product_duration;
    }

    public void setProduct_duration(Integer product_duration) {
        this.product_duration = product_duration;
    }

    public String getProduct_webname() {
        return this.product_webname;
    }

    public void setProduct_webname(String product_webname) {
        this.product_webname = product_webname;
    }
}
