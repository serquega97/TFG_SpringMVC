/**
 * Java class to store the information about our Services
 * @author sergiquevedogarreta
 */
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="Treatment")
public class Treatment {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column(nullable = false)
    private String service_name;
    @Column(nullable = false)
    private Float service_price;
    @Column(nullable = false)
    private String service_desc1;
    @Column(nullable = false)
    private String service_desc2;
    @Column(nullable = false)
    private String service_desc3;
    @Column(nullable = false)
    private String service_desc4;
    @Column(nullable = false)
    private String service_desc5;
    @Column(nullable = false)
    private String url_photo;
    @Column(nullable = false)
    private Integer service_duration;
    @Column(nullable = false)
    private String service_webname;

    /*****************Class constructors*************/
    public Service() {

    }

    public Service(Integer id) {
        this.id = id;
    }

    public Service(String name, Float price, String desc1, String desc2, String desc3, String desc4, String desc5,
        String photo, Integer duration, String webname) {
        this.service_name = name;
        this.service_price = price;
        this.service_desc1 = desc1;
        this.service_desc2 = desc2;
        this.service_desc3 = desc3;
        this.service_desc4 = desc4;
        this.service_desc5 = desc5;
        this.url_photo = photo;
        this.service_duration = duration;
        this.service_webname = webname;
    }

    /*****************Getter's & setter's*************/
    public Integer getId() {
        return id;
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getService_name() {
        return service_name;
    }

    public void setService_name(String service_name) {
        this.service_name = service_name;
    }

    public Float getService_price() {
        return service_price;
    }

    public void setService_price(Float service_price) {
        this.service_price = service_price;
    }

    public String getService_desc1() {
        return service_desc1;
    }

    public void setService_desc1(String service_desc1) {
        this.service_desc1 = service_desc1;
    }

    public String getService_desc2() {
        return service_desc2;
    }

    public void setService_desc2(String service_desc2) {
        this.service_desc2 = service_desc2;
    }

    public String getService_desc3() {
        return service_desc3;
    }

    public void setService_desc3(String service_desc3) {
        this.service_desc3 = service_desc3;
    }

    public String getService_desc4() {
        return service_desc4;
    }

    public void setService_desc4(String service_desc4) {
        this.service_desc4 = service_desc4;
    }

    public String getService_desc5() {
        return service_desc5;
    }

    public void setService_desc5(String service_desc5) {
        this.service_desc5 = service_desc5;
    }

    public String getUrl_photo() {
        return url_photo;
    }

    public void setUrl_photo(String url_photo) {
        this.url_photo = url_photo;
    }

    public Integer getService_duration() {
        return service_duration;
    }

    public void setService_duration(Integer service_duration) {
        this.service_duration = service_duration;
    }

    public String getService_webname() {
        return service_webname;
    }

    public void setService_webname(String service_webname) {
        this.service_webname = service_webname;
    }

    /*****************Getter's & setter's*************/
    
}
