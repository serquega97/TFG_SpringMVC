package com.spring.phisioweb.api.treatment;
import com.spring.phisioweb.model.Treatment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TreatmentService {
    
    @Autowired
    private TreatmentRepository treatRepo;

    //Returns a list of all services
    public List<Treatment> findAllServices() {
        return treatRepo.findAll();
    }

    //Return a service by their webname
    public Treatment findServiceByWebname(String service_webname) {
        return treatRepo.findServiceByWebname(service_webname);
    }

    public Integer getServiceDuration(String service_webname) {
        return treatRepo.getServiceDuration(service_webname);
    }
}
