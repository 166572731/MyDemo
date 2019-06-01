package org.java.service.impl;

import org.java.dao.ZhanghaoMapper;
import org.java.service.ZhanghaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service
public class ZhanghaoServiceImpl implements ZhanghaoService {

    @Autowired
    private ZhanghaoMapper zhanghaoMapper;



    @Override
    public List<Map<String, Object>> ShowZhanghao() {
        return zhanghaoMapper.ShowZhanghao();
    }

    @Override
    public int delzhanghao(String pk_Account) {
        return zhanghaoMapper.delzhanghao(pk_Account);
    }

    @Override
    public void insertzhanghao(Map<String, Object> m) {
        zhanghaoMapper.insertzhanghao(m);
    }
}
