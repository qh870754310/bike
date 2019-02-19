package hd.bike.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import hd.bike.dao.BikeDao;
import hd.bike.model.Bike;
import hd.bike.model.QueryParam;
import hd.bike.service.BikeService;
import hd.bike.util.ParamHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by jumpa on 2018/11/1 13:08.
 */
@Service
public class BikeServiceImpl implements BikeService {
    private final BikeDao bikeDao;

    @Autowired
    public BikeServiceImpl(BikeDao bikeDao) {
        this.bikeDao = bikeDao;
    }

    @Override
    public Map<String, Object> getDataGrid(QueryParam param) {
        Map<String, Object> map = ParamHelper.convertToMap(param.getParam());
        map.put("sortInfo", param.getSort() + " " + param.getOrder());
        PageHelper.startPage(param.getPage(), param.getRows());
        List<Bike> list = bikeDao.get(map);
        PageInfo<Bike> pageInfo = new PageInfo<>(list);
        map.clear();
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }

    @Override
    public Bike getById(String id) {
        return bikeDao.getById(id);
    }

    @Override
    public void add(Bike bike) throws Exception {
        bike.setId(UUID.randomUUID().toString());
        if (bikeDao.add(bike) != 1) {
            throw new Exception("添加失败");
        }
    }

    @Override
    public void modify(Bike bike) throws Exception {
        if (bikeDao.modify(bike) != 1) {
            throw new Exception("修改失败");
        }
    }

    @Override
    public void del(String id) throws Exception {
        if (bikeDao.del(id) != 1) {
            throw new Exception("删除失败");
        }
    }

    @Override
    public List<Map> geAllBikes(Map map) {
        return bikeDao.geAllBikes(map);
    }

    @Override
    public List<Map> getHistoryTracksPoint(Map<String, Object> map) {
        return bikeDao.getHistoryTracksPoint(map);
    }
}
