package org.java.service.impl;

import org.java.dao.CarMapper;
import org.java.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class CarServiceImpl implements CarService{

    @Autowired
    private CarMapper carMapper;

    @Override
    public List<Map> getList() {
        return carMapper.getList();
    }

    @Override
    public void del(Integer id) {
         carMapper.del(id);
    }

    @Override
    public void add(Map m) {
         carMapper.add(m);
    }

    @Override
    public Map selectCarById(Integer id) {
        return carMapper.selectCarById(id);
    }

    @Override
    public void update(Map m) {
         carMapper.update(m);
    }
}
