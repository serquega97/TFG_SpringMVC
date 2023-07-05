package com.spring.phisioweb.api.treatment;
import com.spring.phisioweb.model.Treatment;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TreatmentRepository extends JpaRepository <Treatment, Integer> {
    
    //Returns the service filtered by their webname
    @Query(value = "SELECT t FROM Treatment t WHERE t.service_webname = ?1")
    public Treatment findServiceByWebname(String service_webname);

    //Returns the duration of a service
    @Query(value = "SELECT t.service_duration FROM Treatment t WHERE t.service_webname = ?1")
    public Integer getServiceDuration(String service_webname);
}
