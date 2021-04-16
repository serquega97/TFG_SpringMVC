package com.spring.phisioweb.api.service;

import java.util.List;

import com.spring.phisioweb.model.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ServicesService {
    
    @Autowired 
    private ServiceRepository serviceRepository;

    //Returns a list of all services in database
    public List<Services> findAllServices() {
        return serviceRepository.findAll();
    }

    //Return the service identified by the id
    public Services findServiceById(Integer id) {
        return serviceRepository.findById(id).get();
    }

    //Returns de service identified by the name
    public Services findServiceByName(String service_webname) {
        return serviceRepository.findServiceByName(service_webname);
    }
}
