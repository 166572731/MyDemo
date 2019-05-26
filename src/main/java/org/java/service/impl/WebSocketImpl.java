package org.java.service.impl;

import org.java.dao.WebSocketMapper;
import org.java.service.WebSocketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class WebSocketImpl implements WebSocketService {
    @Autowired
    WebSocketMapper webSocketMapper;
    @Override
    public List<Map> loadgroup(Integer fk_user) {
        return webSocketMapper.loadgroup(fk_user);
    }

    @Override
    public List<Map> loadfriend() {
        return webSocketMapper.loadfriend();
    }

    @Override
    public List<Map> loadGroupUser(List list) {
        return webSocketMapper.loadGroupUser(list);
    }
}
