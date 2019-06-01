package org.java.service.impl;

import org.java.dao.BumenMapper;
import org.java.service.BumenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BumenServiceImpl implements BumenService {

    @Autowired
    private BumenMapper bumenMapper;


    @Override
    public List<Map<String, Object>> ShowBumen() {

        return bumenMapper.ShowBumen();
    }

    @Override
    public Map selectone(String pk_Department) {
        return bumenMapper.selectone(pk_Department);
    }

    @Override
    public void updatebumen(Map<String, Object> m) {
        bumenMapper.updatebumen(m);
    }

    @Override
    public int delbumen(String pk_Department) {
        return bumenMapper.delbumen(pk_Department);
    }

    @Override
    public void insertbumen(Map<String, Object> m) {
        bumenMapper.insertbumen(m);
    }



}
