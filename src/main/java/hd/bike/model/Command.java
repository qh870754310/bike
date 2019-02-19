package hd.bike.model;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by jumpa on 2018/11/1 14:28.
 */
@Getter
@Setter
@Alias("command")
public class Command implements Serializable {
    private String id;
    private String sn;
    private String command;
    private Float jg;
    private Float hcjg;
    private String ip;
    private String port;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date sendTime;
}
