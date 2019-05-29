package org.java.service.impl;

import org.java.dao.CalenderMapper;
import org.java.service.CalenderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CalenderServiceImpl implements CalenderService {

    @Autowired
    private CalenderMapper calenderMapper;

    @Override
    public List<Map> load(String departmentId, Integer userId) {
        return calenderMapper.load(departmentId,userId );
    }
}
