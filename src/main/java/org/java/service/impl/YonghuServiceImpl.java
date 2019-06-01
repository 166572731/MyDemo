package org.java.service.impl;

import org.java.dao.BumenMapper;
import org.java.dao.YonghuMapper;
import org.java.service.YonghuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class YonghuServiceImpl implements YonghuService {


    @Autowired
    private YonghuMapper yonghuMapper;

    @Override
    public List<Map<String, Object>> ShowYonghu() {
        return yonghuMapper.ShowYonghu();
    }

    @Override
    public int delyuangong(String pk_user) {
        return yonghuMapper.delyuangong(pk_user);
    }

    @Override
    public void insertyonghu(Map<String, Object> m) {
        yonghuMapper.insertyonghu(m);
    }

    @Override
    public Map selectyonghu(String pk_user) {
        return yonghuMapper.selectyonghu(pk_user);
    }

    @Override
    public void updateyonghu(Map<String, Object> m) {
        System.err.println("进入up");
        yonghuMapper.updateyonghu(m);
    }
}
