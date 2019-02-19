package hd.bike.service;

import hd.bike.model.Bike;
import hd.bike.model.QueryParam;

import java.util.List;
import java.util.Map;

/**
 * Created by jumpa on 2018/11/1 13:08.
 */
public interface BikeService {
    Map<String, Object> getDataGrid(QueryParam param);

    Bike getById(String id);

    void add(Bike bike) throws Exception;


    void modify(Bike bike) throws Exception;


    void del(String id) throws Exception;

    List<Map> geAllBikes(Map map);

    List<Map> getHistoryTracksPoint(Map<String, Object> map);
}
