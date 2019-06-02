package org.java.service;

import java.util.List;
import java.util.Map;

public interface CarService {

    public List<Map> getList();

    public void del(Integer id);

    public void add(Map m);

    public Map selectCarById(Integer id);

    public void update(Map m);
}
