package com.spring.phisioweb.api.treatment;
import java.util.List;
import com.spring.phisioweb.model.Treatment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/v1")
public class TreatmentAPIRest {
    
    @Autowired
    private TreatmentService treatService;

    @GetMapping("/services/all")
    public ResponseEntity<List<Treatment>> findAllServices() {
        ResponseEntity<List<Treatment>> response;
        List<Treatment> lstServices = treatService.findAllServices();
        if(lstServices.isEmpty()) {
            response = ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }else {
            response = ResponseEntity.status(HttpStatus.OK).body(lstServices);
        }

        return response;
    }

    @GetMapping("/services/webname/{service_webname}")
    public ResponseEntity<Treatment> findServiceByWebname(@PathVariable("service_webname") String service_webname) {
        ResponseEntity<Treatment> response;
        Treatment treatment = treatService.findServiceByWebname(service_webname);
        if(treatment == null) {
            response = ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }else {
            response = ResponseEntity.status(HttpStatus.OK).body(treatment);
        }

        return response;
    }
}
