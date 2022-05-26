package com.spring.phisioweb.api.treatment;
import com.spring.phisioweb.api.treatment.TreatmentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/v1")
public class TreatmentAPIRest {
    
    @Autowired
    private TreatmentService treatService;

    @GetMapping("/services/all")
    public ResponseEntity<List<Treatment>> findAllProducts() {
        List<Product> newListProduct = productService.findAllProducts();
        if(newListProduct.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }

        return ResponseEntity.status(HttpStatus.OK).body(newListProduct);
    }
}
