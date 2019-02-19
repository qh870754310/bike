package hd.bike.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import hd.bike.service.BikeService;
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
 * 地图控制器
 * Created by jumpa on 2018/10/31 11:11.
 */
@Controller
@RequestMapping("/map")
public class MapController {

    private final BikeService bikeService;

    @Autowired
    public MapController(BikeService bikeService) {
        this.bikeService = bikeService;
    }

    /**
     * 地图页面
     *
     * @param model
     * @return
     */
    @GetMapping("/view")
    public String view(Model model) {
        Map map = new HashMap();
        List<Map> bikes = bikeService.geAllBikes(map);
        model.addAttribute("bikes", JSON.toJSON(bikes));
        return "map/map";
    }


    @GetMapping("/historyTracksView")
    public String historyTracksView(String id, Model model) {
        model.addAttribute("carId", id);
        return "map/history_tracks";
    }

    @GetMapping("/getHistoryTracksPoint")
    @ResponseBody
    public JSONObject getHistoryTracksPoint(String id, String startDate, String endDate) {
        Map<String, Object> map = new HashMap<>();
        map.put("id", id);
        map.put("startDate", startDate);
        map.put("endDate", endDate);
        JSONObject jsonObject = new JSONObject();
        try {
            List<Map> tracksPoint = bikeService.getHistoryTracksPoint(map);
            jsonObject.put("tracksPoint", JSON.toJSON(tracksPoint));
            jsonObject.put("state", true);
        } catch (Exception e) {
            jsonObject.put("state", false);
        }
        return jsonObject;
    }

    @GetMapping("/electricFenceView")
    public String electricFenceView(String id, Model model) {
        model.addAttribute("carId", id);
        Map map = new HashMap();
        List<Map> bikes = bikeService.geAllBikes(map);
        model.addAttribute("bikes", JSON.toJSON(bikes));
        model.addAttribute("formData", JSON.toJSON(bikeService.getById(id)));
        return "map/electricFence";
    }
}
