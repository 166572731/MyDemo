package org.java.service.impl;

import org.java.dao.MenusMapper;
import org.java.service.MenusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class MenusServiceImpl implements MenusService {
    @Autowired
    MenusMapper menusMapper;
    @Override
    public List<Map> menusMain() {
        return menusMapper.menusMain();
    }

    @Override
    public List<Map> menusChild() {
        return menusMapper.menusChild();
    }
}
