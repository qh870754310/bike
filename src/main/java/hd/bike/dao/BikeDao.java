package hd.bike.dao;

import hd.bike.model.Bike;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 单车-数据访问接口
 * Created by jumpa on 2018/11/1 13:00.
 */
@Repository
public interface BikeDao {
    int add(Bike bike);

    int modify(Bike bike);

    int del(String id);

    List<Bike> get(Map param);

    Bike getById(String id);

    List<Map> geAllBikes(Map map);

    List<Map> getHistoryTracksPoint(Map<String, Object> map);
}
