package hd.bike.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import hd.bike.dao.CommandDao;
import hd.bike.model.Command;
import hd.bike.model.QueryParam;
import hd.bike.util.ParamHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * Created by jumpa on 2018/11/1 13:59.
 */
@Controller
@RequestMapping("/command")
public class CommandController {
    private final CommandDao commandDao;

    @Autowired
    public CommandController(CommandDao commandDao) {
        this.commandDao = commandDao;
    }

    @GetMapping("/sendView")
    public String sendView(String id, Model model) {
        model.addAttribute("id", id);
        return "command/send";
    }

    @ResponseBody
    @PostMapping("/sendAction")
    public Map<String, Boolean> sendAction(Command command) {
        Map<String, Boolean> map = new HashMap<>();
        command.setId(UUID.randomUUID().toString());
        command.setSendTime(new Date());
        map.put("state", commandDao.add(command) == 1);
        return map;
    }

    @GetMapping("/list")
    public String commandList(String id, Model model) {
        model.addAttribute("id", id);
        return "command/list";
    }

    @ResponseBody
    @RequestMapping("/getDataGrid")
    public Map<String, Object> getDataGrid(QueryParam param,String id) {
        Map<String, Object> map = ParamHelper.convertToMap(param.getParam());
        map.put("sortInfo", param.getSort() + " " + param.getOrder());
        map.put("id",id);
        PageHelper.startPage(param.getPage(), param.getRows());
        List<Command> list = commandDao.get(map);
        PageInfo<Command> pageInfo = new PageInfo<>(list);
        map.clear();
        map.put("total", pageInfo.getTotal());
        map.put("rows", list);
        return map;
    }

    @ResponseBody
    @RequestMapping("/del")
    public Map<String, Boolean> del(String sn) {
        Map<String, Boolean> result = new HashMap<>();
        try {
            commandDao.del(sn);
            result.put("state", true);
        } catch (Exception e) {
            result.put("state", false);
        }
        return result;
    }
}
