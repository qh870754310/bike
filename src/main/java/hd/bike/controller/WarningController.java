package hd.bike.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import hd.bike.dao.WaringDao;
import hd.bike.model.Command;
import hd.bike.model.QueryParam;
import hd.bike.model.Warning;
import hd.bike.util.ParamHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jumpa on 2018/11/1 15:34.
 */
@Controller
@RequestMapping("/warning")
public class WarningController {
    private final WaringDao waringDao;

    @Autowired
    public WarningController(WaringDao waringDao) {
        this.waringDao = waringDao;
    }

    @GetMapping("/list")
    public String commandList(String bikeId, Model model) {
        model.addAttribute("bikeId", bikeId);
        return "warning/list";
    }

    @ResponseBody
    @RequestMapping("/getDataGrid")
    public Map<String, Object> getDataGrid(QueryParam param, String bikeId) {
        Map<String, Object> map = ParamHelper.convertToMap(param.getParam());
        map.put("sortInfo", param.getSort() + " " + param.getOrder());
        map.put("bikeId", bikeId);
        PageHelper.startPage(param.getPage(), param.getRows());
        List<Warning> list = waringDao.get(map);
        PageInfo<Warning> pageInfo = new PageInfo<>(list);
        map.clear();
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }

    @ResponseBody
    @RequestMapping("/del")
    public Map<String, Boolean> del(String bikeId) {
        Map<String, Boolean> result = new HashMap<>();
        try {
            waringDao.del(bikeId);
            result.put("state", true);
        } catch (Exception e) {
            result.put("state", false);
        }
        return result;
    }
}
