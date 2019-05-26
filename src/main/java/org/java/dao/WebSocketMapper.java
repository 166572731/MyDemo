package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface WebSocketMapper {
    List<Map> loadgroup(@Param("fk_user") Integer fk_user);
    List<Map> loadfriend();
    List<Map> loadGroupUser(@Param("list") List list);
}
