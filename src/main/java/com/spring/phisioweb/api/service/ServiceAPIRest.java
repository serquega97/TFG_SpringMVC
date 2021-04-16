package com.spring.phisioweb.api.service;

import java.util.List;

import com.spring.phisioweb.model.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class ServiceAPIRest {
    
    @Autowired
    private ServicesService serviceService;

    @GetMapping("/services/all")
    public ResponseEntity<List<Services>> findAllServices(){
        List<Services> newListService = serviceService.findAllServices();
        if(newListService.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }

        return ResponseEntity.status(HttpStatus.OK).body(newListService);
    }

    @GetMapping("/services/id/{id}")
    public ResponseEntity<Services> findServiceById(@PathVariable("id") Integer id) {
        Services newService = serviceService.findServiceById(id);
        if(newService == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }

        return ResponseEntity.status(HttpStatus.OK).body(newService);
    }

    @GetMapping("/services/name/{service_webname}")
    public ResponseEntity<Services> findServiceByName(@PathVariable("service_webname") String service_webname) {
        Services service = serviceService.findServiceByName(service_webname);
        if(service == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }

        return ResponseEntity.status(HttpStatus.OK).body(service);
    }
}
