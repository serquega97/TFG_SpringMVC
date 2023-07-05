package com.spring.phisioweb.api.user;
import com.spring.phisioweb.model.User;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Integer> {
    
    //Method that checks if an email already exists in de database
    @Query(value = "SELECT u.email FROM User u")
    public List<String> getUsersEmails();
}
