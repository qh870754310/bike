package hd.bike.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import hd.bike.model.Bike;
import hd.bike.model.QueryParam;
import hd.bike.service.BikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * 单车控制器
 * Created by jumpa on 2018/10/31 11:13.
 */
@Controller
@RequestMapping("/bike")
public class BikeController {
    private final BikeService bikeService;

    @Autowired
    public BikeController(BikeService bikeService) {
        this.bikeService = bikeService;
    }

    @GetMapping("/list")
    public String listView() {
        return "bike/bike";
    }

    @ResponseBody
    @RequestMapping("/getDataGrid")
    public Map<String, Object> getDataGrid(QueryParam param) {
        return bikeService.getDataGrid(param);
    }

    @GetMapping("/form")
    public String formView(String id, Model model) {
        if (id == null) {//新增
            model.addAttribute("category", 1);
            model.addAttribute("formData", new JSONObject());
        } else {//编辑
            model.addAttribute("category", 2);
            model.addAttribute("formData", JSON.toJSON(bikeService.getById(id)));
        }
        return "bike/form";
    }

    @ResponseBody
    @PostMapping("/subForm")
    public Map<String, Boolean> subForm(Bike bike) {
        Map<String, Boolean> result = new HashMap<>();
        try {
            if (bike.getId() == null) {//新增
                bikeService.add(bike);
            } else {//编辑
                bikeService.modify(bike);
            }
            result.put("state", true);
        } catch (Exception e) {
            result.put("state", false);
        }
        return result;
    }

    @ResponseBody
    @RequestMapping("/del/{id}")
    public Map<String, Boolean> delCountry(@PathVariable("id") String id) {
        Map<String, Boolean> result = new HashMap<>();
        try {
            bikeService.del(id);
            result.put("state", true);
        } catch (Exception e) {
            result.put("state", false);
        }
        return result;
    }
}
