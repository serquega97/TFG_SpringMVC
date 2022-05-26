import com.spring.phisioweb.model.Treatment;

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
        treatRepo.findAll();
    }

    //Return a service by their webname
    public Treatment findServiceByWebname(String service_webname) {
        treatRepo.findServiceByWebname(service_webname);
    }

    public Integer getServceDuration(String service_webname) {
        treatRepo.getServiceDuration(service_webname);
    }
}
