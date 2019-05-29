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
    public List<Map> loadGroupUser(Integer fk_group) {
        return webSocketMapper.loadGroupUser(fk_group);
    }

    @Override
    public Integer addtalk(Map map) {
        System.out.println("1111111111111111111111111111111");
        return webSocketMapper.addtalk(map);
    }

    @Override
    public List<Map> loadTalk(String talk_from, String talk_to) {
        return webSocketMapper.loadTalk(talk_from, talk_to);
    }

    @Override
    public Integer updateTalkCode(String talk_from, String talk_to) {
        return webSocketMapper.updateTalkCode(talk_from, talk_to);
    }
}
