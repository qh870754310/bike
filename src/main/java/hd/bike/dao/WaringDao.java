package hd.bike.dao;

import hd.bike.model.Warning;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 单车-数据访问接口
 * Created by jumpa on 2018/11/1 13:00.
 */
@Repository
public interface WaringDao {
    int del(String bikeId);

    List<Warning> get(Map param);
}
