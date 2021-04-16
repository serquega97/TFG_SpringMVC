package com.spring.phisioweb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Entity
@Getter
@Setter
@Table(name = "Service")
public class Services implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column(nullable = false)
    private String service_webname;
    @Column(nullable = false)
    private String service_name;
    @Column(nullable = false)
    private Float service_duration;
    @Column(nullable = false)
    private Float service_price;
    @Column(nullable = false)
    private String service_desc1;
    @Column(nullable = false)
    private String service_desc2;
    @Column(nullable = false)
    private String service_desc3;
    @Column(nullable = false)
    private String service_desc4;
    @Column(nullable = false)
    private String service_desc5;
    @Column(nullable = false)
    private String url_photo;
    
    //Constructors
    public Services() {
        
    }
    
    public Services(Integer id) {
        this.id = id;
    }
    
    public Services(String name, Float duration, Float price, String desc1, String desc2, String desc3, 
        String desc4, String desc5, String photo) {
        service_name = name;
        service_duration = duration;
        service_price = price;
        service_desc1 = desc1;
        service_desc2 = desc2;
        service_desc3 = desc3;
        service_desc4 = desc4;
        service_desc5 = desc5;
        url_photo = photo;
    }
}

