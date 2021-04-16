package com.spring.phisioweb.api.service;

import com.spring.phisioweb.model.Services;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ServiceRepository extends JpaRepository<Services, Integer> {
    
    //Return the service filtered by its name
    @Query(value = "SELECT s FROM Services s WHERE s.service_webname = ?1")
    public Services findServiceByName(String service_webname);
}
