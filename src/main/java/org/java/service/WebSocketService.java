package org.java.service;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface WebSocketService {
    List<Map> loadgroup(Integer fk_user);
    List<Map> loadfriend();
    List<Map> loadGroupUser(Integer fk_group);
    Integer addtalk(Map map);
    List<Map> loadTalk(String talk_from,String talk_to);
    Integer updateTalkCode(String talk_from,String talk_to);
    Map selectFromUserinfo(String pk_user);
    List<Map> loadGroupTalk(String talk_to);
    Integer selectTalkcode(Integer pk_user);
    List<Map> loadTalkno(Integer pk_user);
}
