package org.java.service.impl;

import org.java.dao.ZhiweiMapper;
import org.java.service.ZhiweiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ZhiweiServiceImpl implements ZhiweiService {

    @Autowired
    private ZhiweiMapper zhiweiMapper;

    @Override
    public List<Map<String, Object>> ShowZhiwei() {
        return zhiweiMapper.ShowZhiwei();
    }

    @Override
    public Map<String, Object> selectzhiwei(String pk_Position) {
        return zhiweiMapper.selectzhiwei(pk_Position);
    }

    @Override
    public int delzhiwei(String pk_Position) {
        return zhiweiMapper.delzhiwei(pk_Position);
    }

    @Override
    public void updatezhiwei(Map<String, Object> m) {
        zhiweiMapper.updatezhiwei(m);
    }

    @Override
    public void insertzhiwei(Map<String, Object> m) {
        zhiweiMapper.insertzhiwei(m);
    }
}
