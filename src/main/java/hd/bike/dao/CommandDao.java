package hd.bike.dao;

import hd.bike.model.Bike;
import hd.bike.model.Command;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by jumpa on 2018/11/1 13:00.
 */
@Repository
public interface CommandDao {
    int add(Command command);

    int del(String sn);

    List<Command> get(Map param);
}
