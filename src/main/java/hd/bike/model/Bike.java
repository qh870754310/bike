package hd.bike.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

/**
 * 单车
 * Created by jumpa on 2018/10/31 16:59.
 */
@Getter
@Setter
@Alias("bike")
public class Bike implements Serializable {
    private String id;
    private String sn;
    private String location;
    private Double longitude;
    private Double latitude;
    private String locationType;
    private Integer state;
    private Float electric;
    private Float speed;
    private Integer locked;
    private String qrCode;
}
