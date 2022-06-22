package com.spring.phisioweb.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class User {
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    Long id;
    String username;
    String password;
    String name;
    String surname1;
    String surname2;
    String email;
    Integer age;

    /******************Class constructors**************/
    public User() {

    }

    public User(Long id) {
        this.id = id;
    }

    public User(Long id, String username, String password, String name, String surname1, String surname2, String email, Integer age) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.surname1 = surname1;
        this.surname2 = surname2;
        this.email = email;
        this.age = age;
    }

    /*****************Getter's & setter's*************/
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname1() {
        return surname1;
    }

    public void setSurname1(String surname1) {
        this.surname1 = surname1;
    }

    public String getSurname2() {
        return surname2;
    }

    public void setSurname2(String surname2) {
        this.surname2 = surname2;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }    
}
