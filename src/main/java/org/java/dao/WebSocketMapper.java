package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface WebSocketMapper {
    List<Map> loadgroup(@Param("fk_user") Integer fk_user);
    List<Map> loadfriend();
    List<Map> loadGroupUser(@Param("fk_group") Integer fk_group);
    Integer addtalk(Map map);
    List<Map> loadTalk(@Param("talk_from") String talk_from,@Param("talk_to")String talk_to);
    Integer updateTalkCode(@Param("talk_from") String talk_from,@Param("talk_to")String talk_to);
    Map selectFromUserinfo(@Param("pk_user") String pk_user);
    List<Map> loadGroupTalk(@Param("talk_to") String talk_to);
}
